# K-Dictation : Stantalk

> The most addictive way to learn Korean through K-Pop & K-Drama 🎧

K-Pop과 K-Drama로 한국어를 배우는 가장 중독적인 방법! 실제 아이돌 영상으로 받아쓰기하며 한국어 실력을 키워보세요.

## ✨ 주요 기능

- **🎤 Real Content**: 실제 아이돌 라이브 방송, 예능 클립으로 학습
- **🎮 Gamification**: XP, 스트릭, 카드 수집 등 게임처럼 즐기는 학습
- **⚡ Instant Access**: 앱 설치 없이 웹에서 바로 시작

## 🛠 기술 스택

| 영역 | 기술 |
|------|------|
| Frontend | Next.js 16 (App Router) |
| Styling | Tailwind CSS |
| Animation | Framer Motion |
| State | Zustand + nuqs |
| Backend | Supabase (PostgreSQL, Auth) |
| AI | Claude 3.5 Sonnet |

## 🚀 시작하기

### 1. 의존성 설치

```bash
yarn install
```

### 2. 환경 변수 설정

`.env.local` 파일을 생성하고 아래 내용을 설정하세요:

```env
# Supabase 설정
NEXT_PUBLIC_SUPABASE_URL=your_supabase_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key

# 앱 URL
NEXT_PUBLIC_APP_URL=http://localhost:3000
```

### 3. 개발 서버 실행

```bash
yarn dev
```

브라우저에서 [http://localhost:3000](http://localhost:3000) 을 열어 확인하세요.

## 📁 프로젝트 구조

```
/src
  /app
    /(app)              # 앱 영역 (Protected)
      /learn            # 학습 페이지
        /[artistId]     # 아티스트별 콘텐츠
          /[contentId]  # 딕테이션 플레이어
      /dashboard        # 대시보드
    /page.tsx           # 랜딩 페이지
    /layout.tsx         # 루트 레이아웃
  /lib
    /supabase           # Supabase 클라이언트
    /utils.ts           # 유틸리티 함수
/supabase
  /migrations           # 데이터베이스 마이그레이션
```

## 📊 데이터베이스 설정

Supabase 대시보드에서 `/supabase/migrations/001_init.sql` 파일의 SQL을 실행하여 테이블을 생성하세요.

## 🎨 디자인 시스템

K-Pop 뮤직비디오를 모티브로 한 **네온 & 다크 테마** 적용

| 색상 | Hex | 용도 |
|------|-----|------|
| Hot Pink | #FF007F | Primary |
| Electric Purple | #7C3AED | Secondary |
| Neon Cyan | #00F0FF | Info |
| Success | #22C55E | 정답 |
| Error | #EF4444 | 오답 |

## 📜 라이센스

© 2024 K-Dictation : Stantalk. All rights reserved.

Made with 💖 for K-Pop fans worldwide
