// Lemon Squeezy 유틸리티 함수

// Checkout URL 생성 (사용자 ID 포함)
export function createCheckoutUrl(userId: string): string {
    const baseUrl = "https://kdictation.lemonsqueezy.com/checkout/buy/4f3fa870-4bf6-4a4b-ad6e-04b9b577503c";

    // custom_data로 사용자 ID 전달
    const params = new URLSearchParams({
        "checkout[custom][user_id]": userId,
    });

    return `${baseUrl}?${params.toString()}`;
}

// Lemon Squeezy API 클라이언트 (서버 전용)
export async function getLemonSqueezySubscription(subscriptionId: string) {
    const apiKey = process.env.LEMONSQUEEZY_API_KEY;
    if (!apiKey) {
        throw new Error("LEMONSQUEEZY_API_KEY is not set");
    }

    const response = await fetch(
        `https://api.lemonsqueezy.com/v1/subscriptions/${subscriptionId}`,
        {
            headers: {
                Accept: "application/vnd.api+json",
                "Content-Type": "application/vnd.api+json",
                Authorization: `Bearer ${apiKey}`,
            },
        }
    );

    if (!response.ok) {
        throw new Error(`Lemon Squeezy API error: ${response.status}`);
    }

    return response.json();
}

// 구독 취소
export async function cancelSubscription(subscriptionId: string) {
    const apiKey = process.env.LEMONSQUEEZY_API_KEY;
    if (!apiKey) {
        throw new Error("LEMONSQUEEZY_API_KEY is not set");
    }

    const response = await fetch(
        `https://api.lemonsqueezy.com/v1/subscriptions/${subscriptionId}`,
        {
            method: "DELETE",
            headers: {
                Accept: "application/vnd.api+json",
                Authorization: `Bearer ${apiKey}`,
            },
        }
    );

    if (!response.ok) {
        throw new Error(`Failed to cancel subscription: ${response.status}`);
    }

    return response.json();
}

// 환경 변수 타입
export interface LemonSqueezyConfig {
    apiKey: string;
    storeId: string;
    productId: string;
    webhookSecret: string;
}

export function getLemonSqueezyConfig(): LemonSqueezyConfig {
    const apiKey = process.env.LEMONSQUEEZY_API_KEY;
    const storeId = process.env.LEMONSQUEEZY_STORE_ID;
    const productId = process.env.LEMONSQUEEZY_PRODUCT_ID;
    const webhookSecret = process.env.LEMONSQUEEZY_WEBHOOK_SECRET;

    if (!apiKey || !storeId || !productId || !webhookSecret) {
        throw new Error("Missing Lemon Squeezy environment variables");
    }

    return { apiKey, storeId, productId, webhookSecret };
}
