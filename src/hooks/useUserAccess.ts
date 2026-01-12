"use client";

import { useState, useEffect } from "react";
import { createClient } from "@supabase/supabase-js";

// Supabase 클라이언트 생성
const supabase = createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

// 사용자 접근 상태 타입
interface UserAccess {
    isLoading: boolean;
    isGuest: boolean; // 비회원 (로그인 안함)
    isFree: boolean; // 무료 유저 (subscription_tier = 'free')
    isPro: boolean; // Pro 유저 (subscription_tier = 'pro')
    userId: string | null;
    user: {
        id: string;
        email: string | null;
        subscriptionTier: "free" | "pro";
    } | null;
}

// 비회원 문제 풀이 횟수 저장 키
const GUEST_SOLVE_COUNT_KEY = "kdictation_guest_solve_count";

// 비회원 최대 문제 수
export const GUEST_MAX_PROBLEMS = 3;

/**
 * 사용자 접근 상태 확인 훅
 * - 비회원: 로그인 안함 → easy 문제 3개만
 * - 무료 유저: 로그인 + free tier → 모든 문제 + 문제당 광고
 * - Pro 유저: pro tier → 모든 문제 + 광고 없음
 */
export function useUserAccess(): UserAccess {
    const [isLoading, setIsLoading] = useState(true);
    const [user, setUser] = useState<UserAccess["user"]>(null);

    useEffect(() => {
        const checkUser = async () => {
            try {
                // 현재 세션 확인
                const { data: { session } } = await supabase.auth.getSession();

                if (!session) {
                    // 비회원
                    setUser(null);
                    setIsLoading(false);
                    return;
                }

                // 사용자 정보 조회
                const { data: userData, error } = await supabase
                    .from("users")
                    .select("id, subscription_tier")
                    .eq("id", session.user.id)
                    .single();

                if (error) {
                    console.error("Failed to fetch user data:", error);
                    // 사용자 테이블에 없으면 무료 유저로 처리
                    setUser({
                        id: session.user.id,
                        email: session.user.email || null,
                        subscriptionTier: "free",
                    });
                } else {
                    setUser({
                        id: userData.id,
                        email: session.user.email || null,
                        subscriptionTier: userData.subscription_tier || "free",
                    });
                }
            } catch (error) {
                console.error("Error checking user access:", error);
                setUser(null);
            } finally {
                setIsLoading(false);
            }
        };

        checkUser();

        // 세션 변경 모니터링
        const { data: { subscription } } = supabase.auth.onAuthStateChange(
            (_event, session) => {
                if (!session) {
                    setUser(null);
                } else {
                    checkUser();
                }
            }
        );

        return () => subscription.unsubscribe();
    }, []);

    return {
        isLoading,
        isGuest: !isLoading && user === null,
        isFree: !isLoading && user !== null && user.subscriptionTier === "free",
        isPro: !isLoading && user !== null && user.subscriptionTier === "pro",
        userId: user?.id || null,
        user,
    };
}

/**
 * 비회원 문제 풀이 횟수 관리
 */
export function getGuestSolveCount(): number {
    if (typeof window === "undefined") return 0;
    const count = localStorage.getItem(GUEST_SOLVE_COUNT_KEY);
    return count ? parseInt(count, 10) : 0;
}

export function incrementGuestSolveCount(): number {
    if (typeof window === "undefined") return 0;
    const newCount = getGuestSolveCount() + 1;
    localStorage.setItem(GUEST_SOLVE_COUNT_KEY, newCount.toString());
    return newCount;
}

export function resetGuestSolveCount(): void {
    if (typeof window === "undefined") return;
    localStorage.removeItem(GUEST_SOLVE_COUNT_KEY);
}

/**
 * 비회원이 문제를 더 풀 수 있는지 확인
 */
export function canGuestSolveMore(): boolean {
    return getGuestSolveCount() < GUEST_MAX_PROBLEMS;
}
