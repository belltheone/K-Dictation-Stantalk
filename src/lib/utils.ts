// 유틸리티 함수 모음
import { type ClassValue, clsx } from "clsx"
import { twMerge } from "tailwind-merge"

// Tailwind CSS 클래스 병합 유틸리티
export function cn(...inputs: ClassValue[]) {
    return twMerge(clsx(inputs))
}

// Levenshtein Distance 알고리즘 - 정답 유사도 비교용
export function levenshteinDistance(str1: string, str2: string): number {
    const m = str1.length
    const n = str2.length

    // 빈 문자열 처리
    if (m === 0) return n
    if (n === 0) return m

    // DP 테이블 생성
    const dp: number[][] = Array(m + 1).fill(null).map(() => Array(n + 1).fill(0))

    // 초기화
    for (let i = 0; i <= m; i++) dp[i][0] = i
    for (let j = 0; j <= n; j++) dp[0][j] = j

    // DP 계산
    for (let i = 1; i <= m; i++) {
        for (let j = 1; j <= n; j++) {
            const cost = str1[i - 1] === str2[j - 1] ? 0 : 1
            dp[i][j] = Math.min(
                dp[i - 1][j] + 1,      // 삭제
                dp[i][j - 1] + 1,      // 삽입
                dp[i - 1][j - 1] + cost // 교체
            )
        }
    }

    return dp[m][n]
}

// 문자열 유사도 계산 (0~1, 1이 완전 일치)
export function calculateSimilarity(str1: string, str2: string): number {
    const distance = levenshteinDistance(str1, str2)
    const maxLength = Math.max(str1.length, str2.length)

    if (maxLength === 0) return 1
    return 1 - distance / maxLength
}

// 정답 비교용 문자열 정규화 (띄어쓰기, 문장 부호 제거)
export function normalizeAnswer(text: string): string {
    return text
        .toLowerCase()
        .replace(/\s+/g, '') // 모든 공백 제거
        .replace(/[.,!?;:'"~`\-_]/g, '') // 문장 부호 제거
        .trim()
}

// 정답 검증 함수
export function validateAnswer(
    userInput: string,
    correctAnswer: string,
    similarityThreshold: number = 0.9
): { isCorrect: boolean; similarity: number; isTypoAccepted: boolean } {
    const normalizedInput = normalizeAnswer(userInput)
    const normalizedAnswer = normalizeAnswer(correctAnswer)

    // 완전 일치
    if (normalizedInput === normalizedAnswer) {
        return { isCorrect: true, similarity: 1, isTypoAccepted: false }
    }

    // 유사도 검사 (오타 허용)
    const similarity = calculateSimilarity(normalizedInput, normalizedAnswer)
    const isTypoAccepted = similarity >= similarityThreshold

    return {
        isCorrect: isTypoAccepted,
        similarity,
        isTypoAccepted: isTypoAccepted && similarity < 1
    }
}

// 랜덤 ID 생성
export function generateId(): string {
    return crypto.randomUUID()
}

// 날짜 포맷팅
export function formatDate(date: Date | string): string {
    const d = typeof date === 'string' ? new Date(date) : date
    return d.toLocaleDateString('ko-KR', {
        year: 'numeric',
        month: 'long',
        day: 'numeric'
    })
}
