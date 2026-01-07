import type { Metadata } from "next";
import { Inter, Montserrat } from "next/font/google";
import { ThemeProvider } from "next-themes";
import "./globals.css";

// 폰트 설정 - 영문 타이틀용 Montserrat, 본문용 Inter
const inter = Inter({
  variable: "--font-inter",
  subsets: ["latin"],
  display: "swap",
});

const montserrat = Montserrat({
  variable: "--font-montserrat",
  subsets: ["latin"],
  display: "swap",
  weight: ["400", "600", "700", "800"],
});

// 메타데이터 설정
export const metadata: Metadata = {
  title: {
    default: "K-Dictation : Stantalk",
    template: "%s | K-Dictation",
  },
  description: "The most addictive way to learn Korean through K-Pop & K-Drama. 케이팝과 케이드라마로 한국어를 배우는 가장 중독적인 방법!",
  keywords: ["한국어 학습", "K-Pop", "K-Drama", "받아쓰기", "Korean learning", "dictation"],
  authors: [{ name: "Stantalk Team" }],
  openGraph: {
    title: "K-Dictation : Stantalk",
    description: "Learn Korean with your favorite idols!",
    type: "website",
    locale: "ko_KR",
  },
  twitter: {
    card: "summary_large_image",
    title: "K-Dictation : Stantalk",
    description: "Learn Korean with your favorite idols!",
  },
};

// 루트 레이아웃 컴포넌트
export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="ko" suppressHydrationWarning>
      <body
        className={`${inter.variable} ${montserrat.variable} antialiased min-h-screen`}
      >
        {/* 다크 모드 테마 프로바이더 */}
        <ThemeProvider
          attribute="class"
          defaultTheme="dark"
          enableSystem={false}
          disableTransitionOnChange
        >
          {children}
        </ThemeProvider>
      </body>
    </html>
  );
}
