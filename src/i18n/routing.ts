// next-intl 설정 파일 - i18n 라우팅 및 기본 언어 설정
import { defineRouting } from 'next-intl/routing';

// 지원하는 언어 목록 정의 (9개 언어)
export const locales = ['en', 'ko', 'ja', 'zh', 'th', 'vi', 'fr', 'de', 'it'] as const;
export type Locale = (typeof locales)[number];

// 라우팅 설정 - 기본 언어는 영어
export const routing = defineRouting({
    locales,
    defaultLocale: 'en',
    localePrefix: 'as-needed', // 기본 언어(en)는 URL에 표시하지 않음
});
