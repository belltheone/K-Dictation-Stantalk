"use client";

import { createContext, useContext, useState, useEffect, ReactNode } from "react";

// Guest 사용자 데이터 타입
interface GuestData {
    id: string;
    xp: number;
    streak: number;
    completedChallenges: string[];
    savedWords: { word: string; meaning: string }[];
    lastStudyDate: string | null;
}

interface GuestContextType {
    isGuest: boolean;
    guestData: GuestData | null;
    updateXP: (amount: number) => void;
    completeChallenge: (challengeId: string) => void;
    saveWord: (word: string, meaning: string) => void;
    removeWord: (word: string) => void;
    clearGuestData: () => void;
}

const GuestContext = createContext<GuestContextType | undefined>(undefined);

const GUEST_STORAGE_KEY = "kdictation_guest_data";

// 기본 게스트 데이터
const createDefaultGuestData = (): GuestData => ({
    id: crypto.randomUUID(),
    xp: 0,
    streak: 0,
    completedChallenges: [],
    savedWords: [],
    lastStudyDate: null,
});

// Guest Mode Provider 컴포넌트
export function GuestProvider({ children }: { children: ReactNode }) {
    const [guestData, setGuestData] = useState<GuestData | null>(null);
    const [isGuest, setIsGuest] = useState(false);

    // 로컬 스토리지에서 게스트 데이터 로드
    useEffect(() => {
        const stored = localStorage.getItem(GUEST_STORAGE_KEY);
        if (stored) {
            try {
                const data = JSON.parse(stored) as GuestData;
                setGuestData(data);
                setIsGuest(true);
            } catch {
                // 파싱 실패 시 새 데이터 생성
                const newData = createDefaultGuestData();
                setGuestData(newData);
                setIsGuest(true);
                localStorage.setItem(GUEST_STORAGE_KEY, JSON.stringify(newData));
            }
        }
    }, []);

    // 게스트 데이터 저장
    const saveGuestData = (data: GuestData) => {
        setGuestData(data);
        localStorage.setItem(GUEST_STORAGE_KEY, JSON.stringify(data));
    };

    // XP 업데이트
    const updateXP = (amount: number) => {
        if (!guestData) return;
        const newData = {
            ...guestData,
            xp: guestData.xp + amount,
            lastStudyDate: new Date().toISOString().split("T")[0],
        };
        saveGuestData(newData);
    };

    // 챌린지 완료
    const completeChallenge = (challengeId: string) => {
        if (!guestData) return;
        if (guestData.completedChallenges.includes(challengeId)) return;
        const newData = {
            ...guestData,
            completedChallenges: [...guestData.completedChallenges, challengeId],
        };
        saveGuestData(newData);
    };

    // 단어 저장
    const saveWord = (word: string, meaning: string) => {
        if (!guestData) return;
        if (guestData.savedWords.find((w) => w.word === word)) return;
        const newData = {
            ...guestData,
            savedWords: [...guestData.savedWords, { word, meaning }],
        };
        saveGuestData(newData);
    };

    // 단어 삭제
    const removeWord = (word: string) => {
        if (!guestData) return;
        const newData = {
            ...guestData,
            savedWords: guestData.savedWords.filter((w) => w.word !== word),
        };
        saveGuestData(newData);
    };

    // 게스트 데이터 초기화
    const clearGuestData = () => {
        localStorage.removeItem(GUEST_STORAGE_KEY);
        setGuestData(null);
        setIsGuest(false);
    };

    // 게스트 모드 시작 (첫 방문 시)
    useEffect(() => {
        if (!guestData && typeof window !== "undefined") {
            const newData = createDefaultGuestData();
            setGuestData(newData);
            setIsGuest(true);
            localStorage.setItem(GUEST_STORAGE_KEY, JSON.stringify(newData));
        }
    }, [guestData]);

    return (
        <GuestContext.Provider
            value={{
                isGuest,
                guestData,
                updateXP,
                completeChallenge,
                saveWord,
                removeWord,
                clearGuestData,
            }}
        >
            {children}
        </GuestContext.Provider>
    );
}

// Guest Context 훅
export function useGuest() {
    const context = useContext(GuestContext);
    if (context === undefined) {
        throw new Error("useGuest must be used within a GuestProvider");
    }
    return context;
}
