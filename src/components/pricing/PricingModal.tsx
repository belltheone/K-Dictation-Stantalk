"use client";

import { motion, AnimatePresence } from "framer-motion";
import { useTranslations } from "next-intl";
import { X, Check, Zap, Trophy, Music, Ban } from "lucide-react";
import { Link } from "@/i18n/navigation";

interface PricingModalProps {
    isOpen: boolean;
    onClose: () => void;
}

// 가격 플랜 데이터
const plans = [
    {
        id: "free",
        name: "Free",
        price: "$0",
        period: "forever",
        features: [
            { text: "Basic challenges", included: true },
            { text: "5 plays per day", included: true },
            { text: "Ads between plays", included: true, isNegative: true },
            { text: "Leaderboard access", included: false },
            { text: "Gacha cards", included: false },
        ],
        buttonText: "Current Plan",
        buttonDisabled: true,
        highlighted: false,
    },
    {
        id: "pro",
        name: "Pro",
        price: "$4.99",
        period: "/month",
        features: [
            { text: "All challenges", included: true },
            { text: "Unlimited plays", included: true },
            { text: "Ad-free experience", included: true },
            { text: "Leaderboard access", included: true },
            { text: "Exclusive gacha cards", included: true },
        ],
        buttonText: "Upgrade to Pro",
        buttonDisabled: false,
        highlighted: true,
    },
];

// 가격 모달 컴포넌트
export function PricingModal({ isOpen, onClose }: PricingModalProps) {
    const t = useTranslations();

    // Lemon Squeezy Checkout URL
    const CHECKOUT_URL = "https://kdictation.lemonsqueezy.com/checkout/buy/2fa43084-cb65-433e-9a4b-e294f97f1e80";

    const handleUpgrade = () => {
        // Lemon Squeezy 결제 페이지로 리다이렉트
        window.open(CHECKOUT_URL, "_blank");
    };

    return (
        <AnimatePresence>
            {isOpen && (
                <>
                    <motion.div
                        initial={{ opacity: 0 }}
                        animate={{ opacity: 1 }}
                        exit={{ opacity: 0 }}
                        className="fixed inset-0 bg-black/80 backdrop-blur-sm z-50"
                        onClick={onClose}
                    />
                    <motion.div
                        initial={{ opacity: 0, scale: 0.95, y: 20 }}
                        animate={{ opacity: 1, scale: 1, y: 0 }}
                        exit={{ opacity: 0, scale: 0.95, y: 20 }}
                        className="fixed inset-0 z-50 flex items-center justify-center p-4 overflow-y-auto"
                    >
                        <div className="w-full max-w-3xl bg-zinc-900 rounded-2xl border border-zinc-800 p-6 md:p-8">
                            {/* 헤더 */}
                            <div className="flex items-center justify-between mb-8">
                                <div>
                                    <h2 className="text-2xl font-bold text-white">Choose Your Plan</h2>
                                    <p className="text-zinc-400 text-sm mt-1">Unlock the full K-Dictation experience</p>
                                </div>
                                <button
                                    onClick={onClose}
                                    className="p-2 rounded-full hover:bg-zinc-800 text-zinc-400"
                                >
                                    <X className="w-5 h-5" />
                                </button>
                            </div>

                            {/* 플랜 카드 */}
                            <div className="grid md:grid-cols-2 gap-4 md:gap-6">
                                {plans.map((plan) => (
                                    <div
                                        key={plan.id}
                                        className={`
                                            rounded-xl p-6 border
                                            ${plan.highlighted
                                                ? "border-rose-500/50 bg-gradient-to-b from-rose-500/10 to-violet-500/10"
                                                : "border-zinc-800 bg-zinc-800/50"
                                            }
                                        `}
                                    >
                                        {plan.highlighted && (
                                            <div className="text-xs font-medium text-rose-400 uppercase tracking-wider mb-2">
                                                ⭐ Most Popular
                                            </div>
                                        )}
                                        <h3 className="text-xl font-bold text-white mb-1">{plan.name}</h3>
                                        <div className="flex items-baseline gap-1 mb-6">
                                            <span className="text-3xl font-bold text-white">{plan.price}</span>
                                            <span className="text-zinc-500">{plan.period}</span>
                                        </div>

                                        <ul className="space-y-3 mb-6">
                                            {plan.features.map((feature, idx) => (
                                                <li key={idx} className="flex items-center gap-2 text-sm">
                                                    {feature.included ? (
                                                        feature.isNegative ? (
                                                            <Ban className="w-4 h-4 text-zinc-500" />
                                                        ) : (
                                                            <Check className="w-4 h-4 text-emerald-400" />
                                                        )
                                                    ) : (
                                                        <X className="w-4 h-4 text-zinc-600" />
                                                    )}
                                                    <span className={feature.included ? "text-zinc-300" : "text-zinc-600"}>
                                                        {feature.text}
                                                    </span>
                                                </li>
                                            ))}
                                        </ul>

                                        <button
                                            onClick={plan.highlighted ? handleUpgrade : undefined}
                                            disabled={plan.buttonDisabled}
                                            className={`
                                                w-full py-3 rounded-xl font-medium transition-colors
                                                ${plan.highlighted
                                                    ? "btn-primary"
                                                    : "bg-zinc-800 text-zinc-400 cursor-not-allowed"
                                                }
                                            `}
                                        >
                                            {plan.buttonText}
                                        </button>
                                    </div>
                                ))}
                            </div>

                            {/* Pro 혜택 */}
                            <div className="mt-8 p-4 rounded-xl bg-zinc-800/50 border border-zinc-700">
                                <h4 className="font-medium text-white mb-3">Pro Benefits Include:</h4>
                                <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                                    <div className="flex items-center gap-2 text-sm text-zinc-400">
                                        <Zap className="w-4 h-4 text-amber-400" />
                                        Unlimited XP
                                    </div>
                                    <div className="flex items-center gap-2 text-sm text-zinc-400">
                                        <Trophy className="w-4 h-4 text-amber-400" />
                                        Exclusive badges
                                    </div>
                                    <div className="flex items-center gap-2 text-sm text-zinc-400">
                                        <Music className="w-4 h-4 text-amber-400" />
                                        All artists
                                    </div>
                                    <div className="flex items-center gap-2 text-sm text-zinc-400">
                                        <Ban className="w-4 h-4 text-amber-400" />
                                        No ads
                                    </div>
                                </div>
                            </div>
                        </div>
                    </motion.div>
                </>
            )}
        </AnimatePresence>
    );
}
