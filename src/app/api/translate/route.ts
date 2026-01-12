// 다국어 번역 API 라우트 - AI 기반 실시간 번역
import { NextRequest, NextResponse } from "next/server";
import OpenAI from "openai";

// OpenAI 클라이언트 생성
const openai = new OpenAI({
    apiKey: process.env.OPENAI_API_KEY,
});

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

        // 영어인 경우 번역 불필요
        if (targetLocale === "en") {
            const result: TranslateResponse = { translatedText: text };

            // 로마자 발음 추가 요청 시
            if (type === "romanization" && koreanText) {
                result.romanization = await getRomanization(koreanText);
            }

            return NextResponse.json(result);
        }

        // 한국어인 경우 번역 불필요 (원문 반환)
        if (targetLocale === "ko") {
            return NextResponse.json({ translatedText: text });
        }

        // AI 번역 실행
        const translatedText = await translateWithAI(text, targetLocale, type);
        const result: TranslateResponse = { translatedText };

        // 로마자 발음 추가
        if (koreanText) {
            result.romanization = await getRomanization(koreanText);
        }

        return NextResponse.json(result);
    } catch (error) {
        console.error("Translation API error:", error);
        return NextResponse.json(
            { translatedText: "", error: "Translation failed" },
            { status: 500 }
        );
    }
}

// AI 기반 번역 함수
async function translateWithAI(
    text: string,
    targetLocale: Locale,
    type: "hint" | "grammar" | "romanization"
): Promise<string> {
    const targetLanguage = LOCALE_NAMES[targetLocale];

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

        return completion.choices[0].message.content?.trim() || text;
    } catch (error) {
        console.error("OpenAI translation error:", error);
        return text; // 실패 시 원문 반환
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
