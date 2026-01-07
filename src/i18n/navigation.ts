// 클라이언트 네비게이션 훅 - 다국어 라우터 래퍼
import { createNavigation } from 'next-intl/navigation';
import { routing } from './routing';

// 다국어 지원 Link, redirect, usePathname, useRouter 생성
export const { Link, redirect, usePathname, useRouter, getPathname } =
    createNavigation(routing);
