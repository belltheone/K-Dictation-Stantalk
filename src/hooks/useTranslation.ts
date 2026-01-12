// 번역 서비스 훅 - 다국어 힌트 및 문법 설명 번역
"use client";

import { useState, useCallback } from "react";
import {
    getCachedTranslation,
    setCachedTranslation,
} from "@/lib/utils/translationCache";

// 번역 결과 타입
interface TranslationResult {
    translatedText: string;
    romanization?: string;
}

// 번역 상태 타입
interface UseTranslationReturn {
    translate: (
        text: string,
        locale: string,
        type: "hint" | "grammar",
        koreanText?: string
    ) => Promise<TranslationResult>;
    isLoading: boolean;
    error: string | null;
}

// 번역 서비스 훅
export function useTranslation(): UseTranslationReturn {
    const [isLoading, setIsLoading] = useState(false);
    const [error, setError] = useState<string | null>(null);

    const translate = useCallback(
        async (
            text: string,
            locale: string,
            type: "hint" | "grammar",
            koreanText?: string
        ): Promise<TranslationResult> => {
            // 빈 텍스트 처리
            if (!text.trim()) {
                return { translatedText: "" };
            }

            // 영어인 경우 번역 불필요 (로마자만 필요)
            if (locale === "en") {
                if (koreanText) {
                    // 로마자만 가져오기
                    const cached = getCachedTranslation(koreanText, locale, "romanization");
                    if (cached) {
                        return { translatedText: text, romanization: cached.romanization };
                    }

                    try {
                        setIsLoading(true);
                        const response = await fetch("/api/translate", {
                            method: "POST",
                            headers: { "Content-Type": "application/json" },
                            body: JSON.stringify({
                                text,
                                targetLocale: locale,
                                type: "romanization",
                                koreanText,
                            }),
                        });

                        const data = await response.json();

                        if (data.romanization) {
                            setCachedTranslation(koreanText, locale, "romanization", text, data.romanization);
                        }

                        return { translatedText: text, romanization: data.romanization };
                    } catch (err) {
                        console.error("Romanization error:", err);
                        return { translatedText: text };
                    } finally {
                        setIsLoading(false);
                    }
                }
                return { translatedText: text };
            }

            // 한국어인 경우 원문 반환
            if (locale === "ko") {
                return { translatedText: text };
            }

            // 캐시 확인
            const cached = getCachedTranslation(text, locale, type);
            if (cached) {
                return {
                    translatedText: cached.translatedText,
                    romanization: cached.romanization,
                };
            }

            // API 호출
            try {
                setIsLoading(true);
                setError(null);

                const response = await fetch("/api/translate", {
                    method: "POST",
                    headers: { "Content-Type": "application/json" },
                    body: JSON.stringify({
                        text,
                        targetLocale: locale,
                        type,
                        koreanText,
                    }),
                });

                if (!response.ok) {
                    throw new Error("Translation failed");
                }

                const data = await response.json();

                // 캐시에 저장
                setCachedTranslation(
                    text,
                    locale,
                    type,
                    data.translatedText,
                    data.romanization
                );

                return {
                    translatedText: data.translatedText,
                    romanization: data.romanization,
                };
            } catch (err) {
                const errorMessage = err instanceof Error ? err.message : "Translation error";
                setError(errorMessage);
                console.error("Translation error:", err);
                // 실패 시 원문 반환
                return { translatedText: text };
            } finally {
                setIsLoading(false);
            }
        },
        []
    );

    return { translate, isLoading, error };
}
