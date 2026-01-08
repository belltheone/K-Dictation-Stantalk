"use client";

// 게임화 상태 관리 Store (Zustand)
import { create } from "zustand";
import { persist } from "zustand/middleware";

// 카드 타입
interface CollectedCard {
    id: string;
    artistName: string;
    artistEmoji: string;
    rarity: "common" | "rare" | "epic" | "legendary";
    collectedAt: string;
}

// 게임화 상태 인터페이스
interface GamificationState {
    // XP & 레벨
    xp: number;
    level: number;

    // 스트릭
    streakCount: number;
    lastStudyDate: string | null;

    // 카드 컬렉션
    collectedCards: CollectedCard[];
    totalDraws: number;

    // 액션
    addXP: (amount: number) => void;
    updateStreak: () => void;
    addCard: (card: CollectedCard) => void;
    spendXP: (amount: number) => boolean;
    resetLocalData: () => void;
}

// XP → 레벨 계산 함수
const calculateLevel = (xp: number): number => {
    // 레벨업 기준: 100, 250, 500, 1000, 2000, 4000, 8000...
    const thresholds = [0, 100, 250, 500, 1000, 2000, 4000, 8000, 16000, 32000];
    let level = 1;
    for (let i = 1; i < thresholds.length; i++) {
        if (xp >= thresholds[i]) {
            level = i + 1;
        } else {
            break;
        }
    }
    return level;
};

// Zustand 스토어 생성
export const useGamificationStore = create<GamificationState>()(
    persist(
        (set, get) => ({
            // 초기 상태
            xp: 0,
            level: 1,
            streakCount: 0,
            lastStudyDate: null,
            collectedCards: [],
            totalDraws: 0,

            // XP 추가
            addXP: (amount: number) => {
                set((state) => {
                    const newXP = state.xp + amount;
                    const newLevel = calculateLevel(newXP);
                    return { xp: newXP, level: newLevel };
                });
            },

            // 스트릭 업데이트
            updateStreak: () => {
                const today = new Date().toISOString().split("T")[0];
                const { lastStudyDate, streakCount } = get();

                if (lastStudyDate === today) {
                    // 오늘 이미 학습함 - 변경 없음
                    return;
                }

                if (!lastStudyDate) {
                    // 첫 학습
                    set({ streakCount: 1, lastStudyDate: today });
                    return;
                }

                const lastDate = new Date(lastStudyDate);
                const todayDate = new Date(today);
                const diffDays = Math.floor((todayDate.getTime() - lastDate.getTime()) / (1000 * 60 * 60 * 24));

                if (diffDays === 1) {
                    // 연속 학습
                    set({ streakCount: streakCount + 1, lastStudyDate: today });
                } else {
                    // 스트릭 끊김
                    set({ streakCount: 1, lastStudyDate: today });
                }
            },

            // 카드 추가
            addCard: (card: CollectedCard) => {
                set((state) => ({
                    collectedCards: [...state.collectedCards, card],
                    totalDraws: state.totalDraws + 1,
                }));
            },

            // XP 사용 (카드 뽑기 등)
            spendXP: (amount: number) => {
                const { xp } = get();
                if (xp >= amount) {
                    set((state) => ({
                        xp: state.xp - amount,
                        level: calculateLevel(state.xp - amount),
                    }));
                    return true;
                }
                return false;
            },

            // 로컬 데이터 리셋
            resetLocalData: () => {
                set({
                    xp: 0,
                    level: 1,
                    streakCount: 0,
                    lastStudyDate: null,
                    collectedCards: [],
                    totalDraws: 0,
                });
            },
        }),
        {
            name: "kdictation-gamification", // localStorage 키
        }
    )
);
