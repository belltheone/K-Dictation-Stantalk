"use client";

import { motion } from "framer-motion";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import {
    Flame, Star, Trophy, BookOpen, Calendar,
    ChevronRight, Play, TrendingUp
} from "lucide-react";
import { LanguageSwitcher } from "@/components/ui/LanguageSwitcher";

// 대시보드 (마이 페이지) - 모바일 퍼스트
export default function DashboardPage() {
    const t = useTranslations();

    // 샘플 사용자 데이터
    const userData = {
        username: "K-Pop Learner",
        avatarUrl: null,
        xp: 1250,
        streakCount: 7,
        level: 5,
        vocabCount: 32,
        completedChallenges: 48,
    };

    const recentActivity = [
        { id: 1, artist: "BTS", content: "V-Log Daily Talk", xp: 50, date: "Today" },
        { id: 2, artist: "NewJeans", content: "Variety Clip", xp: 80, date: "Yesterday" },
        { id: 3, artist: "BLACKPINK", content: "Live Stream", xp: 120, date: "2 days ago" },
    ];

    const weeklyProgress = [
        { day: "M", completed: 3 },
        { day: "T", completed: 5 },
        { day: "W", completed: 2 },
        { day: "T", completed: 4 },
        { day: "F", completed: 6 },
        { day: "S", completed: 1 },
        { day: "S", completed: 0 },
    ];

    const xpForCurrentLevel = 1000;
    const xpForNextLevel = 1500;
    const progressPercent = ((userData.xp - xpForCurrentLevel) / (xpForNextLevel - xpForCurrentLevel)) * 100;

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

                {/* 통계 카드 그리드 - 모바일 2x2 */}
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
                                        animate={{ height: `${(day.completed / 6) * 100}%` }}
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
