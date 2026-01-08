"use client";

import Script from "next/script";

// Google Analytics 4 측정 ID
const GA_MEASUREMENT_ID = "G-H26FJFTJ58";

// GA4 Analytics 컴포넌트
export function GoogleAnalytics() {
    return (
        <>
            <Script
                src={`https://www.googletagmanager.com/gtag/js?id=${GA_MEASUREMENT_ID}`}
                strategy="afterInteractive"
            />
            <Script id="google-analytics" strategy="afterInteractive">
                {`
                    window.dataLayer = window.dataLayer || [];
                    function gtag(){dataLayer.push(arguments);}
                    gtag('js', new Date());
                    gtag('config', '${GA_MEASUREMENT_ID}');
                `}
            </Script>
        </>
    );
}

// GA4 이벤트 트래킹 함수들
export const trackEvent = (eventName: string, parameters?: Record<string, unknown>) => {
    if (typeof window !== "undefined" && "gtag" in window) {
        (window as typeof window & { gtag: (...args: unknown[]) => void }).gtag("event", eventName, parameters);
    }
};

// 주요 이벤트 함수들
export const analytics = {
    // 비디오 시작
    videoStart: (contentId: string, artistName: string) => {
        trackEvent("video_start", {
            content_id: contentId,
            artist_name: artistName,
        });
    },

    // 챌린지 완료
    challengeComplete: (challengeId: string, isCorrect: boolean, attempts: number) => {
        trackEvent("challenge_complete", {
            challenge_id: challengeId,
            is_correct: isCorrect,
            attempts_count: attempts,
        });
    },

    // 가챠 오픈
    gachaOpen: (cardRarity: string, userXp: number) => {
        trackEvent("gacha_open", {
            card_rarity: cardRarity,
            user_xp: userXp,
        });
    },

    // 결과 공유
    shareResult: (platform: string) => {
        trackEvent("share_result", {
            platform: platform,
        });
    },

    // 회원가입
    signUp: (method: string) => {
        trackEvent("sign_up", {
            method: method,
        });
    },

    // 로그인
    login: (method: string) => {
        trackEvent("login", {
            method: method,
        });
    },

    // Pro 업그레이드 클릭
    upgradeClick: () => {
        trackEvent("upgrade_click", {
            location: "pricing_modal",
        });
    },

    // 페이지 뷰
    pageView: (pagePath: string, pageTitle: string) => {
        trackEvent("page_view", {
            page_path: pagePath,
            page_title: pageTitle,
        });
    },
};
