"use client";

import { motion } from "framer-motion";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import { useParams } from "next/navigation";
import { Play, ChevronLeft, Clock, Star } from "lucide-react";

// 특정 아티스트의 콘텐츠 목록 페이지 - 모바일 퍼스트
export default function ArtistPage() {
    const params = useParams();
    const artistId = params.artistId as string;
    const t = useTranslations();

    // 아티스트 정보 (추후 Supabase에서 가져올 예정)
    const artistInfo: Record<string, { name: string; emoji: string }> = {
        "bts": { name: "BTS", emoji: "💜" },
        "newjeans": { name: "NewJeans", emoji: "🐰" },
        "blackpink": { name: "BLACKPINK", emoji: "💖" },
        "stray-kids": { name: "Stray Kids", emoji: "🖤" },
        "seventeen": { name: "SEVENTEEN", emoji: "💎" },
        "ive": { name: "IVE", emoji: "🌟" },
    };

    const artist = artistInfo[artistId] || { name: artistId, emoji: "🎤" };

    // 샘플 콘텐츠 데이터
    const contents = [
        { id: "content-1", title: "V-Log Daily Talk", difficulty: "easy", duration: "2:30", xp: 50 },
        { id: "content-2", title: "Variety Show Highlight", difficulty: "normal", duration: "3:15", xp: 80 },
        { id: "content-3", title: "Fan Meeting Ment", difficulty: "normal", duration: "1:45", xp: 60 },
        { id: "content-4", title: "Live Stream Chat", difficulty: "hard", duration: "4:00", xp: 120 },
    ];

    // 난이도별 색상
    const difficultyColor: Record<string, string> = {
        easy: "text-[#22C55E] border-[#22C55E]",
        normal: "text-[#F59E0B] border-[#F59E0B]",
        hard: "text-[#EF4444] border-[#EF4444]",
    };

    return (
        <main className="min-h-screen py-6 md:py-8 px-4 md:px-6">
            {/* 헤더 */}
            <header className="max-w-4xl mx-auto mb-8 md:mb-12">
                <Link
                    href="/learn"
                    className="inline-flex items-center gap-1 md:gap-2 text-gray-400 hover:text-white transition-colors mb-4 md:mb-6 text-sm md:text-base"
                >
                    <ChevronLeft className="w-4 h-4 md:w-5 md:h-5" />
                    <span>{t("learn.artistList")}</span>
                </Link>

                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    className="flex items-center gap-3 md:gap-4"
                >
                    <span className="text-4xl md:text-6xl">{artist.emoji}</span>
                    <div>
                        <h1 className="text-2xl md:text-4xl font-bold text-white mb-1 md:mb-2">
                            {artist.name}
                        </h1>
                        <p className="text-sm md:text-base text-gray-400">
                            {contents.length} {t("learn.contents")} • {contents.reduce((acc, c) => acc + c.xp, 0)} {t("learn.totalXP")}
                        </p>
                    </div>
                </motion.div>
            </header>

            {/* 콘텐츠 목록 */}
            <section className="max-w-4xl mx-auto">
                <div className="space-y-3 md:space-y-4">
                    {contents.map((content, index) => (
                        <motion.div
                            key={content.id}
                            initial={{ opacity: 0, x: -20 }}
                            animate={{ opacity: 1, x: 0 }}
                            transition={{ delay: index * 0.1 }}
                        >
                            <Link
                                href={`/learn/${artistId}/${content.id}`}
                                className="card p-4 md:p-6 flex items-center justify-between group hover:border-[#FF007F]/50 transition-all"
                            >
                                <div className="flex items-center gap-3 md:gap-6">
                                    {/* 재생 버튼 */}
                                    <div className="w-10 h-10 md:w-14 md:h-14 rounded-full bg-gradient-to-r from-[#FF007F] to-[#7C3AED] flex items-center justify-center group-hover:scale-110 transition-transform flex-shrink-0">
                                        <Play className="w-4 h-4 md:w-6 md:h-6 text-white ml-0.5" />
                                    </div>

                                    <div>
                                        <h3 className="text-sm md:text-lg font-semibold text-white group-hover:text-[#FF007F] transition-colors">
                                            {content.title}
                                        </h3>
                                        <div className="flex items-center gap-2 md:gap-4 mt-1 text-xs md:text-sm text-gray-400">
                                            <span className="flex items-center gap-1">
                                                <Clock className="w-3 h-3 md:w-4 md:h-4" />
                                                {content.duration}
                                            </span>
                                            <span className={`px-1.5 md:px-2 py-0.5 border rounded-full text-xs ${difficultyColor[content.difficulty]}`}>
                                                {t(`difficulty.${content.difficulty}`)}
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                {/* XP 표시 */}
                                <div className="flex items-center gap-1 md:gap-2 text-[#F59E0B]">
                                    <Star className="w-4 h-4 md:w-5 md:h-5" />
                                    <span className="font-bold text-sm md:text-base">{content.xp}</span>
                                </div>
                            </Link>
                        </motion.div>
                    ))}
                </div>
            </section>
        </main>
    );
}
