// Supabase Edge Function: 스트릭 리마인더 이메일
// supabase/functions/streak-reminder/index.ts

import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2";

const corsHeaders = {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
};

serve(async (req) => {
    // CORS 처리
    if (req.method === "OPTIONS") {
        return new Response("ok", { headers: corsHeaders });
    }

    try {
        const supabaseUrl = Deno.env.get("SUPABASE_URL")!;
        const supabaseServiceKey = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!;
        const resendApiKey = Deno.env.get("RESEND_API_KEY");

        const supabase = createClient(supabaseUrl, supabaseServiceKey);

        // 어제 학습하지 않은 사용자 찾기 (스트릭 위험)
        const yesterday = new Date();
        yesterday.setDate(yesterday.getDate() - 1);
        const yesterdayStr = yesterday.toISOString().split("T")[0];

        const { data: usersAtRisk, error } = await supabase
            .from("users")
            .select("id, username, streak_count")
            .eq("last_study_date", yesterdayStr)
            .gt("streak_count", 0);

        if (error) {
            throw error;
        }

        console.log(`Found ${usersAtRisk?.length || 0} users at risk of losing streak`);

        // 이메일 발송 (Resend API 사용 시)
        if (resendApiKey && usersAtRisk && usersAtRisk.length > 0) {
            for (const user of usersAtRisk) {
                // 사용자 이메일 조회
                const { data: authUser } = await supabase.auth.admin.getUserById(user.id);
                const email = authUser?.user?.email;

                if (!email) continue;

                // Resend로 이메일 발송
                await fetch("https://api.resend.com/emails", {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/json",
                        Authorization: `Bearer ${resendApiKey}`,
                    },
                    body: JSON.stringify({
                        from: "K-Dictation <noreply@kdictation.com>",
                        to: [email],
                        subject: `🔥 ${user.streak_count}일 스트릭을 유지하세요!`,
                        html: `
                            <div style="font-family: sans-serif; max-width: 600px; margin: 0 auto;">
                                <h1 style="color: #FF007F;">안녕하세요, ${user.username}님! 👋</h1>
                                <p>오늘 K-Dictation에서 학습하지 않으셨네요!</p>
                                <p style="font-size: 24px; color: #FF007F; font-weight: bold;">
                                    🔥 현재 스트릭: ${user.streak_count}일
                                </p>
                                <p>오늘 학습하지 않으면 스트릭이 초기화됩니다. 지금 바로 시작하세요!</p>
                                <a href="https://kdictationstantalk.vercel.app/learn" 
                                   style="display: inline-block; background: linear-gradient(135deg, #FF007F, #7C3AED); 
                                          color: white; padding: 12px 24px; border-radius: 9999px; 
                                          text-decoration: none; font-weight: bold; margin-top: 16px;">
                                    지금 학습하기 →
                                </a>
                                <p style="color: #888; margin-top: 32px; font-size: 12px;">
                                    이 이메일은 K-Dictation에서 발송되었습니다.
                                </p>
                            </div>
                        `,
                    }),
                });

                console.log(`Sent reminder email to ${email}`);
            }
        }

        return new Response(
            JSON.stringify({
                success: true,
                usersNotified: usersAtRisk?.length || 0,
            }),
            {
                headers: { ...corsHeaders, "Content-Type": "application/json" },
            }
        );
    } catch (error) {
        console.error("Error:", error);
        return new Response(
            JSON.stringify({ error: error.message }),
            {
                status: 500,
                headers: { ...corsHeaders, "Content-Type": "application/json" },
            }
        );
    }
});
