"use client";

import { motion } from "framer-motion";
import Link from "next/link";
import { useParams } from "next/navigation";
import { Play, ChevronLeft, Clock, Star } from "lucide-react";

// 특정 아티스트의 콘텐츠 목록 페이지
export default function ArtistPage() {
    const params = useParams();
    const artistId = params.artistId as string;

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
        { id: "content-1", title: "V-Log 일상 토크", difficulty: "easy", duration: "2:30", xp: 50 },
        { id: "content-2", title: "예능 출연 하이라이트", difficulty: "normal", duration: "3:15", xp: 80 },
        { id: "content-3", title: "팬미팅 멘트", difficulty: "normal", duration: "1:45", xp: 60 },
        { id: "content-4", title: "라이브 방송 수다", difficulty: "hard", duration: "4:00", xp: 120 },
    ];

    // 난이도별 색상
    const difficultyColor: Record<string, string> = {
        easy: "text-[#22C55E] border-[#22C55E]",
        normal: "text-[#F59E0B] border-[#F59E0B]",
        hard: "text-[#EF4444] border-[#EF4444]",
    };

    return (
        <main className="min-h-screen py-8 px-6">
            {/* 헤더 */}
            <header className="max-w-4xl mx-auto mb-12">
                <Link
                    href="/learn"
                    className="inline-flex items-center gap-2 text-gray-400 hover:text-white transition-colors mb-6"
                >
                    <ChevronLeft className="w-5 h-5" />
                    <span>아티스트 목록</span>
                </Link>

                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    className="flex items-center gap-4"
                >
                    <span className="text-6xl">{artist.emoji}</span>
                    <div>
                        <h1 className="text-4xl font-bold text-white mb-2">
                            {artist.name}
                        </h1>
                        <p className="text-gray-400">
                            {contents.length}개의 콘텐츠 • 총 {contents.reduce((acc, c) => acc + c.xp, 0)} XP 획득 가능
                        </p>
                    </div>
                </motion.div>
            </header>

            {/* 콘텐츠 목록 */}
            <section className="max-w-4xl mx-auto">
                <div className="space-y-4">
                    {contents.map((content, index) => (
                        <motion.div
                            key={content.id}
                            initial={{ opacity: 0, x: -20 }}
                            animate={{ opacity: 1, x: 0 }}
                            transition={{ delay: index * 0.1 }}
                        >
                            <Link
                                href={`/learn/${artistId}/${content.id}`}
                                className="card p-6 flex items-center justify-between group hover:border-[#FF007F]/50 transition-all"
                            >
                                <div className="flex items-center gap-6">
                                    {/* 재생 버튼 */}
                                    <div className="w-14 h-14 rounded-full bg-gradient-to-r from-[#FF007F] to-[#7C3AED] flex items-center justify-center group-hover:scale-110 transition-transform">
                                        <Play className="w-6 h-6 text-white ml-1" />
                                    </div>

                                    <div>
                                        <h3 className="text-lg font-semibold text-white group-hover:text-[#FF007F] transition-colors">
                                            {content.title}
                                        </h3>
                                        <div className="flex items-center gap-4 mt-1 text-sm text-gray-400">
                                            <span className="flex items-center gap-1">
                                                <Clock className="w-4 h-4" />
                                                {content.duration}
                                            </span>
                                            <span className={`px-2 py-0.5 border rounded-full text-xs ${difficultyColor[content.difficulty]}`}>
                                                {content.difficulty}
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                {/* XP 표시 */}
                                <div className="flex items-center gap-2 text-[#F59E0B]">
                                    <Star className="w-5 h-5" />
                                    <span className="font-bold">{content.xp} XP</span>
                                </div>
                            </Link>
                        </motion.div>
                    ))}
                </div>
            </section>
        </main>
    );
}
