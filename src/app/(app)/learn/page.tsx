"use client";

import { motion } from "framer-motion";
import Link from "next/link";
import { Play, ChevronRight, Flame, Star } from "lucide-react";

// 학습 콘텐츠 목록 페이지
export default function LearnPage() {
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
        <main className="min-h-screen py-8 px-6">
            {/* 헤더 영역 */}
            <header className="max-w-6xl mx-auto mb-12">
                <div className="flex items-center justify-between mb-8">
                    <Link href="/" className="flex items-center gap-2">
                        <span className="text-2xl font-bold bg-gradient-to-r from-[#FF007F] to-[#7C3AED] bg-clip-text text-transparent">
                            K-Dictation
                        </span>
                    </Link>

                    {/* 사용자 스탯 표시 */}
                    <div className="flex items-center gap-6">
                        <div className="flex items-center gap-2 text-[#22C55E]">
                            <Flame className="w-5 h-5" />
                            <span className="font-bold">3</span>
                        </div>
                        <div className="flex items-center gap-2 text-[#F59E0B]">
                            <Star className="w-5 h-5" />
                            <span className="font-bold">150 XP</span>
                        </div>
                    </div>
                </div>

                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                >
                    <h1 className="text-4xl font-bold text-white mb-4">
                        누구의 말을 들어볼까요? 🎧
                    </h1>
                    <p className="text-gray-400 text-lg">
                        좋아하는 아티스트를 선택하고 받아쓰기를 시작하세요!
                    </p>
                </motion.div>
            </header>

            {/* 아티스트 그리드 */}
            <section className="max-w-6xl mx-auto">
                <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
                    {artists.map((artist, index) => (
                        <motion.div
                            key={artist.id}
                            initial={{ opacity: 0, y: 30 }}
                            animate={{ opacity: 1, y: 0 }}
                            transition={{ delay: index * 0.1 }}
                        >
                            <Link
                                href={`/learn/${artist.id}`}
                                className="card p-6 block group hover:border-[#FF007F]/50 transition-all hover:scale-[1.02]"
                            >
                                <div className="flex items-center justify-between">
                                    <div className="flex items-center gap-4">
                                        <span className="text-4xl">{artist.emoji}</span>
                                        <div>
                                            <h3 className="text-xl font-bold text-white group-hover:text-[#FF007F] transition-colors">
                                                {artist.name}
                                            </h3>
                                            <p className="text-gray-400 text-sm">
                                                {artist.contentCount}개의 콘텐츠
                                            </p>
                                        </div>
                                    </div>
                                    <ChevronRight className="w-6 h-6 text-gray-500 group-hover:text-[#FF007F] transition-colors" />
                                </div>
                            </Link>
                        </motion.div>
                    ))}
                </div>
            </section>

            {/* 빠른 시작 CTA */}
            <section className="max-w-6xl mx-auto mt-12">
                <motion.div
                    initial={{ opacity: 0 }}
                    animate={{ opacity: 1 }}
                    transition={{ delay: 0.5 }}
                    className="card p-8 bg-gradient-to-r from-[#FF007F]/10 to-[#7C3AED]/10 text-center"
                >
                    <h2 className="text-2xl font-bold text-white mb-4">
                        바로 시작하고 싶다면?
                    </h2>
                    <p className="text-gray-400 mb-6">
                        오늘의 랜덤 챌린지에 도전해보세요!
                    </p>
                    <Link
                        href="/learn/random"
                        className="btn-primary px-8 py-3 text-white font-bold inline-flex items-center gap-2"
                    >
                        <Play className="w-5 h-5" />
                        Random Challenge
                    </Link>
                </motion.div>
            </section>
        </main>
    );
}
