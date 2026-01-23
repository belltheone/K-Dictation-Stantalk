"use client";

import { useState, useEffect } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { Download, X } from "lucide-react";

interface BeforeInstallPromptEvent extends Event {
    readonly platforms: string[];
    readonly userChoice: Promise<{
        outcome: "accepted" | "dismissed";
        platform: string;
    }>;
    prompt(): Promise<void>;
}

/**
 * PWA 설치 유도 배너 컴포넌트
 * 브라우저가 설치 가능 상태일 때만 표시됩니다.
 */
export function InstallPrompt() {
    const [deferredPrompt, setDeferredPrompt] = useState<BeforeInstallPromptEvent | null>(null);
    const [showBanner, setShowBanner] = useState(false);
    const [isDismissed, setIsDismissed] = useState(false);

    useEffect(() => {
        // 이미 설치된 경우 또는 이전에 닫은 경우 표시하지 않음
        const dismissed = sessionStorage.getItem("pwa_install_dismissed");
        if (dismissed) {
            setIsDismissed(true);
            return;
        }

        // 설치 가능 이벤트 감지
        const handler = (e: Event) => {
            e.preventDefault();
            setDeferredPrompt(e as BeforeInstallPromptEvent);
            setShowBanner(true);
        };

        window.addEventListener("beforeinstallprompt", handler);

        // Standalone 모드인지 확인 (이미 설치됨)
        if (window.matchMedia("(display-mode: standalone)").matches) {
            setShowBanner(false);
        }

        return () => {
            window.removeEventListener("beforeinstallprompt", handler);
        };
    }, []);

    const handleInstall = async () => {
        if (!deferredPrompt) return;

        // 설치 프롬프트 표시
        await deferredPrompt.prompt();

        // 사용자 선택 대기
        const { outcome } = await deferredPrompt.userChoice;

        if (outcome === "accepted") {
            console.log("PWA 설치 완료");
        }

        // 프롬프트는 한 번만 사용 가능
        setDeferredPrompt(null);
        setShowBanner(false);
    };

    const handleDismiss = () => {
        setShowBanner(false);
        setIsDismissed(true);
        sessionStorage.setItem("pwa_install_dismissed", "true");
    };

    if (isDismissed || !showBanner) return null;

    return (
        <AnimatePresence>
            <motion.div
                initial={{ y: 100, opacity: 0 }}
                animate={{ y: 0, opacity: 1 }}
                exit={{ y: 100, opacity: 0 }}
                transition={{ type: "spring", damping: 20 }}
                className="fixed bottom-4 left-4 right-4 md:left-auto md:right-6 md:max-w-sm z-50"
            >
                <div className="bg-zinc-900 border border-zinc-800 rounded-2xl p-4 shadow-2xl shadow-black/50">
                    <div className="flex items-start gap-3">
                        {/* 아이콘 */}
                        <div className="flex-shrink-0 w-12 h-12 rounded-xl bg-gradient-to-br from-rose-500 to-violet-600 flex items-center justify-center">
                            <Download className="w-6 h-6 text-white" />
                        </div>

                        {/* 텍스트 */}
                        <div className="flex-1 min-w-0">
                            <h3 className="font-semibold text-white text-sm">
                                K-Dictation 앱 설치
                            </h3>
                            <p className="text-xs text-zinc-400 mt-0.5">
                                홈 화면에 추가하여 빠르게 접속하세요
                            </p>
                        </div>

                        {/* 닫기 버튼 */}
                        <button
                            onClick={handleDismiss}
                            className="flex-shrink-0 p-1 text-zinc-500 hover:text-zinc-300 transition-colors"
                            aria-label="닫기"
                        >
                            <X className="w-4 h-4" />
                        </button>
                    </div>

                    {/* 설치 버튼 */}
                    <button
                        onClick={handleInstall}
                        className="w-full mt-3 py-2.5 bg-gradient-to-r from-rose-600 to-violet-600 hover:from-rose-500 hover:to-violet-500 rounded-xl text-white text-sm font-semibold transition-all"
                    >
                        앱 설치하기
                    </button>
                </div>
            </motion.div>
        </AnimatePresence>
    );
}
