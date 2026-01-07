// 앱 레이아웃 (Protected Routes) - 로그인 필요 영역
import type { Metadata } from "next";

export const metadata: Metadata = {
    title: "학습하기",
    description: "K-Dictation으로 한국어를 배워보세요!",
};

// 앱 영역 레이아웃 컴포넌트
export default function AppLayout({
    children,
}: {
    children: React.ReactNode;
}) {
    return (
        <div className="min-h-screen">
            {/* 추후 네비게이션 바 추가 예정 */}
            <main>{children}</main>
        </div>
    );
}
