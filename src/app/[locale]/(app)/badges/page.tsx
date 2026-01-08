"use client";

import { motion } from "framer-motion";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import { ChevronLeft, Lock, Trophy, Flame, Star, Zap, BookOpen, Music, Heart, Target } from "lucide-react";

// 뱃지 데이터
const badges = [
    { id: "first-win", icon: Trophy, name: "First Win", description: "Complete your first challenge", unlocked: true },
    { id: "streak-3", icon: Flame, name: "On Fire", description: "3 day streak", unlocked: true },
    { id: "streak-7", icon: Flame, name: "Weekly Warrior", description: "7 day streak", unlocked: true },
    { id: "streak-30", icon: Flame, name: "Monthly Master", description: "30 day streak", unlocked: false },
    { id: "xp-100", icon: Star, name: "Rising Star", description: "Earn 100 XP", unlocked: true },
    { id: "xp-1000", icon: Star, name: "Shining Star", description: "Earn 1000 XP", unlocked: false },
    { id: "xp-10000", icon: Star, name: "Superstar", description: "Earn 10000 XP", unlocked: false },
    { id: "speed-demon", icon: Zap, name: "Speed Demon", description: "Answer in under 3 seconds", unlocked: true },
    { id: "bookworm", icon: BookOpen, name: "Bookworm", description: "Save 50 words to vocabulary", unlocked: false },
    { id: "music-lover", icon: Music, name: "Music Lover", description: "Complete 50 K-Pop challenges", unlocked: false },
    { id: "dedicated", icon: Heart, name: "Dedicated Learner", description: "Study for 100 hours total", unlocked: false },
    { id: "perfect", icon: Target, name: "Perfect Score", description: "Get 10 correct in a row", unlocked: true },
];

// 뱃지 페이지
export default function BadgesPage() {
    const t = useTranslations();

    const unlockedCount = badges.filter(b => b.unlocked).length;

    return (
        <main className="min-h-screen bg-[#09090b] py-6 md:py-8 px-4 md:px-6">
            {/* 헤더 */}
            <header className="max-w-4xl mx-auto mb-8">
                <div className="flex items-center gap-2 mb-6">
                    <Link href="/learn" className="flex items-center gap-1 text-zinc-400 hover:text-white transition-colors text-sm">
                        <ChevronLeft className="w-4 h-4" />
                        {t("common.back")}
                    </Link>
                </div>

                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    className="text-center"
                >
                    <h1 className="text-2xl md:text-4xl font-bold text-white mb-2">
                        {t("badges.title")}
                    </h1>
                    <p className="text-zinc-400">
                        {unlockedCount} / {badges.length} {t("badges.unlocked")}
                    </p>
                </motion.div>
            </header>

            {/* 뱃지 그리드 */}
            <section className="max-w-4xl mx-auto">
                <div className="grid grid-cols-3 md:grid-cols-4 gap-3 md:gap-4">
                    {badges.map((badge, index) => (
                        <motion.div
                            key={badge.id}
                            initial={{ opacity: 0, scale: 0.8 }}
                            animate={{ opacity: 1, scale: 1 }}
                            transition={{ delay: index * 0.05 }}
                            className={`
                                card p-4 text-center group
                                ${badge.unlocked ? 'hover:border-rose-500/30' : 'opacity-50'}
                            `}
                        >
                            <div className={`
                                w-12 h-12 md:w-14 md:h-14 mx-auto mb-3 rounded-full flex items-center justify-center
                                ${badge.unlocked
                                    ? 'bg-gradient-to-br from-rose-500/20 to-violet-500/20 border border-rose-500/30'
                                    : 'bg-zinc-800 border border-zinc-700'
                                }
                            `}>
                                {badge.unlocked ? (
                                    <badge.icon className="w-6 h-6 md:w-7 md:h-7 text-rose-400" />
                                ) : (
                                    <Lock className="w-5 h-5 text-zinc-500" />
                                )}
                            </div>
                            <h3 className={`font-medium text-sm mb-1 ${badge.unlocked ? 'text-white' : 'text-zinc-500'}`}>
                                {badge.name}
                            </h3>
                            <p className="text-xs text-zinc-500 line-clamp-2">
                                {badge.description}
                            </p>
                        </motion.div>
                    ))}
                </div>
            </section>
        </main>
    );
}
