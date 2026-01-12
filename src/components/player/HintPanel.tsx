"use client";

import { useState, useEffect } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { Lightbulb, BookOpen, Volume2, Loader2, Globe } from "lucide-react";
import { useTranslation } from "@/hooks/useTranslation";

interface HintPanelProps {
    isVisible: boolean;
    hintEn: string; // 영어 힌트 (원본)
    koreanSentence: string; // 한글 문장 (발음 가이드용)
    grammarExplanation?: string; // 영어 문법 설명 (원본)
    baseForm?: string; // 기본형
    locale: string; // 현재 언어
    onClose: () => void;
}

// 다국어 힌트 패널 컴포넌트
export function HintPanel({
    isVisible,
    hintEn,
    koreanSentence,
    grammarExplanation,
    baseForm,
    locale,
    onClose,
}: HintPanelProps) {
    // 번역 상태
    const [translatedHint, setTranslatedHint] = useState(hintEn);
    const [translatedGrammar, setTranslatedGrammar] = useState(grammarExplanation || "");
    const [romanization, setRomanization] = useState("");
    const [isTranslating, setIsTranslating] = useState(false);

    const { translate } = useTranslation();

    // 패널이 열릴 때 번역 수행
    useEffect(() => {
        if (!isVisible) return;

        const performTranslation = async () => {
            setIsTranslating(true);

            try {
                // 힌트 번역
                const hintResult = await translate(hintEn, locale, "hint", koreanSentence);
                setTranslatedHint(hintResult.translatedText);
                if (hintResult.romanization) {
                    setRomanization(hintResult.romanization);
                }

                // 문법 설명 번역
                if (grammarExplanation) {
                    const grammarResult = await translate(grammarExplanation, locale, "grammar");
                    setTranslatedGrammar(grammarResult.translatedText);
                }
            } catch (error) {
                console.error("Translation error:", error);
                // 실패 시 원본 유지
                setTranslatedHint(hintEn);
                setTranslatedGrammar(grammarExplanation || "");
            } finally {
                setIsTranslating(false);
            }
        };

        performTranslation();
    }, [isVisible, hintEn, grammarExplanation, koreanSentence, locale, translate]);

    // 언어 라벨 (UI 표시용)
    const getLanguageLabel = () => {
        const labels: Record<string, string> = {
            en: "English",
            ko: "한국어",
            ja: "日本語",
            zh: "中文",
            th: "ไทย",
            vi: "Tiếng Việt",
            fr: "Français",
            de: "Deutsch",
            it: "Italiano",
        };
        return labels[locale] || "English";
    };

    return (
        <AnimatePresence>
            {isVisible && (
                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    exit={{ opacity: 0, y: 20 }}
                    transition={{ duration: 0.3 }}
                    className="mt-4 rounded-xl overflow-hidden border border-amber-500/30 bg-amber-500/5"
                >
                    {/* 언어 표시 헤더 */}
                    <div className="px-4 py-2 bg-amber-500/10 border-b border-amber-500/20 flex items-center justify-between">
                        <div className="flex items-center gap-2">
                            <Globe className="w-4 h-4 text-amber-400" />
                            <span className="text-xs font-medium text-amber-400">
                                {getLanguageLabel()}
                            </span>
                        </div>
                        {isTranslating && (
                            <div className="flex items-center gap-1 text-amber-400">
                                <Loader2 className="w-3 h-3 animate-spin" />
                                <span className="text-xs">번역 중...</span>
                            </div>
                        )}
                    </div>

                    {/* 번역된 힌트 */}
                    <div className="p-4 border-b border-amber-500/20">
                        <div className="flex items-center gap-2 mb-2">
                            <Lightbulb className="w-4 h-4 text-amber-400" />
                            <span className="text-xs font-medium text-amber-400 uppercase tracking-wider">
                                Translation
                            </span>
                        </div>
                        <p className="text-white text-lg">
                            {isTranslating ? (
                                <span className="text-zinc-400 animate-pulse">{hintEn}</span>
                            ) : (
                                translatedHint
                            )}
                        </p>
                    </div>

                    {/* 로마자 발음 가이드 */}
                    {romanization && (
                        <div className="p-4 border-b border-amber-500/20 bg-violet-500/5">
                            <div className="flex items-center gap-2 mb-2">
                                <Volume2 className="w-4 h-4 text-violet-400" />
                                <span className="text-xs font-medium text-violet-400 uppercase tracking-wider">
                                    Pronunciation
                                </span>
                            </div>
                            <p className="text-violet-300 text-base font-medium italic">
                                {romanization}
                            </p>
                        </div>
                    )}

                    {/* 번역된 문법 설명 */}
                    {grammarExplanation && (
                        <div className="p-4 border-b border-amber-500/20">
                            <div className="flex items-center gap-2 mb-2">
                                <BookOpen className="w-4 h-4 text-amber-400" />
                                <span className="text-xs font-medium text-amber-400 uppercase tracking-wider">
                                    Grammar
                                </span>
                            </div>
                            <p className="text-zinc-300 text-sm">
                                {isTranslating ? (
                                    <span className="animate-pulse">{grammarExplanation}</span>
                                ) : (
                                    translatedGrammar
                                )}
                            </p>
                        </div>
                    )}

                    {/* 기본형 */}
                    {baseForm && (
                        <div className="p-4 border-b border-amber-500/20">
                            <div className="flex items-center gap-2 mb-2">
                                <Volume2 className="w-4 h-4 text-amber-400" />
                                <span className="text-xs font-medium text-amber-400 uppercase tracking-wider">
                                    Base Form
                                </span>
                            </div>
                            <p className="text-zinc-300 text-sm">
                                <span className="text-white font-medium">{baseForm}</span>
                            </p>
                        </div>
                    )}

                    {/* 닫기 버튼 */}
                    <button
                        onClick={onClose}
                        className="w-full py-2 text-center text-amber-400 text-sm hover:bg-amber-500/10 transition-colors"
                    >
                        Hide Hint
                    </button>
                </motion.div>
            )}
        </AnimatePresence>
    );
}
