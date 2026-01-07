// 앱 레이아웃 (Protected Routes) - 로그인 필요 영역
import type { Metadata } from "next";
import { setRequestLocale } from "next-intl/server";

export const metadata: Metadata = {
    title: "Learn",
    description: "Learn Korean with K-Dictation!",
};

// 앱 영역 레이아웃 컴포넌트
export default async function AppLayout({
    children,
    params,
}: {
    children: React.ReactNode;
    params: Promise<{ locale: string }>;
}) {
    const { locale } = await params;
    setRequestLocale(locale);

    return (
        <div className="min-h-screen">
            <main>{children}</main>
        </div>
    );
}
