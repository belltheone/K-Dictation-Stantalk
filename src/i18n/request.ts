// 서버 컴포넌트용 i18n 요청 설정
import { getRequestConfig } from 'next-intl/server';
import { routing } from './routing';

// 서버 컴포넌트에서 번역 메시지를 로드하는 설정
export default getRequestConfig(async ({ requestLocale }) => {
    // 요청에서 로케일 가져오기
    let locale = await requestLocale;

    // 유효하지 않은 로케일이면 기본값 사용
    if (!locale || !routing.locales.includes(locale as typeof routing.locales[number])) {
        locale = routing.defaultLocale;
    }

    return {
        locale,
        messages: (await import(`../../messages/${locale}.json`)).default
    };
});
