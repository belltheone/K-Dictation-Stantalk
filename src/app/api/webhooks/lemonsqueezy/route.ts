import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@supabase/supabase-js";
import crypto from "crypto";

// Lemon Squeezy Webhook Handler
// 결제 완료 시 사용자의 구독 상태를 업데이트합니다.

// Supabase Admin Client (서버 전용)
const supabase = createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.SUPABASE_SERVICE_ROLE_KEY!
);

// Webhook 서명 검증
function verifyWebhookSignature(payload: string, signature: string): boolean {
    const secret = process.env.LEMONSQUEEZY_WEBHOOK_SECRET;
    if (!secret) {
        console.error("LEMONSQUEEZY_WEBHOOK_SECRET is not set");
        return false;
    }

    const hmac = crypto.createHmac("sha256", secret);
    const digest = hmac.update(payload).digest("hex");
    return crypto.timingSafeEqual(Buffer.from(digest), Buffer.from(signature));
}

export async function POST(request: NextRequest) {
    try {
        // Raw body 읽기
        const rawBody = await request.text();
        const signature = request.headers.get("x-signature") || "";

        // 서명 검증
        if (!verifyWebhookSignature(rawBody, signature)) {
            console.error("Invalid webhook signature");
            return NextResponse.json({ error: "Invalid signature" }, { status: 401 });
        }

        const payload = JSON.parse(rawBody);
        const eventName = payload.meta?.event_name;
        const customData = payload.meta?.custom_data;
        const subscriptionData = payload.data?.attributes;

        console.log(`Lemon Squeezy webhook received: ${eventName}`);

        // 사용자 ID 확인 (custom_data에서 전달됨)
        const userId = customData?.user_id;
        if (!userId) {
            console.error("No user_id in custom_data");
            return NextResponse.json({ error: "Missing user_id" }, { status: 400 });
        }

        // 이벤트 처리
        switch (eventName) {
            case "subscription_created":
            case "subscription_updated":
                // 구독 활성화 - Pro로 업그레이드
                const status = subscriptionData?.status;
                const isActive = status === "active" || status === "on_trial";

                await supabase
                    .from("users")
                    .update({
                        subscription_tier: isActive ? "pro" : "free",
                        updated_at: new Date().toISOString(),
                    })
                    .eq("id", userId);

                console.log(`User ${userId} subscription updated to ${isActive ? "pro" : "free"}`);
                break;

            case "subscription_cancelled":
            case "subscription_expired":
                // 구독 취소/만료 - Free로 다운그레이드
                await supabase
                    .from("users")
                    .update({
                        subscription_tier: "free",
                        updated_at: new Date().toISOString(),
                    })
                    .eq("id", userId);

                console.log(`User ${userId} subscription cancelled`);
                break;

            default:
                console.log(`Unhandled event: ${eventName}`);
        }

        return NextResponse.json({ received: true });
    } catch (error) {
        console.error("Webhook error:", error);
        return NextResponse.json({ error: "Webhook processing failed" }, { status: 500 });
    }
}

// GET 요청 처리 (Health check)
export async function GET() {
    return NextResponse.json({ status: "Lemon Squeezy webhook endpoint is active" });
}
