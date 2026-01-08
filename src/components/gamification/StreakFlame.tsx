"use client";

// 스트릭 불꽃 애니메이션 컴포넌트
import { motion } from "framer-motion";
import { Flame } from "lucide-react";

interface StreakFlameProps {
    count: number;
    size?: "sm" | "md" | "lg";
}

export function StreakFlame({ count, size = "md" }: StreakFlameProps) {
    const sizeClasses = {
        sm: "w-4 h-4",
        md: "w-6 h-6",
        lg: "w-8 h-8",
    };

    const textSizes = {
        sm: "text-sm",
        md: "text-base",
        lg: "text-xl",
    };

    // 스트릭 수에 따른 색상 강도
    const getFlameColor = () => {
        if (count >= 30) return "text-red-500"; // 30일+ 붉은 불꽃
        if (count >= 14) return "text-orange-500"; // 2주+
        if (count >= 7) return "text-yellow-500"; // 1주+
        return "text-[#22C55E]"; // 기본 녹색
    };

    return (
        <div className="flex items-center gap-1">
            <motion.div
                animate={{
                    scale: [1, 1.2, 1],
                    y: [0, -2, 0],
                }}
                transition={{
                    duration: 0.8,
                    repeat: Infinity,
                    ease: "easeInOut",
                }}
                className={getFlameColor()}
            >
                <Flame className={sizeClasses[size]} />
            </motion.div>
            <span className={`font-bold ${textSizes[size]} ${getFlameColor()}`}>
                {count}
            </span>
        </div>
    );
}

// 스트릭 축하 모달
interface StreakCelebrationProps {
    isOpen: boolean;
    onClose: () => void;
    milestone: number; // 7, 14, 30, 100 등
}

export function StreakCelebration({ isOpen, onClose, milestone }: StreakCelebrationProps) {
    if (!isOpen) return null;

    const getEmoji = () => {
        if (milestone >= 100) return "🏆";
        if (milestone >= 30) return "🔥";
        if (milestone >= 14) return "⭐";
        if (milestone >= 7) return "🌟";
        return "🎉";
    };

    const getMessage = () => {
        if (milestone >= 100) return "100 Day Legend!";
        if (milestone >= 30) return "30 Days On Fire!";
        if (milestone >= 14) return "2 Week Warrior!";
        if (milestone >= 7) return "1 Week Streak!";
        return "Amazing!";
    };

    return (
        <motion.div
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            className="fixed inset-0 bg-black/80 flex items-center justify-center z-50 p-4"
            onClick={onClose}
        >
            <motion.div
                initial={{ scale: 0.5, y: 50 }}
                animate={{ scale: 1, y: 0 }}
                transition={{ type: "spring", damping: 15 }}
                className="card p-8 text-center max-w-sm"
                onClick={(e) => e.stopPropagation()}
            >
                <motion.div
                    animate={{
                        scale: [1, 1.3, 1],
                        rotate: [0, 10, -10, 0],
                    }}
                    transition={{ duration: 0.6, repeat: 3 }}
                    className="text-6xl mb-4"
                >
                    {getEmoji()}
                </motion.div>

                <h2 className="text-2xl font-bold text-white mb-2">{getMessage()}</h2>
                <p className="text-gray-400 mb-6">
                    You've maintained a <span className="text-[#FF007F] font-bold">{milestone}-day</span> streak!
                    Keep learning!
                </p>

                <div className="flex items-center justify-center gap-2 mb-6">
                    {Array.from({ length: Math.min(milestone, 7) }).map((_, i) => (
                        <motion.div
                            key={i}
                            initial={{ scale: 0 }}
                            animate={{ scale: 1 }}
                            transition={{ delay: i * 0.1 }}
                        >
                            <Flame className="w-6 h-6 text-orange-500" />
                        </motion.div>
                    ))}
                </div>

                <button
                    onClick={onClose}
                    className="btn-primary px-8 py-3 text-white font-bold"
                >
                    Continue Learning!
                </button>
            </motion.div>
        </motion.div>
    );
}
