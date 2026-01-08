"use client";

import { useState } from "react";
import { useTranslations } from "next-intl";
import { Share2, Copy, Check, X as XIcon } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

interface ShareModalProps {
    isOpen: boolean;
    onClose: () => void;
    title: string;
    xp: number;
    streak: number;
}

// 공유 모달 컴포넌트
export function ShareModal({ isOpen, onClose, title, xp, streak }: ShareModalProps) {
    const t = useTranslations();
    const [copied, setCopied] = useState(false);

    const shareUrl = typeof window !== 'undefined' ? window.location.href : '';
    const shareText = `🎤 K-Dictation Progress!\n📊 ${xp} XP earned\n🔥 ${streak} day streak\n\nLearn Korean through K-Pop!\n${shareUrl}`;

    const handleCopy = async () => {
        try {
            await navigator.clipboard.writeText(shareText);
            setCopied(true);
            setTimeout(() => setCopied(false), 2000);
        } catch (err) {
            console.error('Failed to copy:', err);
        }
    };

    const handleShare = async (platform: string) => {
        const encodedText = encodeURIComponent(shareText);
        const encodedUrl = encodeURIComponent(shareUrl);

        const shareUrls: Record<string, string> = {
            twitter: `https://twitter.com/intent/tweet?text=${encodedText}`,
            facebook: `https://www.facebook.com/sharer/sharer.php?u=${encodedUrl}`,
        };

        if (shareUrls[platform]) {
            window.open(shareUrls[platform], '_blank', 'width=600,height=400');
        }
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
                        initial={{ opacity: 0, scale: 0.9, y: 20 }}
                        animate={{ opacity: 1, scale: 1, y: 0 }}
                        exit={{ opacity: 0, scale: 0.9, y: 20 }}
                        className="fixed inset-0 z-50 flex items-center justify-center p-4"
                    >
                        <div className="card p-6 w-full max-w-sm bg-zinc-900 border border-zinc-800">
                            <div className="flex items-center justify-between mb-6">
                                <h2 className="text-xl font-bold text-white flex items-center gap-2">
                                    <Share2 className="w-5 h-5 text-rose-400" />
                                    {t("share.title")}
                                </h2>
                                <button
                                    onClick={onClose}
                                    className="p-1 rounded-full hover:bg-zinc-800 text-zinc-400"
                                >
                                    <XIcon className="w-5 h-5" />
                                </button>
                            </div>

                            {/* 공유 카드 프리뷰 */}
                            <div className="card p-4 mb-6 bg-gradient-to-br from-rose-500/10 to-violet-500/10 border border-rose-500/20">
                                <p className="font-bold text-white mb-2">🎤 {title}</p>
                                <div className="flex items-center gap-4 text-sm">
                                    <span className="text-amber-400">⭐ {xp} XP</span>
                                    <span className="text-emerald-400">🔥 {streak} days</span>
                                </div>
                            </div>

                            {/* 공유 버튼들 */}
                            <div className="space-y-3">
                                <button
                                    onClick={handleCopy}
                                    className="w-full flex items-center justify-center gap-2 py-3 rounded-xl bg-zinc-800 hover:bg-zinc-700 transition-colors text-white font-medium"
                                >
                                    {copied ? (
                                        <>
                                            <Check className="w-5 h-5 text-emerald-400" />
                                            {t("share.copied")}
                                        </>
                                    ) : (
                                        <>
                                            <Copy className="w-5 h-5" />
                                            {t("share.copy")}
                                        </>
                                    )}
                                </button>

                                <div className="flex gap-3">
                                    <button
                                        onClick={() => handleShare('twitter')}
                                        className="flex-1 py-3 rounded-xl bg-black hover:bg-zinc-900 transition-colors text-white font-medium"
                                    >
                                        𝕏 Twitter
                                    </button>
                                    <button
                                        onClick={() => handleShare('facebook')}
                                        className="flex-1 py-3 rounded-xl bg-blue-600 hover:bg-blue-700 transition-colors text-white font-medium"
                                    >
                                        Facebook
                                    </button>
                                </div>
                            </div>
                        </div>
                    </motion.div>
                </>
            )}
        </AnimatePresence>
    );
}
