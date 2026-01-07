// next-intl 미들웨어 - 다국어 라우팅 처리
import createMiddleware from 'next-intl/middleware';
import { routing } from './i18n/routing';

export default createMiddleware(routing);

export const config = {
    // 다국어 라우팅을 적용할 경로 (api, _next, 정적 파일 제외)
    matcher: ['/', '/(ko|ja|zh|th|vi)/:path*', '/((?!api|_next|_vercel|.*\\..*).*)']
};
