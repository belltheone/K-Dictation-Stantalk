"use client";

import { motion, AnimatePresence } from "framer-motion";
import { X, UserPlus, Sparkles } from "lucide-react";
import { Link } from "@/i18n/navigation";

interface SignupPromptModalProps {
    isOpen: boolean;
    onClose: () => void;
    solvedCount: number; // 비회원이 푼 문제 수
    maxProblems: number; // 최대 문제 수
}

// 비회원 회원가입 유도 모달
export function SignupPromptModal({
    isOpen,
    onClose,
    solvedCount,
    maxProblems,
}: SignupPromptModalProps) {
    return (
        <AnimatePresence>
            {isOpen && (
                <motion.div
                    initial={{ opacity: 0 }}
                    animate={{ opacity: 1 }}
                    exit={{ opacity: 0 }}
                    className="fixed inset-0 z-[9999] bg-black/80 backdrop-blur-sm flex items-center justify-center p-4"
                    onClick={onClose}
                >
                    <motion.div
                        initial={{ scale: 0.9, opacity: 0 }}
                        animate={{ scale: 1, opacity: 1 }}
                        exit={{ scale: 0.9, opacity: 0 }}
                        className="bg-zinc-900 rounded-2xl p-6 max-w-md w-full border border-zinc-800 shadow-2xl"
                        onClick={(e) => e.stopPropagation()}
                    >
                        {/* 닫기 버튼 */}
                        <button
                            onClick={onClose}
                            className="absolute top-4 right-4 p-2 rounded-full hover:bg-zinc-800 transition-colors"
                        >
                            <X className="w-5 h-5 text-zinc-400" />
                        </button>

                        {/* 아이콘 */}
                        <div className="flex justify-center mb-6">
                            <div className="w-20 h-20 rounded-full bg-gradient-to-br from-rose-500 to-violet-600 flex items-center justify-center">
                                <Sparkles className="w-10 h-10 text-white" />
                            </div>
                        </div>

                        {/* 타이틀 */}
                        <h2 className="text-2xl font-bold text-center text-white mb-2">
                            체험판 끝! 🎉
                        </h2>

                        {/* 설명 */}
                        <p className="text-zinc-400 text-center mb-6">
                            지금까지 <span className="text-rose-400 font-semibold">{solvedCount}개</span>의
                            문제를 풀었어요!<br />
                            무료 회원가입하면 <span className="text-rose-400 font-semibold">무제한</span>으로
                            학습할 수 있어요.
                        </p>

                        {/* 혜택 목록 */}
                        <div className="bg-zinc-800/50 rounded-xl p-4 mb-6 space-y-2">
                            <div className="flex items-center gap-2 text-sm text-zinc-300">
                                <span className="text-green-400">✓</span>
                                모든 난이도 문제 무제한
                            </div>
                            <div className="flex items-center gap-2 text-sm text-zinc-300">
                                <span className="text-green-400">✓</span>
                                학습 진도 저장
                            </div>
                            <div className="flex items-center gap-2 text-sm text-zinc-300">
                                <span className="text-green-400">✓</span>
                                XP & 레벨업 시스템
                            </div>
                            <div className="flex items-center gap-2 text-sm text-zinc-300">
                                <span className="text-green-400">✓</span>
                                단어장 기능
                            </div>
                        </div>

                        {/* 회원가입 버튼 */}
                        <Link
                            href="/auth/login"
                            className="w-full flex items-center justify-center gap-2 py-3 rounded-xl bg-gradient-to-r from-rose-500 to-violet-600 text-white font-semibold hover:opacity-90 transition-opacity"
                        >
                            <UserPlus className="w-5 h-5" />
                            무료 회원가입
                        </Link>

                        {/* 나중에 하기 */}
                        <button
                            onClick={onClose}
                            className="w-full mt-3 py-2 text-zinc-500 text-sm hover:text-zinc-400 transition-colors"
                        >
                            나중에 할게요
                        </button>
                    </motion.div>
                </motion.div>
            )}
        </AnimatePresence>
    );
}
