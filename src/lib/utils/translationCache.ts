// 번역 캐시 유틸리티 - localStorage 기반 번역 결과 캐싱
// 동일한 텍스트 재번역 방지로 API 호출 최소화

// 캐시 키 생성 (텍스트 해시)
function generateCacheKey(text: string, locale: string, type: string): string {
    // 간단한 해시 함수
    let hash = 0;
    for (let i = 0; i < text.length; i++) {
        const char = text.charCodeAt(i);
        hash = (hash << 5) - hash + char;
        hash = hash & hash; // 32비트 정수로 변환
    }
    return `trans_${locale}_${type}_${Math.abs(hash).toString(16)}`;
}

// 캐시 아이템 타입
interface CacheItem {
    translatedText: string;
    romanization?: string;
    timestamp: number;
}

// 캐시 만료 시간 (7일)
const CACHE_EXPIRY_MS = 7 * 24 * 60 * 60 * 1000;

// 캐시에서 번역 결과 가져오기
export function getCachedTranslation(
    text: string,
    locale: string,
    type: string
): CacheItem | null {
    if (typeof window === "undefined") return null;

    try {
        const key = generateCacheKey(text, locale, type);
        const cached = localStorage.getItem(key);

        if (!cached) return null;

        const item: CacheItem = JSON.parse(cached);

        // 만료 확인
        if (Date.now() - item.timestamp > CACHE_EXPIRY_MS) {
            localStorage.removeItem(key);
            return null;
        }

        return item;
    } catch (error) {
        console.error("Cache read error:", error);
        return null;
    }
}

// 번역 결과를 캐시에 저장
export function setCachedTranslation(
    text: string,
    locale: string,
    type: string,
    translatedText: string,
    romanization?: string
): void {
    if (typeof window === "undefined") return;

    try {
        const key = generateCacheKey(text, locale, type);
        const item: CacheItem = {
            translatedText,
            romanization,
            timestamp: Date.now(),
        };
        localStorage.setItem(key, JSON.stringify(item));
    } catch (error) {
        console.error("Cache write error:", error);
        // localStorage 용량 초과 시 오래된 캐시 정리
        clearOldCache();
    }
}

// 오래된 캐시 정리
function clearOldCache(): void {
    if (typeof window === "undefined") return;

    try {
        const keysToRemove: string[] = [];
        const now = Date.now();

        for (let i = 0; i < localStorage.length; i++) {
            const key = localStorage.key(i);
            if (key?.startsWith("trans_")) {
                const cached = localStorage.getItem(key);
                if (cached) {
                    const item: CacheItem = JSON.parse(cached);
                    if (now - item.timestamp > CACHE_EXPIRY_MS) {
                        keysToRemove.push(key);
                    }
                }
            }
        }

        keysToRemove.forEach((key) => localStorage.removeItem(key));
    } catch (error) {
        console.error("Cache cleanup error:", error);
    }
}

// 모든 번역 캐시 삭제
export function clearAllTranslationCache(): void {
    if (typeof window === "undefined") return;

    try {
        const keysToRemove: string[] = [];

        for (let i = 0; i < localStorage.length; i++) {
            const key = localStorage.key(i);
            if (key?.startsWith("trans_")) {
                keysToRemove.push(key);
            }
        }

        keysToRemove.forEach((key) => localStorage.removeItem(key));
    } catch (error) {
        console.error("Cache clear error:", error);
    }
}
