"use server";

// Supabase 인증 관련 Server Actions
import { createClient } from "@/lib/supabase/server";
import { redirect } from "next/navigation";

// 지원하는 OAuth 제공자 타입
type OAuthProvider = "google" | "x" | "apple";

// 소셜 로그인 - OAuth 로그인 URL로 리다이렉트
export async function signInWithOAuth(provider: OAuthProvider, locale: string = "en") {
    const supabase = await createClient();

    const { data, error } = await supabase.auth.signInWithOAuth({
        provider,
        options: {
            redirectTo: `${process.env.NEXT_PUBLIC_APP_URL}/auth/callback?locale=${locale}`,
        },
    });

    if (error) {
        console.error("OAuth 로그인 에러:", error.message);
        return { error: error.message };
    }

    if (data.url) {
        redirect(data.url);
    }
}

// 이메일 Magic Link 로그인
export async function signInWithEmail(email: string, locale: string = "en") {
    const supabase = await createClient();

    const { error } = await supabase.auth.signInWithOtp({
        email,
        options: {
            emailRedirectTo: `${process.env.NEXT_PUBLIC_APP_URL}/auth/callback?locale=${locale}`,
        },
    });

    if (error) {
        console.error("이메일 로그인 에러:", error.message);
        return { success: false, error: error.message };
    }

    return { success: true };
}

// 이메일/패스워드 회원가입
export async function signUpWithEmail(email: string, password: string, locale: string = "en") {
    const supabase = await createClient();

    const { error } = await supabase.auth.signUp({
        email,
        password,
        options: {
            emailRedirectTo: `${process.env.NEXT_PUBLIC_APP_URL}/auth/callback?locale=${locale}`,
        },
    });

    if (error) {
        console.error("회원가입 에러:", error.message);
        return { success: false, error: error.message };
    }

    return { success: true };
}

// 이메일/패스워드 로그인
export async function signInWithPassword(email: string, password: string) {
    const supabase = await createClient();

    const { error } = await supabase.auth.signInWithPassword({
        email,
        password,
    });

    if (error) {
        console.error("로그인 에러:", error.message);
        return { success: false, error: error.message };
    }

    return { success: true };
}

// 로그아웃
export async function signOut() {
    const supabase = await createClient();

    const { error } = await supabase.auth.signOut();

    if (error) {
        console.error("로그아웃 에러:", error.message);
        return { success: false, error: error.message };
    }

    return { success: true };
}

// 현재 사용자 정보 가져오기
export async function getCurrentUser() {
    const supabase = await createClient();

    const { data: { user }, error } = await supabase.auth.getUser();

    if (error || !user) {
        return null;
    }

    return user;
}

// 사용자 프로필 가져오기 (users 테이블에서)
export async function getUserProfile() {
    const supabase = await createClient();

    const { data: { user } } = await supabase.auth.getUser();

    if (!user) {
        return null;
    }

    const { data: profile, error } = await supabase
        .from("users")
        .select("*")
        .eq("id", user.id)
        .single();

    if (error) {
        // 프로필이 없으면 새로 생성
        if (error.code === "PGRST116") {
            return await createUserProfile(user.id, user.email || "User");
        }
        console.error("프로필 조회 에러:", error.message);
        return null;
    }

    return profile;
}

// 새 사용자 프로필 생성
async function createUserProfile(userId: string, email: string) {
    const supabase = await createClient();

    // 이메일에서 기본 username 생성
    const username = email.split("@")[0] + "_" + Math.random().toString(36).slice(2, 6);

    const { data, error } = await supabase
        .from("users")
        .insert({
            id: userId,
            username,
            xp: 0,
            streak_count: 0,
            subscription_tier: "free",
        })
        .select()
        .single();

    if (error) {
        console.error("프로필 생성 에러:", error.message);
        return null;
    }

    return data;
}

// XP 증가
export async function addXP(amount: number) {
    const supabase = await createClient();
    const { data: { user } } = await supabase.auth.getUser();

    if (!user) return null;

    // 현재 XP 조회
    const { data: profile } = await supabase
        .from("users")
        .select("xp")
        .eq("id", user.id)
        .single();

    if (!profile) return null;

    // XP 업데이트
    const { data, error } = await supabase
        .from("users")
        .update({ xp: profile.xp + amount })
        .eq("id", user.id)
        .select()
        .single();

    if (error) {
        console.error("XP 업데이트 에러:", error.message);
        return null;
    }

    return data;
}

// 스트릭 업데이트
export async function updateStreak() {
    const supabase = await createClient();
    const { data: { user } } = await supabase.auth.getUser();

    if (!user) return null;

    const today = new Date().toISOString().split("T")[0];

    // 현재 프로필 조회
    const { data: profile } = await supabase
        .from("users")
        .select("streak_count, last_study_date")
        .eq("id", user.id)
        .single();

    if (!profile) return null;

    let newStreakCount = profile.streak_count;

    // 마지막 학습일이 어제면 스트릭 증가
    if (profile.last_study_date) {
        const lastDate = new Date(profile.last_study_date);
        const todayDate = new Date(today);
        const diffDays = Math.floor((todayDate.getTime() - lastDate.getTime()) / (1000 * 60 * 60 * 24));

        if (diffDays === 1) {
            newStreakCount += 1;
        } else if (diffDays > 1) {
            newStreakCount = 1; // 스트릭 리셋
        }
        // diffDays === 0 이면 오늘 이미 학습했으므로 유지
    } else {
        newStreakCount = 1; // 첫 학습
    }

    // 업데이트
    const { data, error } = await supabase
        .from("users")
        .update({
            streak_count: newStreakCount,
            last_study_date: today,
        })
        .eq("id", user.id)
        .select()
        .single();

    if (error) {
        console.error("스트릭 업데이트 에러:", error.message);
        return null;
    }

    return data;
}
