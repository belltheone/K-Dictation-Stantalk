"use client";

import { useState, useEffect, useRef } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { X, Clock } from "lucide-react";

// AdSense 타입 정의
declare global {
    interface Window {
        adsbygoogle: unknown[];
    }
}

interface InterstitialAdProps {
    isOpen: boolean;
    onClose: () => void;
    countdownSeconds?: number;
}

// 전면 광고 모달 컴포넌트 (무료 유저용) - 실제 AdSense 연동
export function InterstitialAd({ isOpen, onClose, countdownSeconds = 5 }: InterstitialAdProps) {
    const [countdown, setCountdown] = useState(countdownSeconds);
    const [canClose, setCanClose] = useState(false);
    const [adLoaded, setAdLoaded] = useState(false);
    const [adError, setAdError] = useState(false);
    const adContainerRef = useRef<HTMLDivElement>(null);

    useEffect(() => {
        if (!isOpen) {
            setCountdown(countdownSeconds);
            setCanClose(false);
            setAdLoaded(false);
            setAdError(false);
            return;
        }

        // AdSense 광고 로드 시도
        try {
            if (typeof window !== "undefined" && window.adsbygoogle) {
                (window.adsbygoogle = window.adsbygoogle || []).push({});
                setAdLoaded(true);
            }
        } catch (e) {
            console.error("AdSense error:", e);
            setAdError(true);
        }

        // 카운트다운 시작
        if (countdown > 0) {
            const timer = setTimeout(() => setCountdown(countdown - 1), 1000);
            return () => clearTimeout(timer);
        } else {
            setCanClose(true);
        }
    }, [isOpen, countdown, countdownSeconds]);

    // 광고 로드 실패 시 3초 후 자동 닫기
    useEffect(() => {
        if (adError && isOpen) {
            const timer = setTimeout(() => {
                onClose();
            }, 3000);
            return () => clearTimeout(timer);
        }
    }, [adError, isOpen, onClose]);

    return (
        <AnimatePresence>
            {isOpen && (
                <motion.div
                    initial={{ opacity: 0 }}
                    animate={{ opacity: 1 }}
                    exit={{ opacity: 0 }}
                    className="fixed inset-0 z-[9999] bg-black flex items-center justify-center"
                >
                    {/* 닫기 버튼 (카운트다운 후 표시) */}
                    <div className="absolute top-4 right-4">
                        {canClose ? (
                            <motion.button
                                initial={{ scale: 0 }}
                                animate={{ scale: 1 }}
                                onClick={onClose}
                                className="p-2 rounded-full bg-white/10 hover:bg-white/20 text-white transition-colors"
                            >
                                <X className="w-6 h-6" />
                            </motion.button>
                        ) : (
                            <div className="flex items-center gap-2 px-3 py-2 rounded-full bg-white/10 text-white text-sm">
                                <Clock className="w-4 h-4" />
                                <span>{countdown}s</span>
                            </div>
                        )}
                    </div>

                    {/* 광고 콘텐츠 영역 */}
                    <div className="w-full max-w-lg mx-4">
                        {/* AdSense 광고 슬롯 */}
                        <div
                            ref={adContainerRef}
                            className="aspect-video bg-zinc-900 rounded-2xl flex items-center justify-center border border-zinc-800 overflow-hidden"
                        >
                            {adError ? (
                                // 광고 로드 실패 시 Pro 업그레이드 대체 화면
                                <div className="text-center p-8">
                                    <div className="text-4xl mb-4">🎵</div>
                                    <h3 className="text-xl font-bold text-white mb-2">
                                        K-Dictation Pro
                                    </h3>
                                    <p className="text-zinc-400 text-sm mb-4">
                                        광고 없이 학습하고 더 많은 기능을 즐기세요!
                                    </p>
                                    <button className="px-6 py-2 text-sm font-medium bg-gradient-to-r from-rose-500 to-violet-600 text-white rounded-xl">
                                        Pro로 업그레이드
                                    </button>
                                </div>
                            ) : (
                                // 실제 AdSense 광고
                                <ins
                                    className="adsbygoogle"
                                    style={{
                                        display: "block",
                                        width: "100%",
                                        height: "100%",
                                    }}
                                    data-ad-client="ca-pub-5965391983551048"
                                    data-ad-slot="YOUR_AD_SLOT_ID" // TODO: 실제 광고 슬롯 ID로 교체
                                    data-ad-format="auto"
                                    data-full-width-responsive="true"
                                />
                            )}
                        </div>

                        {/* 광고 라벨 */}
                        <p className="text-center text-zinc-600 text-xs mt-4">
                            Advertisement
                        </p>
                    </div>
                </motion.div>
            )}
        </AnimatePresence>
    );
}

