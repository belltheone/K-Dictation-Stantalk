// 루트 레이아웃 - auth 같은 글로벌 라우트를 위한 최소 레이아웃
export default function RootLayout({
    children,
}: {
    children: React.ReactNode;
}) {
    return children;
}
