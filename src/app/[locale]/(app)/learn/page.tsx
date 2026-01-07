"use client";

import { motion } from "framer-motion";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import { Play, ChevronRight, Flame, Star } from "lucide-react";
import { LanguageSwitcher } from "@/components/ui/LanguageSwitcher";

// 학습 콘텐츠 목록 페이지 - 모바일 퍼스트 디자인
export default function LearnPage() {
    const t = useTranslations();

    // 샘플 아티스트 데이터 (추후 Supabase에서 가져올 예정)
    const artists = [
        { id: "bts", name: "BTS", emoji: "💜", contentCount: 12 },
        { id: "newjeans", name: "NewJeans", emoji: "🐰", contentCount: 8 },
        { id: "blackpink", name: "BLACKPINK", emoji: "💖", contentCount: 10 },
        { id: "stray-kids", name: "Stray Kids", emoji: "🖤", contentCount: 7 },
        { id: "seventeen", name: "SEVENTEEN", emoji: "💎", contentCount: 9 },
        { id: "ive", name: "IVE", emoji: "🌟", contentCount: 6 },
    ];

    return (
        <main className="min-h-screen py-6 md:py-8 px-4 md:px-6">
            {/* 헤더 영역 */}
            <header className="max-w-6xl mx-auto mb-8 md:mb-12">
                <div className="flex items-center justify-between mb-6 md:mb-8">
                    <Link href="/" className="flex items-center gap-1 md:gap-2">
                        <span className="text-lg md:text-2xl font-bold bg-gradient-to-r from-[#FF007F] to-[#7C3AED] bg-clip-text text-transparent">
                            K-Dictation
                        </span>
                    </Link>

                    {/* 사용자 스탯 및 언어 선택 */}
                    <div className="flex items-center gap-3 md:gap-6">
                        <div className="flex items-center gap-1 md:gap-2 text-[#22C55E]">
                            <Flame className="w-4 h-4 md:w-5 md:h-5" />
                            <span className="font-bold text-sm md:text-base">3</span>
                        </div>
                        <div className="flex items-center gap-1 md:gap-2 text-[#F59E0B]">
                            <Star className="w-4 h-4 md:w-5 md:h-5" />
                            <span className="font-bold text-sm md:text-base">150 XP</span>
                        </div>
                        <LanguageSwitcher />
                    </div>
                </div>

                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                >
                    <h1 className="text-2xl md:text-4xl font-bold text-white mb-2 md:mb-4">
                        {t("learn.header")}
                    </h1>
                    <p className="text-sm md:text-lg text-gray-400">
                        {t("learn.subtitle")}
                    </p>
                </motion.div>
            </header>

            {/* 아티스트 그리드 - 모바일에서 2열 */}
            <section className="max-w-6xl mx-auto">
                <div className="grid grid-cols-2 md:grid-cols-2 lg:grid-cols-3 gap-3 md:gap-6">
                    {artists.map((artist, index) => (
                        <motion.div
                            key={artist.id}
                            initial={{ opacity: 0, y: 30 }}
                            animate={{ opacity: 1, y: 0 }}
                            transition={{ delay: index * 0.1 }}
                        >
                            <Link
                                href={`/learn/${artist.id}`}
                                className="card p-4 md:p-6 block group hover:border-[#FF007F]/50 transition-all hover:scale-[1.02]"
                            >
                                <div className="flex flex-col md:flex-row md:items-center md:justify-between gap-2 md:gap-0">
                                    <div className="flex items-center gap-3 md:gap-4">
                                        <span className="text-2xl md:text-4xl">{artist.emoji}</span>
                                        <div>
                                            <h3 className="text-base md:text-xl font-bold text-white group-hover:text-[#FF007F] transition-colors">
                                                {artist.name}
                                            </h3>
                                            <p className="text-gray-400 text-xs md:text-sm">
                                                {artist.contentCount} {t("learn.contents")}
                                            </p>
                                        </div>
                                    </div>
                                    <ChevronRight className="hidden md:block w-6 h-6 text-gray-500 group-hover:text-[#FF007F] transition-colors" />
                                </div>
                            </Link>
                        </motion.div>
                    ))}
                </div>
            </section>

            {/* 빠른 시작 CTA */}
            <section className="max-w-6xl mx-auto mt-8 md:mt-12">
                <motion.div
                    initial={{ opacity: 0 }}
                    animate={{ opacity: 1 }}
                    transition={{ delay: 0.5 }}
                    className="card p-6 md:p-8 bg-gradient-to-r from-[#FF007F]/10 to-[#7C3AED]/10 text-center"
                >
                    <h2 className="text-lg md:text-2xl font-bold text-white mb-2 md:mb-4">
                        {t("learn.randomChallenge.title")}
                    </h2>
                    <p className="text-sm md:text-base text-gray-400 mb-4 md:mb-6">
                        {t("learn.randomChallenge.description")}
                    </p>
                    <Link
                        href="/learn/random"
                        className="btn-primary px-6 md:px-8 py-2 md:py-3 text-white font-bold text-sm md:text-base inline-flex items-center gap-2"
                    >
                        <Play className="w-4 h-4 md:w-5 md:h-5" />
                        {t("learn.randomChallenge.button")}
                    </Link>
                </motion.div>
            </section>
        </main>
    );
}
