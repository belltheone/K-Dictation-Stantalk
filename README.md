# K-Dictation : Stantalk 🎧

> The most addictive way to learn Korean through K-Pop & K-Drama

K-Pop과 K-Drama로 한국어를 배우는 가장 중독적인 방법! 실제 아이돌 영상으로 받아쓰기하며 한국어 실력을 키워보세요.

## ✨ 주요 기능

- **🎤 Real Content**: 실제 아이돌 라이브 방송, 예능 클립으로 학습
- **🎮 Gamification**: XP, 스트릭, 카드 수집 등 게임처럼 즐기는 학습
- **🌍 6개 언어 지원**: English, 한국어, 日本語, 中文, ไทย, Tiếng Việt
- **📱 PWA 지원**: 앱처럼 홈 화면에 추가 가능
- **🤖 AI 문제 생성**: OpenAI로 자동 학습 문제 생성

## 🛠 기술 스택

| 영역 | 기술 |
|------|------|
| Frontend | Next.js 16 (App Router) |
| Styling | Tailwind CSS |
| Animation | Framer Motion |
| State | Zustand |
| i18n | next-intl |
| Backend | Supabase (PostgreSQL, Auth) |
| AI | OpenAI (gpt-4o-mini) |

## 🚀 시작하기

### 1. 의존성 설치

```bash
npx yarn install
```

### 2. 환경 변수 설정

`.env.local` 파일을 생성하세요:

```env
# Supabase
NEXT_PUBLIC_SUPABASE_URL=your_supabase_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key

# App URL
NEXT_PUBLIC_APP_URL=http://localhost:3000

# OpenAI (AI 문제 생성)
OPENAI_API_KEY=sk-your-api-key

# Admin (쉼표로 구분)
ADMIN_EMAILS=admin@email.com
```

### 3. 데이터베이스 마이그레이션

```bash
supabase link --project-ref YOUR_PROJECT_REF
supabase db push
```

### 4. 개발 서버 실행

```bash
npx yarn dev
```

[http://localhost:3000](http://localhost:3000) 접속

## 📁 프로젝트 구조

```
/src
  /app
    /[locale]            # 다국어 라우팅
      /(app)             # 앱 영역
        /learn           # 학습 페이지
        /gacha           # 카드 수집
        /dashboard       # 대시보드
        /admin           # 관리자 (권한 필요)
      /page.tsx          # 랜딩 페이지
  /components
    /auth                # 인증 컴포넌트
    /gamification        # 게임화 컴포넌트
    /ui                  # UI 컴포넌트
  /lib
    /actions             # Server Actions
    /ai                  # OpenAI 통합
    /stores              # Zustand 스토어
  /i18n                  # 다국어 설정
/messages                # 번역 파일 (6개 언어)
/supabase/migrations     # DB 마이그레이션
```

## 🎨 디자인 시스템

K-Pop MV를 모티브로 한 **네온 & 다크 테마**

| 색상 | Hex | 용도 |
|------|-----|------|
| Hot Pink | #FF007F | Primary |
| Electric Purple | #7C3AED | Secondary |
| Neon Cyan | #00F0FF | Accent |

## 📖 OAuth 설정

소셜 로그인 설정은 [docs/OAUTH_SETUP.md](docs/OAUTH_SETUP.md) 참조

## 📜 라이센스

© 2026 K-Dictation : Stantalk. All rights reserved.

Made with 💖 for K-Pop fans worldwide
