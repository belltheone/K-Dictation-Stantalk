"use client";

import { useState, useEffect } from "react";
import { motion } from "framer-motion";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import {
    Flame, Star, Trophy, BookOpen, Calendar,
    ChevronRight, Play, TrendingUp, Loader2
} from "lucide-react";
import { LanguageSwitcher } from "@/components/ui/LanguageSwitcher";
import { AdminButton } from "@/components/admin/AdminButton";
import { createClient } from "@supabase/supabase-js";

// Supabase 클라이언트 생성
const supabase = createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

interface UserData {
    username: string;
    avatarUrl: string | null;
    xp: number;
    streakCount: number;
    level: number;
    vocabCount: number;
    completedChallenges: number;
}

interface RecentActivity {
    id: string;
    artist: string;
    content: string;
    xp: number;
    date: string;
}

// 대시보드 (마이 페이지) - Supabase 연동
export default function DashboardPage() {
    const t = useTranslations();
    const [isLoading, setIsLoading] = useState(true);
    const [isLoggedIn, setIsLoggedIn] = useState(false);
    const [userData, setUserData] = useState<UserData>({
        username: "게스트",
        avatarUrl: null,
        xp: 0,
        streakCount: 0,
        level: 1,
        vocabCount: 0,
        completedChallenges: 0,
    });
    const [recentActivity, setRecentActivity] = useState<RecentActivity[]>([]);
    const [weeklyProgress, setWeeklyProgress] = useState([
        { day: "M", completed: 0 },
        { day: "T", completed: 0 },
        { day: "W", completed: 0 },
        { day: "T", completed: 0 },
        { day: "F", completed: 0 },
        { day: "S", completed: 0 },
        { day: "S", completed: 0 },
    ]);

    // Supabase에서 사용자 데이터 가져오기
    useEffect(() => {
        const fetchUserData = async () => {
            try {
                setIsLoading(true);

                // 현재 사용자 확인
                const { data: { user } } = await supabase.auth.getUser();

                if (!user) {
                    setIsLoggedIn(false);
                    setIsLoading(false);
                    return;
                }

                setIsLoggedIn(true);

                // 사용자 프로필 조회
                const { data: profile, error: profileError } = await supabase
                    .from('users')
                    .select('*')
                    .eq('id', user.id)
                    .single();

                if (profileError && profileError.code !== 'PGRST116') {
                    console.error('Profile error:', profileError);
                }

                // 저장된 단어 수 조회
                const { count: vocabCount } = await supabase
                    .from('vocab')
                    .select('*', { count: 'exact', head: true })
                    .eq('user_id', user.id);

                // 완료한 챌린지 수 조회
                const { count: progressCount } = await supabase
                    .from('progress')
                    .select('*', { count: 'exact', head: true })
                    .eq('user_id', user.id);

                // 최근 활동 조회
                const { data: recentProgress } = await supabase
                    .from('progress')
                    .select(`
                        id,
                        xp_earned,
                        completed_at,
                        challenges (
                            full_sentence,
                            contents (
                                title,
                                artist_name
                            )
                        )
                    `)
                    .eq('user_id', user.id)
                    .order('completed_at', { ascending: false })
                    .limit(5);

                // 레벨 계산 (100 XP당 1레벨)
                const xp = profile?.xp || 0;
                const level = Math.floor(xp / 100) + 1;

                setUserData({
                    username: profile?.username || user.email?.split('@')[0] || '사용자',
                    avatarUrl: profile?.avatar_url || null,
                    xp: xp,
                    streakCount: profile?.streak_count || 0,
                    level: level,
                    vocabCount: vocabCount || 0,
                    completedChallenges: progressCount || 0,
                });

                // 최근 활동 변환
                if (recentProgress) {
                    const activities: RecentActivity[] = recentProgress.map((item, index) => {
                        const challenge = item.challenges;
                        const content = challenge?.contents;
                        const completedAt = new Date(item.completed_at);
                        const today = new Date();
                        const diffDays = Math.floor((today.getTime() - completedAt.getTime()) / (1000 * 60 * 60 * 24));

                        let dateStr = '오늘';
                        if (diffDays === 1) dateStr = '어제';
                        else if (diffDays > 1) dateStr = `${diffDays}일 전`;

                        return {
                            id: item.id,
                            artist: content?.artist_name || 'Unknown',
                            content: content?.title || 'Challenge',
                            xp: item.xp_earned || 10,
                            date: dateStr,
                        };
                    });
                    setRecentActivity(activities);
                }

                // 주간 진행 상황 계산
                const { data: weeklyData } = await supabase
                    .from('progress')
                    .select('completed_at')
                    .eq('user_id', user.id)
                    .gte('completed_at', new Date(Date.now() - 7 * 24 * 60 * 60 * 1000).toISOString());

                if (weeklyData) {
                    const dayCounts = [0, 0, 0, 0, 0, 0, 0];
                    weeklyData.forEach(item => {
                        const day = new Date(item.completed_at).getDay();
                        const adjustedDay = day === 0 ? 6 : day - 1; // 월요일=0 기준으로 변환
                        dayCounts[adjustedDay]++;
                    });

                    setWeeklyProgress([
                        { day: "M", completed: dayCounts[0] },
                        { day: "T", completed: dayCounts[1] },
                        { day: "W", completed: dayCounts[2] },
                        { day: "T", completed: dayCounts[3] },
                        { day: "F", completed: dayCounts[4] },
                        { day: "S", completed: dayCounts[5] },
                        { day: "S", completed: dayCounts[6] },
                    ]);
                }

            } catch (err) {
                console.error('Error fetching user data:', err);
            } finally {
                setIsLoading(false);
            }
        };

        fetchUserData();
    }, []);

    const xpForCurrentLevel = (userData.level - 1) * 100;
    const xpForNextLevel = userData.level * 100;
    const progressPercent = Math.min(100, ((userData.xp - xpForCurrentLevel) / (xpForNextLevel - xpForCurrentLevel)) * 100);
    const maxDayCompleted = Math.max(...weeklyProgress.map(d => d.completed), 1);

    // 로딩 상태
    if (isLoading) {
        return (
            <main className="min-h-screen flex items-center justify-center">
                <Loader2 className="w-8 h-8 text-rose-500 animate-spin" />
            </main>
        );
    }

    // 로그인하지 않은 경우
    if (!isLoggedIn) {
        return (
            <main className="min-h-screen flex items-center justify-center px-4">
                <div className="text-center max-w-md">
                    <div className="w-20 h-20 mx-auto mb-6 rounded-full bg-gradient-to-r from-rose-500 to-violet-500 flex items-center justify-center">
                        🎧
                    </div>
                    <h1 className="text-2xl font-bold text-white mb-4">로그인이 필요합니다</h1>
                    <p className="text-zinc-400 mb-6">대시보드를 보려면 로그인해주세요</p>
                    <Link href="/" className="btn-primary px-8 py-3 text-white font-bold">
                        로그인하기
                    </Link>
                </div>
            </main>
        );
    }

    return (
        <main className="min-h-screen py-6 md:py-8 px-4 md:px-6">
            <div className="max-w-6xl mx-auto">
                {/* 헤더 */}
                <header className="flex items-center justify-between mb-8 md:mb-12">
                    <Link href="/" className="flex items-center gap-1 md:gap-2">
                        <span className="text-lg md:text-2xl font-bold bg-gradient-to-r from-[#FF007F] to-[#7C3AED] bg-clip-text text-transparent">
                            K-Dictation
                        </span>
                    </Link>

                    <div className="flex items-center gap-2 md:gap-4">
                        <AdminButton />
                        <LanguageSwitcher />
                        <Link
                            href="/learn"
                            className="btn-primary px-3 md:px-6 py-1.5 md:py-2 text-white font-semibold text-xs md:text-sm inline-flex items-center gap-1 md:gap-2"
                        >
                            <Play className="w-3 h-3 md:w-4 md:h-4" />
                            <span className="hidden sm:inline">{t("dashboard.continueButton")}</span>
                        </Link>
                    </div>
                </header>

                {/* 프로필 카드 */}
                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    className="card p-4 md:p-8 mb-6 md:mb-8"
                >
                    <div className="flex items-center gap-4 md:gap-6 mb-4 md:mb-6">
                        <div className="w-14 h-14 md:w-20 md:h-20 rounded-full bg-gradient-to-r from-[#FF007F] to-[#7C3AED] flex items-center justify-center text-2xl md:text-3xl flex-shrink-0">
                            🎧
                        </div>

                        <div className="flex-1">
                            <h1 className="text-lg md:text-2xl font-bold text-white mb-1 md:mb-2">
                                {userData.username}
                            </h1>
                            <div className="flex items-center gap-3 md:gap-6 text-xs md:text-sm">
                                <div className="flex items-center gap-1 md:gap-2 text-[#22C55E]">
                                    <Flame className="w-4 h-4 md:w-5 md:h-5 animate-pulse-fire" />
                                    <span className="font-bold">{userData.streakCount} {t("dashboard.streak")}</span>
                                </div>
                                <div className="flex items-center gap-1 md:gap-2 text-[#F59E0B]">
                                    <Trophy className="w-4 h-4 md:w-5 md:h-5" />
                                    <span className="font-bold">{t("dashboard.level")} {userData.level}</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    {/* XP 프로그레스 바 */}
                    <div>
                        <div className="flex justify-between items-center mb-2">
                            <span className="text-gray-400 text-xs md:text-sm">{t("dashboard.nextLevel")}</span>
                            <span className="text-[#F59E0B] font-bold text-xs md:text-sm">
                                {userData.xp} / {xpForNextLevel} XP
                            </span>
                        </div>
                        <div className="h-2 md:h-3 bg-white/10 rounded-full overflow-hidden">
                            <motion.div
                                initial={{ width: 0 }}
                                animate={{ width: `${progressPercent}%` }}
                                transition={{ duration: 1, ease: "easeOut" }}
                                className="h-full bg-gradient-to-r from-[#FF007F] to-[#7C3AED] rounded-full"
                            />
                        </div>
                    </div>
                </motion.div>

                {/* 통계 카드 그리드 */}
                <div className="grid grid-cols-2 md:grid-cols-4 gap-3 md:gap-4 mb-6 md:mb-8">
                    {[
                        { icon: Star, label: t("dashboard.stats.totalXP"), value: userData.xp, color: "#F59E0B" },
                        { icon: Flame, label: t("dashboard.stats.longestStreak"), value: `${userData.streakCount}`, color: "#22C55E" },
                        { icon: BookOpen, label: t("dashboard.stats.savedWords"), value: userData.vocabCount, color: "#00F0FF" },
                        { icon: Trophy, label: t("dashboard.stats.completedChallenges"), value: userData.completedChallenges, color: "#7C3AED" },
                    ].map((stat, index) => (
                        <motion.div
                            key={stat.label}
                            initial={{ opacity: 0, y: 20 }}
                            animate={{ opacity: 1, y: 0 }}
                            transition={{ delay: 0.1 * (index + 1) }}
                            className="card p-4 md:p-6 text-center"
                        >
                            <stat.icon className="w-6 h-6 md:w-8 md:h-8 mx-auto mb-2 md:mb-3" style={{ color: stat.color }} />
                            <p className="text-lg md:text-2xl font-bold text-white">{stat.value}</p>
                            <p className="text-gray-400 text-xs md:text-sm">{stat.label}</p>
                        </motion.div>
                    ))}
                </div>

                <div className="grid md:grid-cols-2 gap-4 md:gap-8">
                    {/* 주간 활동 차트 */}
                    <motion.div
                        initial={{ opacity: 0, x: -20 }}
                        animate={{ opacity: 1, x: 0 }}
                        transition={{ delay: 0.3 }}
                        className="card p-4 md:p-6"
                    >
                        <div className="flex items-center justify-between mb-4 md:mb-6">
                            <h2 className="text-sm md:text-lg font-bold text-white flex items-center gap-2">
                                <Calendar className="w-4 h-4 md:w-5 md:h-5 text-[#7C3AED]" />
                                {t("dashboard.weeklyActivity")}
                            </h2>
                            <TrendingUp className="w-4 h-4 md:w-5 md:h-5 text-[#22C55E]" />
                        </div>

                        <div className="flex items-end justify-between gap-1 md:gap-2 h-24 md:h-32">
                            {weeklyProgress.map((day, index) => (
                                <div key={index} className="flex-1 flex flex-col items-center gap-1 md:gap-2">
                                    <motion.div
                                        initial={{ height: 0 }}
                                        animate={{ height: `${(day.completed / maxDayCompleted) * 100}%` }}
                                        transition={{ delay: 0.1 * index, duration: 0.5 }}
                                        className="w-full bg-gradient-to-t from-[#FF007F] to-[#7C3AED] rounded-t-lg"
                                        style={{
                                            opacity: day.completed > 0 ? 1 : 0.2,
                                            minHeight: day.completed > 0 ? "12px" : "4px"
                                        }}
                                    />
                                    <span className="text-xs text-gray-400">{day.day}</span>
                                </div>
                            ))}
                        </div>
                    </motion.div>

                    {/* 최근 활동 */}
                    <motion.div
                        initial={{ opacity: 0, x: 20 }}
                        animate={{ opacity: 1, x: 0 }}
                        transition={{ delay: 0.4 }}
                        className="card p-4 md:p-6"
                    >
                        <h2 className="text-sm md:text-lg font-bold text-white flex items-center gap-2 mb-4 md:mb-6">
                            <Play className="w-4 h-4 md:w-5 md:h-5 text-[#FF007F]" />
                            {t("dashboard.recentActivity")}
                        </h2>

                        {recentActivity.length === 0 ? (
                            <div className="text-center py-8 text-zinc-500">
                                <p>아직 활동 기록이 없습니다</p>
                            </div>
                        ) : (
                            <div className="space-y-3 md:space-y-4">
                                {recentActivity.map((activity) => (
                                    <div
                                        key={activity.id}
                                        className="flex items-center justify-between py-2 md:py-3 border-b border-white/10 last:border-0"
                                    >
                                        <div>
                                            <p className="text-white font-medium text-sm md:text-base">{activity.content}</p>
                                            <p className="text-gray-400 text-xs md:text-sm">{activity.artist} • {activity.date}</p>
                                        </div>
                                        <span className="text-[#F59E0B] font-bold text-sm md:text-base">+{activity.xp} XP</span>
                                    </div>
                                ))}
                            </div>
                        )}

                        <Link
                            href="/learn"
                            className="flex items-center justify-center gap-1 md:gap-2 mt-4 md:mt-6 text-[#7C3AED] hover:text-[#FF007F] transition-colors text-sm md:text-base"
                        >
                            <span>{t("dashboard.seeMore")}</span>
                            <ChevronRight className="w-3 h-3 md:w-4 md:h-4" />
                        </Link>
                    </motion.div>
                </div>
            </div>
        </main>
    );
}
