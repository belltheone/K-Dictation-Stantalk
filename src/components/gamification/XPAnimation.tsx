"use client";

// XP 획득 애니메이션 컴포넌트
import { motion, AnimatePresence } from "framer-motion";
import { Star } from "lucide-react";

interface XPGainAnimationProps {
    amount: number;
    show: boolean;
    onComplete?: () => void;
}

export function XPGainAnimation({ amount, show, onComplete }: XPGainAnimationProps) {
    return (
        <AnimatePresence>
            {show && (
                <motion.div
                    initial={{ opacity: 0, y: 20, scale: 0.8 }}
                    animate={{ opacity: 1, y: 0, scale: 1 }}
                    exit={{ opacity: 0, y: -30, scale: 1.2 }}
                    transition={{ duration: 0.5 }}
                    onAnimationComplete={() => {
                        setTimeout(() => onComplete?.(), 500);
                    }}
                    className="fixed top-1/3 left-1/2 -translate-x-1/2 z-50 pointer-events-none"
                >
                    <div className="flex items-center gap-2 px-6 py-3 bg-gradient-to-r from-[#F59E0B] to-[#FF007F] rounded-full shadow-lg">
                        <Star className="w-6 h-6 text-white fill-white" />
                        <span className="text-2xl font-bold text-white">+{amount} XP</span>
                    </div>

                    {/* 반짝이는 파티클 */}
                    {Array.from({ length: 8 }).map((_, i) => (
                        <motion.div
                            key={i}
                            initial={{
                                x: 0,
                                y: 0,
                                opacity: 1,
                            }}
                            animate={{
                                x: (Math.random() - 0.5) * 150,
                                y: (Math.random() - 0.5) * 150,
                                opacity: 0,
                            }}
                            transition={{ duration: 0.8 }}
                            className="absolute top-1/2 left-1/2"
                        >
                            <Star className="w-3 h-3 text-yellow-400 fill-yellow-400" />
                        </motion.div>
                    ))}
                </motion.div>
            )}
        </AnimatePresence>
    );
}

// 레벨업 축하 모달
interface LevelUpModalProps {
    isOpen: boolean;
    onClose: () => void;
    newLevel: number;
}

export function LevelUpModal({ isOpen, onClose, newLevel }: LevelUpModalProps) {
    if (!isOpen) return null;

    return (
        <motion.div
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            className="fixed inset-0 bg-black/80 flex items-center justify-center z-50 p-4"
            onClick={onClose}
        >
            <motion.div
                initial={{ scale: 0, rotate: -180 }}
                animate={{ scale: 1, rotate: 0 }}
                transition={{ type: "spring", damping: 15 }}
                className="card p-8 text-center max-w-sm"
                onClick={(e) => e.stopPropagation()}
            >
                {/* 레벨 배지 */}
                <motion.div
                    animate={{
                        boxShadow: [
                            "0 0 20px rgba(124, 58, 237, 0.5)",
                            "0 0 40px rgba(255, 0, 127, 0.8)",
                            "0 0 20px rgba(124, 58, 237, 0.5)",
                        ],
                    }}
                    transition={{ duration: 2, repeat: Infinity }}
                    className="w-24 h-24 mx-auto mb-6 rounded-full bg-gradient-to-br from-[#FF007F] to-[#7C3AED] flex items-center justify-center"
                >
                    <span className="text-4xl font-bold text-white">{newLevel}</span>
                </motion.div>

                <motion.h2
                    initial={{ y: 20, opacity: 0 }}
                    animate={{ y: 0, opacity: 1 }}
                    transition={{ delay: 0.3 }}
                    className="text-3xl font-bold text-white mb-2"
                >
                    Level Up! 🎉
                </motion.h2>

                <motion.p
                    initial={{ y: 20, opacity: 0 }}
                    animate={{ y: 0, opacity: 1 }}
                    transition={{ delay: 0.4 }}
                    className="text-gray-400 mb-6"
                >
                    You've reached <span className="text-[#FF007F] font-bold">Level {newLevel}</span>!
                    Keep up the amazing work!
                </motion.p>

                <motion.button
                    initial={{ y: 20, opacity: 0 }}
                    animate={{ y: 0, opacity: 1 }}
                    transition={{ delay: 0.5 }}
                    onClick={onClose}
                    className="btn-primary px-8 py-3 text-white font-bold"
                >
                    Awesome!
                </motion.button>
            </motion.div>
        </motion.div>
    );
}
