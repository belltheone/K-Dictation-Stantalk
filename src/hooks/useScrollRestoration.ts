"use client";

import { useEffect, useRef } from "react";
import { usePathname } from "next/navigation";

const SCROLL_KEY_PREFIX = "scroll_pos_";

/**
 * 스크롤 위치를 저장하고 복원하는 훅
 * 페이지 이동 시 스크롤 위치를 sessionStorage에 저장하고,
 * 뒤로 가기 시 저장된 위치로 복원합니다.
 * 
 * @param key - 저장/복원에 사용할 고유 키 (페이지별로 다르게 설정)
 */
export function useScrollRestoration(key?: string) {
    const pathname = usePathname();
    const storageKey = `${SCROLL_KEY_PREFIX}${key || pathname}`;
    const isRestoring = useRef(false);

    // 스크롤 위치 저장
    useEffect(() => {
        const handleScroll = () => {
            if (!isRestoring.current) {
                sessionStorage.setItem(storageKey, String(window.scrollY));
            }
        };

        // 디바운스된 스크롤 핸들러
        let timeoutId: NodeJS.Timeout;
        const debouncedScroll = () => {
            clearTimeout(timeoutId);
            timeoutId = setTimeout(handleScroll, 100);
        };

        window.addEventListener("scroll", debouncedScroll);
        return () => {
            window.removeEventListener("scroll", debouncedScroll);
            clearTimeout(timeoutId);
        };
    }, [storageKey]);

    // 스크롤 위치 복원
    useEffect(() => {
        const savedPosition = sessionStorage.getItem(storageKey);

        if (savedPosition) {
            isRestoring.current = true;

            // 약간의 딜레이 후 스크롤 복원 (DOM 렌더링 대기)
            const timeoutId = setTimeout(() => {
                window.scrollTo({
                    top: parseInt(savedPosition, 10),
                    behavior: "instant"
                });

                // 복원 완료 후 플래그 리셋
                setTimeout(() => {
                    isRestoring.current = false;
                }, 100);
            }, 50);

            return () => clearTimeout(timeoutId);
        }
    }, [storageKey]);

    // 스크롤 위치 초기화 함수 (새로운 탐색 시 호출)
    const resetScrollPosition = () => {
        sessionStorage.removeItem(storageKey);
    };

    return { resetScrollPosition };
}
