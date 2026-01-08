"use client";

import { useState } from "react";
import { motion } from "framer-motion";
import { Link } from "@/i18n/navigation";
import { ChevronLeft, Star, Sparkles, Package } from "lucide-react";
import { LanguageSwitcher } from "@/components/ui/LanguageSwitcher";
import { GachaModal, GachaButton, getRandomCard } from "@/components/gamification/GachaModal";
import { useGamificationStore } from "@/lib/stores/gamification";

// 카드 뽑기 비용
const GACHA_COST = 100;

// Gacha 페이지 - 카드 수집
export default function GachaPage() {
    const [isGachaOpen, setIsGachaOpen] = useState(false);
    const [currentCard, setCurrentCard] = useState<ReturnType<typeof getRandomCard> | null>(null);

    const { xp, collectedCards, totalDraws, spendXP, addCard } = useGamificationStore();

    // 카드 뽑기 핸들러
    const handleDraw = () => {
        if (spendXP(GACHA_COST)) {
            const newCard = getRandomCard();
            setCurrentCard(newCard);
            addCard({
                ...newCard,
                collectedAt: new Date().toISOString(),
            });
            setIsGachaOpen(true);
        }
    };

    // 등급별 카드 수 계산
    const cardsByRarity = {
        legendary: collectedCards.filter(c => c.rarity === "legendary").length,
        epic: collectedCards.filter(c => c.rarity === "epic").length,
        rare: collectedCards.filter(c => c.rarity === "rare").length,
        common: collectedCards.filter(c => c.rarity === "common").length,
    };

    return (
        <main className="min-h-screen py-6 md:py-8 px-4 md:px-6">
            <div className="max-w-4xl mx-auto">
                {/* 헤더 */}
                <header className="flex items-center justify-between mb-8">
                    <div className="flex items-center gap-4">
                        <Link href="/learn" className="text-gray-400 hover:text-white">
                            <ChevronLeft className="w-6 h-6" />
                        </Link>
                        <h1 className="text-2xl md:text-3xl font-bold text-white">
                            Card Collection 🎴
                        </h1>
                    </div>

                    <div className="flex items-center gap-4">
                        <div className="flex items-center gap-2 text-[#F59E0B]">
                            <Star className="w-5 h-5" />
                            <span className="font-bold">{xp} XP</span>
                        </div>
                        <LanguageSwitcher />
                    </div>
                </header>

                {/* 통계 카드 */}
                <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-8">
                    <div className="card p-4 text-center">
                        <p className="text-2xl font-bold text-yellow-500">{cardsByRarity.legendary}</p>
                        <p className="text-gray-400 text-sm">Legendary</p>
                    </div>
                    <div className="card p-4 text-center">
                        <p className="text-2xl font-bold text-purple-500">{cardsByRarity.epic}</p>
                        <p className="text-gray-400 text-sm">Epic</p>
                    </div>
                    <div className="card p-4 text-center">
                        <p className="text-2xl font-bold text-blue-500">{cardsByRarity.rare}</p>
                        <p className="text-gray-400 text-sm">Rare</p>
                    </div>
                    <div className="card p-4 text-center">
                        <p className="text-2xl font-bold text-gray-400">{cardsByRarity.common}</p>
                        <p className="text-gray-400 text-sm">Common</p>
                    </div>
                </div>

                {/* Gacha 영역 */}
                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    className="card p-8 md:p-12 text-center mb-8"
                >
                    <motion.div
                        animate={{
                            scale: [1, 1.05, 1],
                        }}
                        transition={{ duration: 2, repeat: Infinity }}
                        className="w-24 h-24 mx-auto mb-6 rounded-full bg-gradient-to-br from-[#FF007F] to-[#7C3AED] flex items-center justify-center"
                    >
                        <Sparkles className="w-12 h-12 text-white" />
                    </motion.div>

                    <h2 className="text-2xl font-bold text-white mb-2">Draw Artist Cards</h2>
                    <p className="text-gray-400 mb-6">
                        Spend XP to collect exclusive artist cards!
                        <br />
                        <span className="text-sm">Legendary: 3% • Epic: 12% • Rare: 25% • Common: 60%</span>
                    </p>

                    <GachaButton
                        onClick={handleDraw}
                        disabled={xp < GACHA_COST}
                        cost={GACHA_COST}
                    />

                    {xp < GACHA_COST && (
                        <p className="text-[#EF4444] text-sm mt-4">
                            Not enough XP! Earn more by completing dictation challenges.
                        </p>
                    )}

                    <p className="text-gray-500 text-sm mt-6">
                        Total Draws: {totalDraws}
                    </p>
                </motion.div>

                {/* 컬렉션 */}
                {collectedCards.length > 0 && (
                    <motion.div
                        initial={{ opacity: 0 }}
                        animate={{ opacity: 1 }}
                        className="card p-6 md:p-8"
                    >
                        <div className="flex items-center gap-2 mb-6">
                            <Package className="w-6 h-6 text-[#7C3AED]" />
                            <h2 className="text-xl font-bold text-white">Your Collection</h2>
                        </div>

                        <div className="grid grid-cols-4 md:grid-cols-6 gap-3">
                            {collectedCards.slice().reverse().map((card) => (
                                <motion.div
                                    key={card.id}
                                    initial={{ scale: 0 }}
                                    animate={{ scale: 1 }}
                                    whileHover={{ scale: 1.1 }}
                                    className={`aspect-[3/4] rounded-lg flex items-center justify-center text-3xl ${card.rarity === "legendary" ? "bg-gradient-to-br from-yellow-400 to-orange-500 shadow-lg shadow-yellow-500/30" :
                                            card.rarity === "epic" ? "bg-gradient-to-br from-purple-400 to-purple-600" :
                                                card.rarity === "rare" ? "bg-gradient-to-br from-blue-400 to-blue-600" :
                                                    "bg-gradient-to-br from-gray-400 to-gray-600"
                                        }`}
                                >
                                    {card.artistEmoji}
                                </motion.div>
                            ))}
                        </div>
                    </motion.div>
                )}

                {/* Gacha 모달 */}
                <GachaModal
                    isOpen={isGachaOpen}
                    onClose={() => setIsGachaOpen(false)}
                    card={currentCard}
                />
            </div>
        </main>
    );
}
