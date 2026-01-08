# Supabase OAuth 설정 가이드

K-Dictation 프로젝트의 소셜 로그인을 설정하는 방법입니다.

## 1. Supabase 대시보드 접속

[Supabase Dashboard](https://supabase.com/dashboard) → **K-Dictation : Stantalk** 프로젝트 선택

---

## 2. Google OAuth 설정

### 2.1 Google Cloud Console 설정

1. [Google Cloud Console](https://console.cloud.google.com/) 접속
2. 새 프로젝트 생성 또는 기존 프로젝트 선택
3. **APIs & Services** → **OAuth consent screen** 설정
   - User Type: External
   - App name: K-Dictation
   - Support email: 본인 이메일
4. **Credentials** → **Create Credentials** → **OAuth client ID**
   - Application type: Web application
   - Name: K-Dictation Web
   - Authorized redirect URIs:
     ```
     https://vdjvhflcowmtrarkjuny.supabase.co/auth/v1/callback
     ```
5. **Client ID**와 **Client Secret** 복사

### 2.2 Supabase에 등록

1. Supabase Dashboard → **Authentication** → **Providers**
2. **Google** 클릭하여 활성화
3. 복사한 **Client ID**와 **Client Secret** 입력
4. **Save** 클릭

---

## 3. Twitter (X) OAuth 설정

### 3.1 Twitter Developer Portal 설정

1. [Twitter Developer Portal](https://developer.twitter.com/en/portal/dashboard) 접속
2. 새 프로젝트/앱 생성
3. **User authentication settings** → **Set up**
   - App permissions: Read
   - Type of App: Web App
   - Callback URL:
     ```
     https://vdjvhflcowmtrarkjuny.supabase.co/auth/v1/callback
     ```
   - Website URL: 배포된 앱 URL
4. **Client ID**와 **Client Secret** 복사

### 3.2 Supabase에 등록

1. Supabase Dashboard → **Authentication** → **Providers**
2. **Twitter** 클릭하여 활성화
3. 복사한 정보 입력
4. **Save** 클릭

---

## 4. URL 설정 확인

Supabase Dashboard → **Authentication** → **URL Configuration**

- **Site URL**: `https://your-app.vercel.app`
- **Redirect URLs**:
  ```
  https://your-app.vercel.app/auth/callback
  http://localhost:3000/auth/callback
  ```

---

## 5. 테스트

1. 배포된 앱 접속
2. **Join the Fandom** 버튼 클릭
3. Google 또는 Twitter 로그인 선택
4. OAuth 플로우 완료 확인
