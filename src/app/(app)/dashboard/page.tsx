"use client";

import { motion } from "framer-motion";
import Link from "next/link";
import {
    Flame, Star, Trophy, BookOpen, Calendar,
    ChevronRight, Play, TrendingUp
} from "lucide-react";

// 대시보드 (마이 페이지) - 사용자 진행 상황 표시
export default function DashboardPage() {
    // 샘플 사용자 데이터 (추후 Supabase에서 가져올 예정)
    const userData = {
        username: "K-Pop Learner",
        avatarUrl: null,
        xp: 1250,
        streakCount: 7,
        level: 5,
        vocabCount: 32,
        completedChallenges: 48,
    };

    // 최근 활동 데이터
    const recentActivity = [
        { id: 1, artist: "BTS", content: "V-Log 일상 토크", xp: 50, date: "오늘" },
        { id: 2, artist: "NewJeans", content: "예능 클립", xp: 80, date: "어제" },
        { id: 3, artist: "BLACKPINK", content: "라이브 방송", xp: 120, date: "2일 전" },
    ];

    // 주간 진행 상황
    const weeklyProgress = [
        { day: "월", completed: 3 },
        { day: "화", completed: 5 },
        { day: "수", completed: 2 },
        { day: "목", completed: 4 },
        { day: "금", completed: 6 },
        { day: "토", completed: 1 },
        { day: "일", completed: 0 },
    ];

    // 현재 레벨 진행도 계산
    const xpForCurrentLevel = 1000;
    const xpForNextLevel = 1500;
    const progressPercent = ((userData.xp - xpForCurrentLevel) / (xpForNextLevel - xpForCurrentLevel)) * 100;

    return (
        <main className="min-h-screen py-8 px-6">
            <div className="max-w-6xl mx-auto">
                {/* 헤더 */}
                <header className="flex items-center justify-between mb-12">
                    <Link href="/" className="flex items-center gap-2">
                        <span className="text-2xl font-bold bg-gradient-to-r from-[#FF007F] to-[#7C3AED] bg-clip-text text-transparent">
                            K-Dictation
                        </span>
                    </Link>

                    <Link
                        href="/learn"
                        className="btn-primary px-6 py-2 text-white font-semibold text-sm inline-flex items-center gap-2"
                    >
                        <Play className="w-4 h-4" />
                        계속 학습하기
                    </Link>
                </header>

                {/* 프로필 카드 */}
                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    className="card p-8 mb-8"
                >
                    <div className="flex items-center gap-6 mb-6">
                        {/* 아바타 */}
                        <div className="w-20 h-20 rounded-full bg-gradient-to-r from-[#FF007F] to-[#7C3AED] flex items-center justify-center text-3xl">
                            🎧
                        </div>

                        <div className="flex-1">
                            <h1 className="text-2xl font-bold text-white mb-2">
                                {userData.username}
                            </h1>
                            <div className="flex items-center gap-6 text-sm">
                                <div className="flex items-center gap-2 text-[#22C55E]">
                                    <Flame className="w-5 h-5 animate-pulse-fire" />
                                    <span className="font-bold">{userData.streakCount}일 연속</span>
                                </div>
                                <div className="flex items-center gap-2 text-[#F59E0B]">
                                    <Trophy className="w-5 h-5" />
                                    <span className="font-bold">Level {userData.level}</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    {/* XP 프로그레스 바 */}
                    <div>
                        <div className="flex justify-between items-center mb-2">
                            <span className="text-gray-400 text-sm">다음 레벨까지</span>
                            <span className="text-[#F59E0B] font-bold">
                                {userData.xp} / {xpForNextLevel} XP
                            </span>
                        </div>
                        <div className="h-3 bg-white/10 rounded-full overflow-hidden">
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
                <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-8">
                    {[
                        { icon: Star, label: "총 XP", value: userData.xp, color: "#F59E0B" },
                        { icon: Flame, label: "최장 연속", value: `${userData.streakCount}일`, color: "#22C55E" },
                        { icon: BookOpen, label: "저장한 단어", value: userData.vocabCount, color: "#00F0FF" },
                        { icon: Trophy, label: "완료한 챌린지", value: userData.completedChallenges, color: "#7C3AED" },
                    ].map((stat, index) => (
                        <motion.div
                            key={stat.label}
                            initial={{ opacity: 0, y: 20 }}
                            animate={{ opacity: 1, y: 0 }}
                            transition={{ delay: 0.1 * (index + 1) }}
                            className="card p-6 text-center"
                        >
                            <stat.icon className="w-8 h-8 mx-auto mb-3" style={{ color: stat.color }} />
                            <p className="text-2xl font-bold text-white">{stat.value}</p>
                            <p className="text-gray-400 text-sm">{stat.label}</p>
                        </motion.div>
                    ))}
                </div>

                <div className="grid md:grid-cols-2 gap-8">
                    {/* 주간 활동 차트 */}
                    <motion.div
                        initial={{ opacity: 0, x: -20 }}
                        animate={{ opacity: 1, x: 0 }}
                        transition={{ delay: 0.3 }}
                        className="card p-6"
                    >
                        <div className="flex items-center justify-between mb-6">
                            <h2 className="text-lg font-bold text-white flex items-center gap-2">
                                <Calendar className="w-5 h-5 text-[#7C3AED]" />
                                이번 주 활동
                            </h2>
                            <TrendingUp className="w-5 h-5 text-[#22C55E]" />
                        </div>

                        <div className="flex items-end justify-between gap-2 h-32">
                            {weeklyProgress.map((day, index) => (
                                <div key={day.day} className="flex-1 flex flex-col items-center gap-2">
                                    <motion.div
                                        initial={{ height: 0 }}
                                        animate={{ height: `${(day.completed / 6) * 100}%` }}
                                        transition={{ delay: 0.1 * index, duration: 0.5 }}
                                        className="w-full bg-gradient-to-t from-[#FF007F] to-[#7C3AED] rounded-t-lg min-h-[4px]"
                                        style={{
                                            opacity: day.completed > 0 ? 1 : 0.2,
                                            minHeight: day.completed > 0 ? "16px" : "4px"
                                        }}
                                    />
                                    <span className={`text-xs ${index === 6 ? 'text-gray-600' : 'text-gray-400'}`}>
                                        {day.day}
                                    </span>
                                </div>
                            ))}
                        </div>
                    </motion.div>

                    {/* 최근 활동 */}
                    <motion.div
                        initial={{ opacity: 0, x: 20 }}
                        animate={{ opacity: 1, x: 0 }}
                        transition={{ delay: 0.4 }}
                        className="card p-6"
                    >
                        <h2 className="text-lg font-bold text-white flex items-center gap-2 mb-6">
                            <Play className="w-5 h-5 text-[#FF007F]" />
                            최근 활동
                        </h2>

                        <div className="space-y-4">
                            {recentActivity.map((activity) => (
                                <div
                                    key={activity.id}
                                    className="flex items-center justify-between py-3 border-b border-white/10 last:border-0"
                                >
                                    <div>
                                        <p className="text-white font-medium">{activity.content}</p>
                                        <p className="text-gray-400 text-sm">{activity.artist} • {activity.date}</p>
                                    </div>
                                    <span className="text-[#F59E0B] font-bold">+{activity.xp} XP</span>
                                </div>
                            ))}
                        </div>

                        <Link
                            href="/learn"
                            className="flex items-center justify-center gap-2 mt-6 text-[#7C3AED] hover:text-[#FF007F] transition-colors"
                        >
                            <span>더 보기</span>
                            <ChevronRight className="w-4 h-4" />
                        </Link>
                    </motion.div>
                </div>
            </div>
        </main>
    );
}
