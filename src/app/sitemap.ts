import type { MetadataRoute } from "next";

// 동적 사이트맵 생성
export default function sitemap(): MetadataRoute.Sitemap {
    const baseUrl = process.env.NEXT_PUBLIC_APP_URL || "https://kdictation.com";

    // 지원 언어
    const locales = ["en", "ko", "ja", "zh", "th", "vi"];

    // 정적 페이지
    const staticPages = [
        "",        // 홈
        "/learn",  // 학습
        "/dashboard", // 대시보드
        "/gacha",  // 카드 수집
    ];

    const routes: MetadataRoute.Sitemap = [];

    // 각 언어별 정적 페이지 추가
    for (const locale of locales) {
        for (const page of staticPages) {
            const url = locale === "en"
                ? `${baseUrl}${page}`
                : `${baseUrl}/${locale}${page}`;

            routes.push({
                url,
                lastModified: new Date(),
                changeFrequency: page === "" ? "daily" : "weekly",
                priority: page === "" ? 1 : 0.8,
            });
        }
    }

    return routes;
}
