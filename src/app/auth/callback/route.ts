// OAuth 인증 콜백 처리 - 소셜 로그인 후 리다이렉트
import { createClient } from "@/lib/supabase/server";
import { NextResponse } from "next/server";
import type { NextRequest } from "next/server";

export async function GET(request: NextRequest) {
    const requestUrl = new URL(request.url);
    const code = requestUrl.searchParams.get("code");
    const locale = requestUrl.searchParams.get("locale") || "en";
    const origin = requestUrl.origin;

    if (code) {
        const supabase = await createClient();

        // OAuth 코드를 세션으로 교환
        const { error } = await supabase.auth.exchangeCodeForSession(code);

        if (error) {
            console.error("OAuth 콜백 에러:", error.message);
            // 에러 시 홈으로 리다이렉트
            return NextResponse.redirect(`${origin}/${locale}?error=auth_failed`);
        }
    }

    // 로그인 성공 시 학습 페이지로 리다이렉트
    return NextResponse.redirect(`${origin}/${locale}/learn`);
}
