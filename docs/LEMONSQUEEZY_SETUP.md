# Lemon Squeezy API 설정 가이드

Lemon Squeezy는 디지털 제품 및 구독 결제를 위한 플랫폼입니다. K-Dictation Pro 구독을 위한 설정 방법입니다.

---

## 1단계: Lemon Squeezy 계정 생성

### 1.1. 회원가입
1. [Lemon Squeezy](https://www.lemonsqueezy.com/) 웹사이트 방문
2. 우측 상단 **"Sign up"** 클릭
3. 이메일 또는 Google 계정으로 회원가입
4. 이메일 인증 완료

### 1.2. 스토어 생성
1. 로그인 후 **"Create a store"** 클릭
2. 스토어 정보 입력:
   - **Store name**: K-Dictation
   - **Store URL**: k-dictation (→ k-dictation.lemonsqueezy.com)
   - **Country**: 대한민국 (또는 본인 국가)
   - **Currency**: USD (권장)
3. **"Create store"** 클릭

---

## 2단계: 결제 정보 설정 (Payout)

> ⚠️ 결제를 받으려면 반드시 설정 필요

1. 좌측 메뉴 **Settings** → **Payouts** 클릭
2. **결제 수단 선택**:
   - **PayPal**: 이메일 입력
   - **Stripe**: 계좌 연결
   - **Wire Transfer**: 은행 계좌 정보 (대한민국 계좌 가능)
3. **세금 정보**: 사업자/개인 정보 입력

---

## 3단계: 상품(Product) 생성

### 3.1. Pro 구독 상품 만들기
1. 좌측 메뉴 **Products** 클릭
2. **"+ New product"** 버튼 클릭
3. 상품 정보 입력:

| 항목 | 입력값 |
|------|--------|
| **Name** | K-Dictation Pro |
| **Description** | Ad-free Korean learning through K-Pop. Unlimited challenges, exclusive cards, and more! |
| **Pricing** | Subscription |
| **Price** | $4.99 / month |
| **Billing interval** | Monthly |

4. **Media** 탭에서 상품 이미지 업로드 (선택사항)
5. **"Publish"** 클릭하여 상품 게시

### 3.2. 상품 ID 복사
1. 생성된 상품 클릭
2. URL에서 상품 ID 확인: `https://app.lemonsqueezy.com/products/123456`
3. `123456` 부분이 **Product ID** (나중에 필요)

---

## 4단계: API 키 생성

### 4.1. API 키 발급
1. 좌측 메뉴 **Settings** 클릭
2. **API** 탭 클릭
3. **"+ Create API key"** 버튼 클릭
4. 키 정보 입력:
   - **Name**: K-Dictation Production
   - **Permissions**: 모든 권한 선택 (또는 필요한 것만)
5. **"Create"** 클릭
6. 🔑 **API 키가 표시됩니다 - 이것을 복사해서 안전하게 저장하세요!**

> ⚠️ API 키는 한 번만 표시됩니다. 잃어버리면 새로 생성해야 합니다.

### 4.2. Store ID 확인
1. **Settings** → **Store** 탭
2. **Store ID** 확인 (예: `12345`)

---

## 5단계: Webhook 설정

Webhook은 결제 완료 시 서버에 알림을 보내는 기능입니다.

### 5.1. Webhook 생성
1. 좌측 메뉴 **Settings** → **Webhooks** 탭
2. **"+ Create webhook"** 클릭
3. 정보 입력:

| 항목 | 입력값 |
|------|--------|
| **Callback URL** | `https://kdictationstantalk.vercel.app/api/webhooks/lemonsqueezy` |
| **Signing secret** | 자동 생성됨 (복사해서 저장) |
| **Events** | ✅ subscription_created, ✅ subscription_updated, ✅ subscription_cancelled |

4. **"Save webhook"** 클릭

---

## 6단계: 환경 변수 설정

### 6.1. `.env.local` 파일에 추가

```bash
# Lemon Squeezy 설정
LEMONSQUEEZY_API_KEY=your_api_key_here
LEMONSQUEEZY_STORE_ID=12345
LEMONSQUEEZY_PRODUCT_ID=123456
LEMONSQUEEZY_WEBHOOK_SECRET=your_webhook_secret_here
```

### 6.2. Vercel에 환경 변수 추가
1. [Vercel Dashboard](https://vercel.com/) 접속
2. K-Dictation 프로젝트 선택
3. **Settings** → **Environment Variables**
4. 위 4개 변수 모두 추가
5. **Save** 후 재배포

---

## 7단계: 결제 링크 생성 (Checkout)

### 7.1. Checkout Link 확인

> 📍 최신 Lemon Squeezy에서는 **"Share"** 버튼을 사용합니다.

1. **Products** 메뉴에서 생성한 상품 클릭
2. 상품 상세 페이지에서 **"Share"** 버튼 클릭 (우측 상단)
3. **Checkout URL** 복사:
   - 형식: `https://[STORE].lemonsqueezy.com/checkout/buy/[VARIANT_ID]`
   - 예: `https://k-dictation.lemonsqueezy.com/checkout/buy/abc123`

### 7.2. Variant ID 확인 (구독 상품의 경우)
- 상품에 여러 플랜(월간/연간)이 있으면 각각 다른 Variant ID가 있습니다
- **Products** → 상품 → **Variants** 탭에서 확인
- 또는 Share 클릭 시 각 Variant별 URL이 표시됩니다

### 7.2. 앱에서 사용
```typescript
// PricingModal.tsx에서 사용
const handleUpgrade = () => {
    window.open("https://k-dictation.lemonsqueezy.com/buy/abc123def456", "_blank");
};
```

---

## 체크리스트

- [ ] Lemon Squeezy 계정 생성
- [ ] 스토어 생성 (K-Dictation)
- [ ] 결제 정보 설정 (PayPal 또는 은행)
- [ ] Pro 구독 상품 생성 ($4.99/월)
- [ ] API 키 발급 및 저장
- [ ] Webhook 설정
- [ ] 환경 변수 설정 (.env.local + Vercel)
- [ ] Checkout URL을 PricingModal에 적용

---

## 참고 링크

- [Lemon Squeezy 공식 문서](https://docs.lemonsqueezy.com/)
- [API 레퍼런스](https://docs.lemonsqueezy.com/api)
- [Webhook 가이드](https://docs.lemonsqueezy.com/guides/developer-guide/webhooks)
