"use client";

import { motion, AnimatePresence } from "framer-motion";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import { UserPlus, AlertTriangle } from "lucide-react";

interface SignupPromptProps {
    isOpen: boolean;
    onClose: () => void;
    completedCount: number;
}

// 회원가입 유도 모달 (게스트 모드)
export function SignupPromptModal({ isOpen, onClose, completedCount }: SignupPromptProps) {
    const t = useTranslations();

    return (
        <AnimatePresence>
            {isOpen && (
                <>
                    <motion.div
                        initial={{ opacity: 0 }}
                        animate={{ opacity: 1 }}
                        exit={{ opacity: 0 }}
                        className="fixed inset-0 bg-black/80 backdrop-blur-sm z-50"
                        onClick={onClose}
                    />
                    <motion.div
                        initial={{ opacity: 0, scale: 0.95, y: 20 }}
                        animate={{ opacity: 1, scale: 1, y: 0 }}
                        exit={{ opacity: 0, scale: 0.95, y: 20 }}
                        className="fixed inset-0 z-50 flex items-center justify-center p-4"
                    >
                        <div className="w-full max-w-md bg-zinc-900 rounded-2xl border border-zinc-800 p-6 text-center">
                            {/* 아이콘 */}
                            <div className="w-16 h-16 mx-auto mb-4 rounded-full bg-rose-500/10 flex items-center justify-center">
                                <UserPlus className="w-8 h-8 text-rose-400" />
                            </div>

                            {/* 타이틀 */}
                            <h2 className="text-xl font-bold text-white mb-2">
                                Great Progress! 🎉
                            </h2>
                            <p className="text-zinc-400 mb-2">
                                You've completed <span className="text-rose-400 font-bold">{completedCount}</span> challenges!
                            </p>

                            {/* 경고 메시지 */}
                            <div className="flex items-start gap-2 p-3 rounded-lg bg-amber-500/10 border border-amber-500/30 text-left mb-6">
                                <AlertTriangle className="w-5 h-5 text-amber-400 flex-shrink-0 mt-0.5" />
                                <p className="text-sm text-amber-200">
                                    Your progress is saved locally. Creating an account will save it permanently and let you access it from any device!
                                </p>
                            </div>

                            {/* 버튼 */}
                            <div className="space-y-3">
                                <Link
                                    href="/"
                                    className="block w-full py-3 btn-primary font-medium"
                                    onClick={onClose}
                                >
                                    Create Free Account
                                </Link>
                                <button
                                    onClick={onClose}
                                    className="w-full py-3 text-zinc-400 hover:text-white transition-colors text-sm"
                                >
                                    Continue as Guest
                                </button>
                            </div>
                        </div>
                    </motion.div>
                </>
            )}
        </AnimatePresence>
    );
}
