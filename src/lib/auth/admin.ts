"use server";

// 관리자 권한 확인 유틸리티
import { createClient } from "@/lib/supabase/server";

// 환경 변수에서 관리자 이메일 목록 가져오기
const getAdminEmails = (): string[] => {
    const adminEmails = process.env.ADMIN_EMAILS || "";
    return adminEmails.split(",").map(email => email.trim().toLowerCase()).filter(Boolean);
};

// 현재 사용자가 관리자인지 확인
export async function isAdmin(): Promise<boolean> {
    const supabase = await createClient();

    const { data: { user } } = await supabase.auth.getUser();

    if (!user || !user.email) {
        return false;
    }

    const adminEmails = getAdminEmails();
    return adminEmails.includes(user.email.toLowerCase());
}

// 관리자 사용자 정보 가져오기 (권한 없으면 null)
export async function getAdminUser() {
    const supabase = await createClient();

    const { data: { user } } = await supabase.auth.getUser();

    if (!user || !user.email) {
        return null;
    }

    const adminEmails = getAdminEmails();

    if (!adminEmails.includes(user.email.toLowerCase())) {
        return null;
    }

    return user;
}
