"use client";

import { useState, useEffect } from "react";
import { motion } from "framer-motion";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import { ChevronLeft, Trophy, Medal, Crown, Star, Loader2 } from "lucide-react";
import { createClient } from "@supabase/supabase-js";

// Supabase 클라이언트 생성
const supabase = createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

interface LeaderboardPlayer {
    rank: number;
    name: string;
    xp: number;
    isYou: boolean;
    avatar: string;
}

// 아바타 이모지 배열
const avatarEmojis = ["👑", "💜", "💖", "🐰", "🖤", "⭐", "🌟", "📚", "🏙️", "❤️", "💎", "✨", "🍭", "🦋", "💫"];

// 리더보드 페이지 - Supabase 연동
export default function LeaderboardPage() {
    const t = useTranslations();
    const [players, setPlayers] = useState<LeaderboardPlayer[]>([]);
    const [isLoading, setIsLoading] = useState(true);
    const [currentUserId, setCurrentUserId] = useState<string | null>(null);

    // Supabase에서 리더보드 데이터 가져오기
    useEffect(() => {
        const fetchLeaderboard = async () => {
            try {
                setIsLoading(true);

                // 현재 사용자 확인
                const { data: { user } } = await supabase.auth.getUser();
                setCurrentUserId(user?.id || null);

                // 상위 50명 사용자 XP 순으로 조회
                const { data, error } = await supabase
                    .from('users')
                    .select('id, username, xp, avatar_url')
                    .order('xp', { ascending: false })
                    .limit(50);

                if (error) throw error;

                if (data && data.length > 0) {
                    const leaderboardList: LeaderboardPlayer[] = data.map((player, index) => ({
                        rank: index + 1,
                        name: player.username || `User${index + 1}`,
                        xp: player.xp || 0,
                        isYou: player.id === user?.id,
                        avatar: avatarEmojis[index % avatarEmojis.length],
                    }));
                    setPlayers(leaderboardList);
                } else {
                    // 데이터가 없으면 빈 목록
                    setPlayers([]);
                }
            } catch (err) {
                console.error('Error fetching leaderboard:', err);
                setPlayers([]);
            } finally {
                setIsLoading(false);
            }
        };

        fetchLeaderboard();
    }, []);

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
                {isLoading ? (
                    <div className="flex items-center justify-center py-12">
                        <Loader2 className="w-8 h-8 text-rose-500 animate-spin" />
                    </div>
                ) : players.length === 0 ? (
                    <div className="text-center py-12">
                        <Trophy className="w-12 h-12 mx-auto mb-4 text-zinc-600" />
                        <p className="text-zinc-500">아직 랭킹 데이터가 없습니다</p>
                        <Link href="/learn" className="text-rose-500 hover:underline mt-2 inline-block">
                            학습을 시작해서 첫 번째가 되세요!
                        </Link>
                    </div>
                ) : (
                    <div className="space-y-2 md:space-y-3">
                        {players.map((player, index) => (
                            <motion.div
                                key={player.rank}
                                initial={{ opacity: 0, x: -20 }}
                                animate={{ opacity: 1, x: 0 }}
                                transition={{ delay: index * 0.03 }}
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
                )}
            </section>
        </main>
    );
}
