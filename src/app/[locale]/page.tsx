"use client";

import { useState } from "react";
import { motion } from "framer-motion";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import { Play, Flame, Trophy, Star, LogOut, User } from "lucide-react";
import { LanguageSwitcher } from "@/components/ui/LanguageSwitcher";
import { LoginModal } from "@/components/auth/LoginModal";
import { useAuth } from "@/hooks/useAuth";
import { signOut } from "@/lib/actions/auth";

// 랜딩 페이지 - 마케팅용, 모바일 퍼스트 디자인
export default function LandingPage() {
    const t = useTranslations();
    const [isLoginOpen, setIsLoginOpen] = useState(false);
    const { user, isLoading } = useAuth();

    const handleSignOut = async () => {
        await signOut();
    };

    return (
        <main className="min-h-screen relative overflow-hidden">
            {/* 배경 그라데이션 효과 */}
            <div className="absolute inset-0 bg-gradient-to-br from-[#020617] via-[#0f172a] to-[#1e1b4b] -z-10" />

            {/* 네온 오브 효과 - 모바일에서는 작게 */}
            <div className="absolute top-1/4 left-1/4 w-48 md:w-96 h-48 md:h-96 bg-[#FF007F] rounded-full blur-[100px] md:blur-[150px] opacity-20 -z-10" />
            <div className="absolute bottom-1/4 right-1/4 w-48 md:w-96 h-48 md:h-96 bg-[#7C3AED] rounded-full blur-[100px] md:blur-[150px] opacity-20 -z-10" />

            {/* 헤더 - 모바일 최적화 */}
            <header className="fixed top-0 left-0 right-0 z-50 glass">
                <div className="max-w-7xl mx-auto px-4 md:px-6 py-3 md:py-4 flex items-center justify-between">
                    <motion.div
                        initial={{ opacity: 0, x: -20 }}
                        animate={{ opacity: 1, x: 0 }}
                        className="flex items-center gap-1 md:gap-2"
                    >
                        <span className="text-lg md:text-2xl font-bold bg-gradient-to-r from-[#FF007F] to-[#7C3AED] bg-clip-text text-transparent">
                            K-Dictation
                        </span>
                        <span className="text-xs md:text-sm text-gray-400 hidden sm:inline">: Stantalk</span>
                    </motion.div>

                    <div className="flex items-center gap-2 md:gap-4">
                        <LanguageSwitcher />
                        <motion.div
                            initial={{ opacity: 0, x: 20 }}
                            animate={{ opacity: 1, x: 0 }}
                        >
                            {isLoading ? (
                                <div className="w-20 h-8 bg-white/10 rounded-full animate-pulse" />
                            ) : user ? (
                                <div className="flex items-center gap-2">
                                    <Link
                                        href="/learn"
                                        className="btn-primary px-3 md:px-4 py-1.5 md:py-2 text-white font-semibold text-xs md:text-sm inline-flex items-center gap-1"
                                    >
                                        <Play className="w-3 h-3" />
                                        <span className="hidden sm:inline">Start</span>
                                    </Link>
                                    <button
                                        onClick={handleSignOut}
                                        className="p-2 rounded-full bg-white/10 hover:bg-white/20 text-gray-400 hover:text-white transition-colors"
                                        title="Sign Out"
                                    >
                                        <LogOut className="w-4 h-4" />
                                    </button>
                                </div>
                            ) : (
                                <button
                                    onClick={() => setIsLoginOpen(true)}
                                    className="btn-primary px-3 md:px-6 py-1.5 md:py-2 text-white font-semibold text-xs md:text-sm"
                                >
                                    {t("landing.joinButton")}
                                </button>
                            )}
                        </motion.div>
                    </div>
                </div>
            </header>

            {/* 히어로 섹션 - 모바일 퍼스트 */}
            <section className="pt-24 md:pt-32 pb-12 md:pb-20 px-4 md:px-6">
                <div className="max-w-4xl mx-auto text-center">
                    <motion.div
                        initial={{ opacity: 0, y: 30 }}
                        animate={{ opacity: 1, y: 0 }}
                        transition={{ delay: 0.2 }}
                    >
                        <h1 className="text-3xl sm:text-4xl md:text-5xl lg:text-7xl font-extrabold mb-4 md:mb-6 leading-tight">
                            <span className="text-white">{t("landing.title1")} </span>
                            <span className="bg-gradient-to-r from-[#FF007F] to-[#7C3AED] bg-clip-text text-transparent">
                                {t("landing.title2")}
                            </span>
                            <br className="hidden sm:block" />
                            <span className="text-white"> {t("landing.title3")}</span>
                        </h1>
                    </motion.div>

                    <motion.p
                        initial={{ opacity: 0, y: 30 }}
                        animate={{ opacity: 1, y: 0 }}
                        transition={{ delay: 0.4 }}
                        className="text-base md:text-xl text-gray-400 mb-8 md:mb-10 max-w-2xl mx-auto px-4"
                    >
                        {t("landing.subtitle")}
                        <br className="hidden md:block" />
                        {t("landing.description")}
                    </motion.p>

                    <motion.div
                        initial={{ opacity: 0, y: 30 }}
                        animate={{ opacity: 1, y: 0 }}
                        transition={{ delay: 0.6 }}
                        className="flex flex-col sm:flex-row gap-3 md:gap-4 justify-center px-4"
                    >
                        <Link
                            href="/learn"
                            className="btn-primary px-6 md:px-8 py-3 md:py-4 text-white font-bold text-base md:text-lg inline-flex items-center justify-center gap-2"
                        >
                            <Play className="w-4 h-4 md:w-5 md:h-5" />
                            {t("landing.startButton")}
                        </Link>
                        <button className="px-6 md:px-8 py-3 md:py-4 border-2 border-[#7C3AED] text-[#7C3AED] font-bold text-base md:text-lg rounded-full hover:bg-[#7C3AED]/10 transition-colors">
                            {t("landing.demoButton")}
                        </button>
                    </motion.div>
                </div>
            </section>

            {/* 특징 섹션 - 모바일에서 세로 배치 */}
            <section className="py-12 md:py-20 px-4 md:px-6">
                <div className="max-w-6xl mx-auto">
                    <motion.h2
                        initial={{ opacity: 0 }}
                        whileInView={{ opacity: 1 }}
                        viewport={{ once: true }}
                        className="text-2xl md:text-3xl lg:text-4xl font-bold text-center mb-8 md:mb-16 text-white"
                    >
                        {t("landing.features.title").split("K-Dictation")[0]}
                        <span className="text-[#FF007F]">K-Dictation</span>
                        {t("landing.features.title").split("K-Dictation")[1]}
                    </motion.h2>

                    <div className="grid md:grid-cols-3 gap-4 md:gap-8">
                        {/* 특징 카드 1 */}
                        <motion.div
                            initial={{ opacity: 0, y: 30 }}
                            whileInView={{ opacity: 1, y: 0 }}
                            viewport={{ once: true }}
                            transition={{ delay: 0.1 }}
                            className="card p-6 md:p-8 text-center hover:border-[#FF007F]/50 transition-colors"
                        >
                            <div className="w-12 h-12 md:w-16 md:h-16 mx-auto mb-4 md:mb-6 rounded-full bg-gradient-to-r from-[#FF007F] to-[#7C3AED] flex items-center justify-center">
                                <Star className="w-6 h-6 md:w-8 md:h-8 text-white" />
                            </div>
                            <h3 className="text-lg md:text-xl font-bold text-white mb-2 md:mb-4">
                                {t("landing.features.realContent.title")}
                            </h3>
                            <p className="text-sm md:text-base text-gray-400">
                                {t("landing.features.realContent.description")}
                            </p>
                        </motion.div>

                        {/* 특징 카드 2 */}
                        <motion.div
                            initial={{ opacity: 0, y: 30 }}
                            whileInView={{ opacity: 1, y: 0 }}
                            viewport={{ once: true }}
                            transition={{ delay: 0.2 }}
                            className="card p-6 md:p-8 text-center hover:border-[#7C3AED]/50 transition-colors"
                        >
                            <div className="w-12 h-12 md:w-16 md:h-16 mx-auto mb-4 md:mb-6 rounded-full bg-gradient-to-r from-[#7C3AED] to-[#00F0FF] flex items-center justify-center">
                                <Trophy className="w-6 h-6 md:w-8 md:h-8 text-white" />
                            </div>
                            <h3 className="text-lg md:text-xl font-bold text-white mb-2 md:mb-4">
                                {t("landing.features.gamification.title")}
                            </h3>
                            <p className="text-sm md:text-base text-gray-400">
                                {t("landing.features.gamification.description")}
                            </p>
                        </motion.div>

                        {/* 특징 카드 3 */}
                        <motion.div
                            initial={{ opacity: 0, y: 30 }}
                            whileInView={{ opacity: 1, y: 0 }}
                            viewport={{ once: true }}
                            transition={{ delay: 0.3 }}
                            className="card p-6 md:p-8 text-center hover:border-[#00F0FF]/50 transition-colors"
                        >
                            <div className="w-12 h-12 md:w-16 md:h-16 mx-auto mb-4 md:mb-6 rounded-full bg-gradient-to-r from-[#00F0FF] to-[#22C55E] flex items-center justify-center">
                                <Flame className="w-6 h-6 md:w-8 md:h-8 text-white" />
                            </div>
                            <h3 className="text-lg md:text-xl font-bold text-white mb-2 md:mb-4">
                                {t("landing.features.instantAccess.title")}
                            </h3>
                            <p className="text-sm md:text-base text-gray-400">
                                {t("landing.features.instantAccess.description")}
                            </p>
                        </motion.div>
                    </div>
                </div>
            </section>

            {/* CTA 섹션 */}
            <section className="py-12 md:py-20 px-4 md:px-6">
                <motion.div
                    initial={{ opacity: 0, scale: 0.95 }}
                    whileInView={{ opacity: 1, scale: 1 }}
                    viewport={{ once: true }}
                    className="max-w-4xl mx-auto card p-8 md:p-12 text-center relative overflow-hidden"
                >
                    <div className="absolute inset-0 bg-gradient-to-r from-[#FF007F]/20 to-[#7C3AED]/20 -z-10" />
                    <h2 className="text-2xl md:text-3xl lg:text-4xl font-bold text-white mb-4 md:mb-6">
                        {t("landing.cta.title")}
                    </h2>
                    <p className="text-base md:text-xl text-gray-400 mb-6 md:mb-8">
                        {t("landing.cta.description")}
                    </p>
                    <Link
                        href="/learn"
                        className="btn-primary px-8 md:px-10 py-3 md:py-4 text-white font-bold text-lg md:text-xl inline-flex items-center gap-2"
                    >
                        <Play className="w-5 h-5 md:w-6 md:h-6" />
                        {t("landing.cta.button")}
                    </Link>
                </motion.div>
            </section>

            {/* 로그인 모달 */}
            <LoginModal isOpen={isLoginOpen} onClose={() => setIsLoginOpen(false)} />

            {/* 푸터 */}
            <footer className="py-6 md:py-8 px-4 md:px-6 border-t border-white/10">
                <div className="max-w-6xl mx-auto text-center text-gray-500 text-xs md:text-sm">
                    <p>{t("landing.footer.copyright")}</p>
                    <p className="mt-2">{t("landing.footer.madeWith")}</p>
                </div>
            </footer>
        </main>
    );
}
