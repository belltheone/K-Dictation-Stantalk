"use client";

import { motion } from "framer-motion";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import { ChevronLeft, Trophy, Medal, Crown, Star } from "lucide-react";

// 샘플 리더보드 데이터
const leaderboardData = [
    { rank: 1, name: "K-Pop Master", xp: 15420, isYou: false, avatar: "👑" },
    { rank: 2, name: "BTS_ARMY_2024", xp: 12350, isYou: false, avatar: "💜" },
    { rank: 3, name: "BLINK_Forever", xp: 11200, isYou: false, avatar: "💖" },
    { rank: 4, name: "NewJeans_Fan", xp: 9800, isYou: false, avatar: "🐰" },
    { rank: 5, name: "StrayKids_Stay", xp: 8500, isYou: false, avatar: "🖤" },
    { rank: 6, name: "You", xp: 7200, isYou: true, avatar: "⭐" },
    { rank: 7, name: "IVE_Diver", xp: 6800, isYou: false, avatar: "🌟" },
    { rank: 8, name: "KoreanLearner", xp: 5400, isYou: false, avatar: "📚" },
    { rank: 9, name: "Seoul_Dreams", xp: 4200, isYou: false, avatar: "🏙️" },
    { rank: 10, name: "Hangul_Lover", xp: 3100, isYou: false, avatar: "❤️" },
];

// 리더보드 페이지
export default function LeaderboardPage() {
    const t = useTranslations();

    const getRankIcon = (rank: number) => {
        if (rank === 1) return <Crown className="w-5 h-5 text-amber-400" />;
        if (rank === 2) return <Medal className="w-5 h-5 text-zinc-400" />;
        if (rank === 3) return <Medal className="w-5 h-5 text-amber-600" />;
        return <span className="w-5 h-5 flex items-center justify-center text-sm text-zinc-500">{rank}</span>;
    };

    return (
        <main className="min-h-screen bg-[#09090b] py-6 md:py-8 px-4 md:px-6">
            {/* 헤더 */}
            <header className="max-w-2xl mx-auto mb-8">
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
                    <Trophy className="w-12 h-12 mx-auto mb-4 text-amber-400" />
                    <h1 className="text-2xl md:text-4xl font-bold text-white mb-2">
                        {t("leaderboard.title")}
                    </h1>
                </motion.div>
            </header>

            {/* 탭 */}
            <div className="max-w-2xl mx-auto mb-6">
                <div className="flex gap-2 justify-center">
                    <button className="px-4 py-2 rounded-full bg-rose-500/20 text-rose-400 font-medium text-sm">
                        {t("leaderboard.weekly")}
                    </button>
                    <button className="px-4 py-2 rounded-full bg-zinc-800/50 text-zinc-400 font-medium text-sm hover:bg-zinc-800">
                        {t("leaderboard.allTime")}
                    </button>
                </div>
            </div>

            {/* 리더보드 리스트 */}
            <section className="max-w-2xl mx-auto">
                <div className="space-y-2 md:space-y-3">
                    {leaderboardData.map((player, index) => (
                        <motion.div
                            key={player.rank}
                            initial={{ opacity: 0, x: -20 }}
                            animate={{ opacity: 1, x: 0 }}
                            transition={{ delay: index * 0.05 }}
                            className={`
                                card p-4 flex items-center gap-4
                                ${player.isYou ? 'border-rose-500/50 bg-rose-500/5' : ''}
                                ${player.rank <= 3 ? 'border-amber-500/30' : ''}
                            `}
                        >
                            <div className="w-8 flex justify-center">
                                {getRankIcon(player.rank)}
                            </div>
                            <span className="text-2xl">{player.avatar}</span>
                            <div className="flex-1 min-w-0">
                                <p className={`font-medium truncate ${player.isYou ? 'text-rose-400' : 'text-white'}`}>
                                    {player.isYou ? `${player.name} (${t("leaderboard.you")})` : player.name}
                                </p>
                            </div>
                            <div className="flex items-center gap-1 text-amber-400">
                                <Star className="w-4 h-4 fill-current" />
                                <span className="font-bold">{player.xp.toLocaleString()}</span>
                            </div>
                        </motion.div>
                    ))}
                </div>
            </section>
        </main>
    );
}
