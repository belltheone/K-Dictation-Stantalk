"use client";

// 관리자용 Admin 버튼 - 관리자 이메일이면 표시
import { useState, useEffect } from "react";
import { Link } from "@/i18n/navigation";
import { Settings } from "lucide-react";
import { isAdmin } from "@/lib/auth/admin";

export function AdminButton() {
    const [showButton, setShowButton] = useState(false);

    useEffect(() => {
        checkAdmin();
    }, []);

    const checkAdmin = async () => {
        const adminCheck = await isAdmin();
        setShowButton(adminCheck);
    };

    if (!showButton) return null;

    return (
        <Link
            href="/admin"
            className="flex items-center gap-1 md:gap-2 px-2 md:px-3 py-1.5 md:py-2 rounded-full border border-[#7C3AED]/50 bg-[#7C3AED]/10 hover:bg-[#7C3AED]/20 text-[#7C3AED] transition-colors text-sm"
            title="Admin Dashboard"
        >
            <Settings className="w-4 h-4" />
            <span className="hidden sm:inline">Admin</span>
        </Link>
    );
}
