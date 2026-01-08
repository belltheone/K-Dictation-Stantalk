"use client";

import { motion, AnimatePresence } from "framer-motion";
import { Lightbulb, BookOpen, Volume2 } from "lucide-react";

interface HintPanelProps {
    isVisible: boolean;
    hintEn: string;
    grammarExplanation?: string;
    baseForm?: string;
    onClose: () => void;
}

// 힌트 패널 컴포넌트
export function HintPanel({
    isVisible,
    hintEn,
    grammarExplanation,
    baseForm,
    onClose,
}: HintPanelProps) {
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
                    {/* 영어 번역 */}
                    <div className="p-4 border-b border-amber-500/20">
                        <div className="flex items-center gap-2 mb-2">
                            <Lightbulb className="w-4 h-4 text-amber-400" />
                            <span className="text-xs font-medium text-amber-400 uppercase tracking-wider">
                                Translation
                            </span>
                        </div>
                        <p className="text-white text-lg">{hintEn}</p>
                    </div>

                    {/* 문법 설명 */}
                    {grammarExplanation && (
                        <div className="p-4 border-b border-amber-500/20">
                            <div className="flex items-center gap-2 mb-2">
                                <BookOpen className="w-4 h-4 text-amber-400" />
                                <span className="text-xs font-medium text-amber-400 uppercase tracking-wider">
                                    Grammar
                                </span>
                            </div>
                            <p className="text-zinc-300 text-sm">{grammarExplanation}</p>
                        </div>
                    )}

                    {/* 기본형 */}
                    {baseForm && (
                        <div className="p-4">
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
