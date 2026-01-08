"use client";

// Gacha (카드 수집) 애니메이션 컴포넌트
import { useState } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { X, Sparkles, Star } from "lucide-react";

// 카드 등급 타입
type CardRarity = "common" | "rare" | "epic" | "legendary";

// 카드 데이터 인터페이스
interface ArtistCard {
    id: string;
    artistName: string;
    artistEmoji: string;
    rarity: CardRarity;
    imageUrl?: string;
}

// 등급별 스타일
const rarityStyles: Record<CardRarity, { gradient: string; glow: string; label: string }> = {
    common: {
        gradient: "from-gray-400 to-gray-600",
        glow: "shadow-gray-500/50",
        label: "Common",
    },
    rare: {
        gradient: "from-blue-400 to-blue-600",
        glow: "shadow-blue-500/50",
        label: "Rare",
    },
    epic: {
        gradient: "from-purple-400 to-purple-600",
        glow: "shadow-purple-500/50",
        label: "Epic",
    },
    legendary: {
        gradient: "from-yellow-400 to-orange-500",
        glow: "shadow-yellow-500/50",
        label: "★ Legendary ★",
    },
};

interface GachaModalProps {
    isOpen: boolean;
    onClose: () => void;
    card: ArtistCard | null;
}

// Gacha 결과 모달
export function GachaModal({ isOpen, onClose, card }: GachaModalProps) {
    const [isRevealed, setIsRevealed] = useState(false);

    if (!card) return null;

    const style = rarityStyles[card.rarity];

    const handleReveal = () => {
        setIsRevealed(true);
    };

    const handleClose = () => {
        setIsRevealed(false);
        onClose();
    };

    return (
        <AnimatePresence>
            {isOpen && (
                <motion.div
                    initial={{ opacity: 0 }}
                    animate={{ opacity: 1 }}
                    exit={{ opacity: 0 }}
                    className="fixed inset-0 bg-black/90 flex items-center justify-center z-50 p-4"
                    onClick={isRevealed ? handleClose : undefined}
                >
                    {/* 닫기 버튼 */}
                    <button
                        onClick={handleClose}
                        className="absolute top-4 right-4 p-2 text-gray-400 hover:text-white z-10"
                    >
                        <X className="w-6 h-6" />
                    </button>

                    {!isRevealed ? (
                        // 카드 뒷면 - 클릭하여 공개
                        <motion.div
                            initial={{ scale: 0.8, rotateY: 180 }}
                            animate={{ scale: 1, rotateY: 180 }}
                            onClick={handleReveal}
                            className="cursor-pointer"
                        >
                            <div className="w-64 h-96 md:w-72 md:h-[420px] bg-gradient-to-br from-[#FF007F] to-[#7C3AED] rounded-2xl flex items-center justify-center relative overflow-hidden shadow-2xl">
                                {/* 빛나는 효과 */}
                                <motion.div
                                    animate={{
                                        rotate: [0, 360],
                                    }}
                                    transition={{
                                        duration: 3,
                                        repeat: Infinity,
                                        ease: "linear",
                                    }}
                                    className="absolute inset-0 bg-gradient-to-tr from-white/20 via-transparent to-white/10"
                                />

                                <div className="text-center">
                                    <motion.div
                                        animate={{ scale: [1, 1.2, 1] }}
                                        transition={{ duration: 1.5, repeat: Infinity }}
                                    >
                                        <Sparkles className="w-16 h-16 text-white mx-auto mb-4" />
                                    </motion.div>
                                    <p className="text-white text-lg font-bold">Tap to Reveal!</p>
                                </div>
                            </div>
                        </motion.div>
                    ) : (
                        // 카드 앞면 - 공개됨
                        <motion.div
                            initial={{ rotateY: 90, scale: 0.8 }}
                            animate={{ rotateY: 0, scale: 1 }}
                            transition={{ type: "spring", damping: 15 }}
                        >
                            <div className={`w-64 h-96 md:w-72 md:h-[420px] bg-gradient-to-br ${style.gradient} rounded-2xl relative overflow-hidden shadow-2xl ${style.glow}`}>
                                {/* 레전더리 반짝임 효과 */}
                                {card.rarity === "legendary" && (
                                    <motion.div
                                        animate={{
                                            opacity: [0.3, 0.7, 0.3],
                                        }}
                                        transition={{ duration: 2, repeat: Infinity }}
                                        className="absolute inset-0 bg-gradient-to-tr from-yellow-200/30 via-transparent to-yellow-200/30"
                                    />
                                )}

                                {/* 상단 등급 배지 */}
                                <div className="absolute top-4 left-0 right-0 text-center">
                                    <span className="px-4 py-1 bg-black/30 rounded-full text-white text-sm font-bold backdrop-blur-sm">
                                        {style.label}
                                    </span>
                                </div>

                                {/* 중앙 아티스트 이모지 */}
                                <div className="absolute inset-0 flex items-center justify-center">
                                    <motion.div
                                        initial={{ scale: 0 }}
                                        animate={{ scale: 1 }}
                                        transition={{ delay: 0.3, type: "spring" }}
                                        className="text-8xl md:text-9xl"
                                    >
                                        {card.artistEmoji}
                                    </motion.div>
                                </div>

                                {/* 하단 아티스트 이름 */}
                                <div className="absolute bottom-0 left-0 right-0 p-6 bg-gradient-to-t from-black/80 to-transparent">
                                    <motion.div
                                        initial={{ y: 20, opacity: 0 }}
                                        animate={{ y: 0, opacity: 1 }}
                                        transition={{ delay: 0.5 }}
                                        className="text-center"
                                    >
                                        <h3 className="text-2xl font-bold text-white mb-1">{card.artistName}</h3>
                                        <div className="flex items-center justify-center gap-1">
                                            {Array.from({ length: card.rarity === "legendary" ? 5 : card.rarity === "epic" ? 4 : card.rarity === "rare" ? 3 : 2 }).map((_, i) => (
                                                <Star key={i} className="w-4 h-4 text-yellow-400 fill-yellow-400" />
                                            ))}
                                        </div>
                                    </motion.div>
                                </div>

                                {/* 별 파티클 */}
                                {card.rarity === "legendary" && (
                                    <div className="absolute inset-0 pointer-events-none">
                                        {Array.from({ length: 20 }).map((_, i) => (
                                            <motion.div
                                                key={i}
                                                initial={{
                                                    x: Math.random() * 100 - 50 + "%",
                                                    y: "100%",
                                                    opacity: 0,
                                                }}
                                                animate={{
                                                    y: "-100%",
                                                    opacity: [0, 1, 0],
                                                }}
                                                transition={{
                                                    duration: 2 + Math.random() * 2,
                                                    repeat: Infinity,
                                                    delay: Math.random() * 2,
                                                }}
                                                className="absolute"
                                                style={{ left: `${Math.random() * 100}%` }}
                                            >
                                                <Star className="w-3 h-3 text-yellow-300 fill-yellow-300" />
                                            </motion.div>
                                        ))}
                                    </div>
                                )}
                            </div>

                            {/* NEW 배지 */}
                            <motion.div
                                initial={{ scale: 0, rotate: -15 }}
                                animate={{ scale: 1, rotate: -15 }}
                                transition={{ delay: 0.7, type: "spring" }}
                                className="absolute -top-4 -right-4 bg-[#FF007F] text-white px-4 py-2 rounded-full font-bold shadow-lg"
                            >
                                NEW!
                            </motion.div>
                        </motion.div>
                    )}

                    {/* 안내 텍스트 */}
                    {isRevealed && (
                        <motion.p
                            initial={{ opacity: 0, y: 20 }}
                            animate={{ opacity: 1, y: 0 }}
                            transition={{ delay: 1 }}
                            className="absolute bottom-8 text-gray-400 text-sm"
                        >
                            Tap anywhere to close
                        </motion.p>
                    )}
                </motion.div>
            )}
        </AnimatePresence>
    );
}

// Gacha 버튼 컴포넌트
interface GachaButtonProps {
    onClick: () => void;
    disabled?: boolean;
    cost?: number;
}

export function GachaButton({ onClick, disabled, cost = 100 }: GachaButtonProps) {
    return (
        <motion.button
            whileHover={{ scale: disabled ? 1 : 1.05 }}
            whileTap={{ scale: disabled ? 1 : 0.95 }}
            onClick={onClick}
            disabled={disabled}
            className={`relative px-8 py-4 rounded-2xl font-bold text-white overflow-hidden ${disabled
                    ? "bg-gray-600 cursor-not-allowed"
                    : "bg-gradient-to-r from-[#FF007F] to-[#7C3AED]"
                }`}
        >
            {/* 빛나는 효과 */}
            {!disabled && (
                <motion.div
                    animate={{
                        x: ["-100%", "200%"],
                    }}
                    transition={{
                        duration: 2,
                        repeat: Infinity,
                        repeatDelay: 1,
                    }}
                    className="absolute inset-0 bg-gradient-to-r from-transparent via-white/30 to-transparent skew-x-12"
                />
            )}

            <span className="relative flex items-center gap-2">
                <Sparkles className="w-5 h-5" />
                <span>Draw Card</span>
                <span className="text-white/70">({cost} XP)</span>
            </span>
        </motion.button>
    );
}

// 랜덤 카드 생성 (가중치 적용)
export function getRandomCard(): ArtistCard {
    const artists = [
        { name: "BTS", emoji: "💜" },
        { name: "NewJeans", emoji: "🐰" },
        { name: "BLACKPINK", emoji: "💖" },
        { name: "Stray Kids", emoji: "🖤" },
        { name: "SEVENTEEN", emoji: "💎" },
        { name: "IVE", emoji: "🌟" },
        { name: "aespa", emoji: "🦋" },
        { name: "LE SSERAFIM", emoji: "🔥" },
    ];

    // 등급 확률: common 60%, rare 25%, epic 12%, legendary 3%
    const random = Math.random() * 100;
    let rarity: CardRarity;

    if (random < 3) {
        rarity = "legendary";
    } else if (random < 15) {
        rarity = "epic";
    } else if (random < 40) {
        rarity = "rare";
    } else {
        rarity = "common";
    }

    const artist = artists[Math.floor(Math.random() * artists.length)];

    return {
        id: `${artist.name}-${Date.now()}`,
        artistName: artist.name,
        artistEmoji: artist.emoji,
        rarity,
    };
}
