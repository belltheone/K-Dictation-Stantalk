"use client";

import { useState } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { X } from "lucide-react";
import { SocialLoginButtons } from "./SocialLoginButtons";
import { useTranslations } from "next-intl";

interface LoginModalProps {
    isOpen: boolean;
    onClose: () => void;
}

// 로그인 모달 컴포넌트
export function LoginModal({ isOpen, onClose }: LoginModalProps) {
    const t = useTranslations();

    return (
        <AnimatePresence>
            {isOpen && (
                <>
                    {/* 배경 오버레이 */}
                    <motion.div
                        initial={{ opacity: 0 }}
                        animate={{ opacity: 1 }}
                        exit={{ opacity: 0 }}
                        onClick={onClose}
                        className="fixed inset-0 bg-black/70 z-50"
                    />

                    {/* 모달 */}
                    <motion.div
                        initial={{ opacity: 0, scale: 0.95, y: 20 }}
                        animate={{ opacity: 1, scale: 1, y: 0 }}
                        exit={{ opacity: 0, scale: 0.95, y: 20 }}
                        className="fixed inset-0 z-50 flex items-center justify-center p-4"
                    >
                        <div className="card p-6 md:p-8 w-full max-w-md relative">
                            {/* 닫기 버튼 */}
                            <button
                                onClick={onClose}
                                className="absolute top-4 right-4 p-2 rounded-full hover:bg-white/10 transition-colors"
                            >
                                <X className="w-5 h-5 text-gray-400" />
                            </button>

                            {/* 헤더 */}
                            <div className="text-center mb-6">
                                <h2 className="text-2xl font-bold text-white mb-2">
                                    Join the Fandom 🎤
                                </h2>
                                <p className="text-gray-400 text-sm">
                                    Sign in to save your progress and compete with fans worldwide!
                                </p>
                            </div>

                            {/* 소셜 로그인 버튼 */}
                            <SocialLoginButtons onClose={onClose} />

                            {/* 게스트 옵션 */}
                            <div className="mt-6 text-center">
                                <button
                                    onClick={onClose}
                                    className="text-gray-400 text-sm hover:text-white transition-colors"
                                >
                                    Continue as Guest →
                                </button>
                                <p className="text-gray-500 text-xs mt-2">
                                    Guest progress will be lost when you clear browser data
                                </p>
                            </div>

                            {/* 약관 */}
                            <p className="text-gray-500 text-xs text-center mt-6">
                                By signing in, you agree to our Terms of Service and Privacy Policy
                            </p>
                        </div>
                    </motion.div>
                </>
            )}
        </AnimatePresence>
    );
}
