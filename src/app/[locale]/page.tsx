"use client";

import { useState } from "react";
import { motion } from "framer-motion";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import { Play, Flame, Trophy, Star, LogOut, User, Sparkles } from "lucide-react";
import { LanguageSwitcher } from "@/components/ui/LanguageSwitcher";
import { LoginModal } from "@/components/auth/LoginModal";
import { useAuth } from "@/hooks/useAuth";
import { signOut } from "@/lib/actions/auth";

// 랜딩 페이지 - Premium Modern K-Pop Design
export default function LandingPage() {
    const t = useTranslations();
    const [isLoginOpen, setIsLoginOpen] = useState(false);
    const { user, isLoading } = useAuth();

    const handleSignOut = async () => {
        const result = await signOut();
        if (result.success) {
            window.location.href = "/";
        }
    };

    return (
        <main className="min-h-screen relative overflow-hidden bg-[#09090b]">
            {/* 배경 앰비언트 라이트 (Subtle & Elegant) */}
            <div className="absolute top-[-20%] left-[-10%] w-[50%] h-[50%] bg-rose-600/20 rounded-full blur-[120px] opacity-30 -z-10 animate-float" />
            <div className="absolute bottom-[-20%] right-[-10%] w-[50%] h-[50%] bg-violet-600/20 rounded-full blur-[120px] opacity-30 -z-10 animate-float" style={{ animationDelay: "-3s" }} />

            {/* 그레인 텍스처 오버레이 (Optional for texture) */}
            <div className="absolute inset-0 bg-[url('/noise.png')] opacity-[0.03] pointer-events-none -z-10 mix-blend-overlay" />

            {/* 헤더 */}
            <header className="fixed top-0 left-0 right-0 z-50 transition-all duration-300 border-b border-white/5 bg-[#09090b]/80 backdrop-blur-md">
                <div className="max-w-7xl mx-auto px-4 md:px-6 py-4 flex items-center justify-between">
                    <motion.div
                        initial={{ opacity: 0, x: -20 }}
                        animate={{ opacity: 1, x: 0 }}
                        className="flex items-center gap-2"
                    >
                        <div className="w-8 h-8 rounded-lg bg-gradient-to-br from-rose-500 to-violet-600 flex items-center justify-center text-white font-bold text-lg shadow-lg shadow-rose-500/20">
                            K
                        </div>
                        <div className="flex flex-col">
                            <span className="text-lg font-bold tracking-tight text-white leading-none">
                                K-Dictation
                            </span>
                            <span className="text-[10px] uppercase tracking-widest text-zinc-500 font-medium">Stantalk</span>
                        </div>
                    </motion.div>

                    <div className="flex items-center gap-4">
                        <LanguageSwitcher />
                        <motion.div
                            initial={{ opacity: 0, x: 20 }}
                            animate={{ opacity: 1, x: 0 }}
                        >
                            {isLoading ? (
                                <div className="w-20 h-9 bg-zinc-800 rounded-full animate-pulse" />
                            ) : user ? (
                                <div className="flex items-center gap-3">
                                    <Link
                                        href="/learn"
                                        className="btn-primary px-5 py-2 text-sm font-semibold inline-flex items-center gap-2 shadow-lg"
                                    >
                                        <Play className="w-3.5 h-3.5 fill-current" />
                                        <span className="hidden sm:inline">Resume</span>
                                    </Link>
                                    <button
                                        onClick={handleSignOut}
                                        className="p-2 rounded-full text-zinc-400 hover:text-white hover:bg-white/5 transition-colors"
                                        title="Sign Out"
                                    >
                                        <LogOut className="w-5 h-5" />
                                    </button>
                                </div>
                            ) : (
                                <button
                                    onClick={() => setIsLoginOpen(true)}
                                    className="btn-primary px-6 py-2 text-sm font-semibold shadow-lg shadow-rose-500/20"
                                >
                                    {t("landing.joinButton")}
                                </button>
                            )}
                        </motion.div>
                    </div>
                </div>
            </header>

            {/* 히어로 섹션 */}
            <section className="pt-32 pb-20 md:pt-48 md:pb-32 px-4 relative">
                <div className="max-w-5xl mx-auto text-center relative z-10">
                    <motion.div
                        initial={{ opacity: 0, scale: 0.9 }}
                        animate={{ opacity: 1, scale: 1 }}
                        transition={{ duration: 0.5 }}
                        className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-white/5 border border-white/10 text-rose-400 text-xs font-semibold uppercase tracking-wider mb-8 hover:bg-white/10 transition-colors cursor-default"
                    >
                        <Sparkles className="w-3 h-3" />
                        <span>The Ultimate K-Pop Learning Platform</span>
                    </motion.div>

                    <motion.h1
                        initial={{ opacity: 0, y: 30 }}
                        animate={{ opacity: 1, y: 0 }}
                        transition={{ delay: 0.2, duration: 0.8 }}
                        className="text-5xl md:text-7xl lg:text-8xl font-black mb-8 leading-[0.9] tracking-tight"
                    >
                        <span className="text-white block mb-2">{t("landing.title1")}</span>
                        <span className="text-gradient">
                            {t("landing.title2")}
                        </span>
                        <br className="hidden md:block" />
                        <span className="text-white block mt-2 text-4xl md:text-6xl lg:text-7xl">{t("landing.title3")}</span>
                    </motion.h1>

                    <motion.p
                        initial={{ opacity: 0, y: 30 }}
                        animate={{ opacity: 1, y: 0 }}
                        transition={{ delay: 0.4 }}
                        className="text-lg md:text-2xl text-zinc-400 mb-12 max-w-2xl mx-auto leading-relaxed font-light"
                    >
                        {t("landing.subtitle")}
                        <span className="hidden md:inline"> — </span>
                        <br className="md:hidden" />
                        {t("landing.description")}
                    </motion.p>

                    <motion.div
                        initial={{ opacity: 0, y: 30 }}
                        animate={{ opacity: 1, y: 0 }}
                        transition={{ delay: 0.6 }}
                        className="flex flex-col sm:flex-row gap-4 justify-center items-center"
                    >
                        <Link
                            href="/learn"
                            className="btn-primary px-8 py-4 text-lg font-bold inline-flex items-center gap-3 min-w-[200px] justify-center"
                        >
                            <Play className="w-5 h-5 fill-current" />
                            {t("landing.startButton")}
                        </Link>
                        <button className="px-8 py-4 rounded-full border border-zinc-700 hover:border-zinc-500 text-zinc-300 hover:text-white font-semibold text-lg hover:bg-white/5 transition-all min-w-[200px]">
                            {t("landing.demoButton")}
                        </button>
                    </motion.div>
                </div>
            </section>

            {/* 특징 섹션 */}
            <section className="py-24 px-4 bg-zinc-900/50 relative">
                <div className="absolute inset-0 bg-gradient-to-b from-[#09090b] via-transparent to-[#09090b]" />

                <div className="max-w-7xl mx-auto relative z-10">
                    <div className="text-center mb-16">
                        <motion.h2
                            initial={{ opacity: 0 }}
                            whileInView={{ opacity: 1 }}
                            viewport={{ once: true }}
                            className="text-3xl md:text-5xl font-bold mb-4"
                        >
                            Master Korean with <span className="text-gradient">K-Dictation</span>
                        </motion.h2>
                        <p className="text-zinc-400 text-lg">Everything you need to level up your language skills</p>
                    </div>

                    <div className="grid md:grid-cols-3 gap-6 md:gap-8">
                        {/* Card 1 */}
                        <motion.div
                            initial={{ opacity: 0, y: 30 }}
                            whileInView={{ opacity: 1, y: 0 }}
                            viewport={{ once: true }}
                            transition={{ delay: 0.1 }}
                            className="card p-8 group"
                        >
                            <div className="w-14 h-14 rounded-2xl bg-gradient-to-br from-rose-500/20 to-rose-600/20 flex items-center justify-center mb-6 border border-rose-500/30 group-hover:scale-110 transition-transform duration-300">
                                <Star className="w-7 h-7 text-rose-500" />
                            </div>
                            <h3 className="text-xl font-bold text-white mb-3 group-hover:text-rose-400 transition-colors">
                                {t("landing.features.realContent.title")}
                            </h3>
                            <p className="text-zinc-400 leading-relaxed">
                                {t("landing.features.realContent.description")}
                            </p>
                        </motion.div>

                        {/* Card 2 */}
                        <motion.div
                            initial={{ opacity: 0, y: 30 }}
                            whileInView={{ opacity: 1, y: 0 }}
                            viewport={{ once: true }}
                            transition={{ delay: 0.2 }}
                            className="card p-8 group"
                        >
                            <div className="w-14 h-14 rounded-2xl bg-gradient-to-br from-violet-500/20 to-violet-600/20 flex items-center justify-center mb-6 border border-violet-500/30 group-hover:scale-110 transition-transform duration-300">
                                <Trophy className="w-7 h-7 text-violet-500" />
                            </div>
                            <h3 className="text-xl font-bold text-white mb-3 group-hover:text-violet-400 transition-colors">
                                {t("landing.features.gamification.title")}
                            </h3>
                            <p className="text-zinc-400 leading-relaxed">
                                {t("landing.features.gamification.description")}
                            </p>
                        </motion.div>

                        {/* Card 3 */}
                        <motion.div
                            initial={{ opacity: 0, y: 30 }}
                            whileInView={{ opacity: 1, y: 0 }}
                            viewport={{ once: true }}
                            transition={{ delay: 0.3 }}
                            className="card p-8 group"
                        >
                            <div className="w-14 h-14 rounded-2xl bg-gradient-to-br from-cyan-500/20 to-cyan-600/20 flex items-center justify-center mb-6 border border-cyan-500/30 group-hover:scale-110 transition-transform duration-300">
                                <Flame className="w-7 h-7 text-cyan-500" />
                            </div>
                            <h3 className="text-xl font-bold text-white mb-3 group-hover:text-cyan-400 transition-colors">
                                {t("landing.features.instantAccess.title")}
                            </h3>
                            <p className="text-zinc-400 leading-relaxed">
                                {t("landing.features.instantAccess.description")}
                            </p>
                        </motion.div>
                    </div>
                </div>
            </section>

            {/* CTA 섹션 (Minimal & Bold) */}
            <section className="py-32 px-4 text-center relative overflow-hidden">
                <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[600px] h-[600px] bg-gradient-to-r from-rose-600/20 to-violet-600/20 rounded-full blur-[100px] -z-10" />

                <motion.div
                    initial={{ opacity: 0, scale: 0.95 }}
                    whileInView={{ opacity: 1, scale: 1 }}
                    viewport={{ once: true }}
                    className="max-w-3xl mx-auto"
                >
                    <h2 className="text-4xl md:text-6xl font-black text-white mb-8 tracking-tight">
                        {t("landing.cta.title")}
                    </h2>
                    <p className="text-xl text-zinc-400 mb-10 font-light">
                        {t("landing.cta.description")}
                    </p>
                    <Link
                        href="/learn"
                        className="btn-primary px-10 py-5 text-xl font-bold inline-flex items-center gap-3 shadow-2xl shadow-rose-600/20"
                    >
                        <Play className="w-6 h-6 fill-current" />
                        {t("landing.cta.button")}
                    </Link>
                </motion.div>
            </section>

            {/* 로그인 모달 */}
            <LoginModal isOpen={isLoginOpen} onClose={() => setIsLoginOpen(false)} />

            {/* 푸터 */}
            <footer className="py-12 border-t border-white/5 bg-[#09090b]">
                <div className="max-w-7xl mx-auto px-4 text-center">
                    <p className="text-zinc-600 text-sm">{t("landing.footer.copyright")}</p>
                    <p className="mt-2 text-zinc-700 text-xs font-medium">{t("landing.footer.madeWith")}</p>
                </div>
            </footer>
        </main>
    );
}
