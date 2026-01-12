// 다국어 번역 API 라우트 - AI 기반 실시간 번역 + DB 캐싱
import { NextRequest, NextResponse } from "next/server";
import OpenAI from "openai";
import { createClient } from "@supabase/supabase-js";

// OpenAI 클라이언트 생성
const openai = new OpenAI({
    apiKey: process.env.OPENAI_API_KEY,
});

// Supabase 클라이언트 생성 (서버 측 - service role key 사용)
const supabase = createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

// 지원하는 언어 목록
const SUPPORTED_LOCALES = ["en", "ko", "ja", "zh", "th", "vi", "fr", "de", "it"] as const;
type Locale = (typeof SUPPORTED_LOCALES)[number];

// 언어 코드를 언어 이름으로 변환
const LOCALE_NAMES: Record<Locale, string> = {
    en: "English",
    ko: "Korean",
    ja: "Japanese",
    zh: "Chinese (Simplified)",
    th: "Thai",
    vi: "Vietnamese",
    fr: "French",
    de: "German",
    it: "Italian",
};

// 번역 요청 타입
interface TranslateRequest {
    text: string;
    targetLocale: Locale;
    type: "hint" | "grammar" | "romanization";
    koreanText?: string; // romanization용 한글 원문
}

// 번역 응답 타입
interface TranslateResponse {
    translatedText: string;
    romanization?: string;
    error?: string;
}

// POST /api/translate
export async function POST(request: NextRequest): Promise<NextResponse<TranslateResponse>> {
    try {
        const body: TranslateRequest = await request.json();
        const { text, targetLocale, koreanText } = body;
        // type이 없으면 기본값 'hint' 사용
        const type = body.type || "hint";

        // 유효성 검사 (text와 targetLocale만 필수)
        if (!text || !targetLocale) {
            return NextResponse.json(
                { translatedText: "", error: `Missing required fields: ${!text ? 'text ' : ''}${!targetLocale ? 'targetLocale' : ''}` },
                { status: 400 }
            );
        }

        // 지원하지 않는 언어
        if (!SUPPORTED_LOCALES.includes(targetLocale)) {
            return NextResponse.json(
                { translatedText: text, error: "Unsupported locale" },
                { status: 400 }
            );
        }

        // 영어인 경우 번역 불필요 (로마자만 처리)
        if (targetLocale === "en") {
            const result: TranslateResponse = { translatedText: text };

            // 로마자 발음 추가 요청 시
            if (type === "romanization" && koreanText) {
                result.romanization = await getCachedRomanization(koreanText);
            }

            return NextResponse.json(result);
        }

        // 한국어인 경우 번역 불필요 (원문 반환)
        if (targetLocale === "ko") {
            return NextResponse.json({ translatedText: text });
        }

        // 1. DB 캐시에서 번역 결과 조회
        const { data: cached } = await supabase
            .from("translation_cache")
            .select("translated_text, romanization")
            .eq("source_text", text)
            .eq("target_locale", targetLocale)
            .eq("translation_type", type)
            .single();

        // 캐시 히트 - DB에서 결과 반환
        if (cached) {
            const result: TranslateResponse = { translatedText: cached.translated_text };
            if (cached.romanization) {
                result.romanization = cached.romanization;
            }
            return NextResponse.json(result);
        }

        // 2. 캐시 미스 - AI 번역 실행
        const translatedText = await translateWithAI(text, targetLocale, type);

        // 로마자 발음 생성
        let romanization: string | undefined;
        if (koreanText) {
            romanization = await getRomanization(koreanText);
        }

        // 3. 번역 결과 DB에 저장 (비동기, 실패해도 응답에 영향 없음)
        supabase
            .from("translation_cache")
            .insert({
                source_text: text,
                source_locale: "en", // 원본은 영어 힌트
                target_locale: targetLocale,
                translation_type: type,
                translated_text: translatedText,
                romanization: romanization || null,
            })
            .then(({ error }) => {
                if (error) {
                    console.error("Failed to cache translation:", error);
                }
            });

        const result: TranslateResponse = { translatedText };
        if (romanization) {
            result.romanization = romanization;
        }

        return NextResponse.json(result);
    } catch (error) {
        console.error("Translation API error:", error);
        const errorMessage = error instanceof Error ? error.message : "Unknown error";
        return NextResponse.json(
            { translatedText: "", error: `Translation failed: ${errorMessage}` },
            { status: 500 }
        );
    }
}

// 로마자 발음 캐시 조회 함수
async function getCachedRomanization(koreanText: string): Promise<string> {
    // DB에서 로마자 캐시 조회
    const { data: cached } = await supabase
        .from("translation_cache")
        .select("translated_text")
        .eq("source_text", koreanText)
        .eq("target_locale", "en")
        .eq("translation_type", "romanization")
        .single();

    if (cached) {
        return cached.translated_text;
    }

    // 캐시 미스 - AI로 생성
    const romanization = await getRomanization(koreanText);

    // DB에 저장
    supabase
        .from("translation_cache")
        .insert({
            source_text: koreanText,
            source_locale: "ko",
            target_locale: "en",
            translation_type: "romanization",
            translated_text: romanization,
        })
        .then(({ error }) => {
            if (error) {
                console.error("Failed to cache romanization:", error);
            }
        });

    return romanization;
}

// AI 기반 번역 함수
async function translateWithAI(
    text: string,
    targetLocale: Locale,
    type: "hint" | "grammar" | "romanization"
): Promise<string> {
    const targetLanguage = LOCALE_NAMES[targetLocale];

    // API 키 확인
    if (!process.env.OPENAI_API_KEY) {
        console.error("OPENAI_API_KEY is not set");
        throw new Error("OpenAI API key not configured");
    }

    // 번역 타입에 따른 프롬프트 조정
    const contextPrompts = {
        hint: `You are translating a hint for Korean language learners. The hint explains the meaning of a Korean sentence. Translate naturally and clearly to ${targetLanguage}.`,
        grammar: `You are translating a grammar explanation for Korean language learners. Keep it concise and educational. Translate to ${targetLanguage}.`,
        romanization: `You are providing romanization (pronunciation guide) for Korean text.`,
    };

    try {
        const completion = await openai.chat.completions.create({
            model: "gpt-4o-mini",
            messages: [
                {
                    role: "system",
                    content: `${contextPrompts[type]} Return ONLY the translation, nothing else.`,
                },
                {
                    role: "user",
                    content: text,
                },
            ],
            temperature: 0.3,
            max_tokens: 300,
        });

        const translatedText = completion.choices[0].message.content?.trim();
        if (!translatedText) {
            throw new Error("Empty response from OpenAI");
        }
        return translatedText;
    } catch (error) {
        console.error("OpenAI translation error:", error);
        throw error; // 상위에서 처리하도록 에러 전파
    }
}

// 한글 로마자 변환 함수 (AI 기반)
async function getRomanization(koreanText: string): Promise<string> {
    try {
        const completion = await openai.chat.completions.create({
            model: "gpt-4o-mini",
            messages: [
                {
                    role: "system",
                    content: `You are a Korean pronunciation expert. Convert Korean text to romanization (pronunciation guide) using the Revised Romanization of Korean system.
                    
Rules:
- Use standard romanization (e.g., 안녕하세요 → Annyeonghaseyo)
- Keep spacing as in original
- Do not add any explanation, just the romanization
- Preserve punctuation`,
                },
                {
                    role: "user",
                    content: koreanText,
                },
            ],
            temperature: 0.1,
            max_tokens: 200,
        });

        return completion.choices[0].message.content?.trim() || "";
    } catch (error) {
        console.error("Romanization error:", error);
        return "";
    }
}
