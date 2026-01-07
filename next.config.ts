import type { NextConfig } from "next";
import createNextIntlPlugin from 'next-intl/plugin';

// next-intl 플러그인 생성 - i18n 설정 파일 경로 지정
const withNextIntl = createNextIntlPlugin('./src/i18n/request.ts');

const nextConfig: NextConfig = {
  // React 컴파일러 활성화
  reactCompiler: true,
};

export default withNextIntl(nextConfig);
