import type { Metadata } from "next";
import { Inter, Montserrat } from "next/font/google";
import { NextIntlClientProvider } from "next-intl";
import { getMessages, setRequestLocale } from "next-intl/server";
import { ThemeProvider } from "next-themes";
import { routing } from "@/i18n/routing";
import { GoogleAnalytics } from "@/lib/analytics";
import Script from "next/script";
import "../globals.css";
import { Footer } from "@/components/layout/Footer";
import { InstallPrompt } from "@/components/pwa/InstallPrompt";

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
    description: "The most addictive way to learn Korean through K-Pop & K-Drama.",
    keywords: ["Korean learning", "K-Pop", "K-Drama", "dictation", "한국어 학습"],
    authors: [{ name: "Stantalk Team" }],
    manifest: "/manifest.json",
    appleWebApp: {
        capable: true,
        statusBarStyle: "black-translucent",
        title: "K-Dictation",
    },
    openGraph: {
        title: "K-Dictation : Stantalk",
        description: "Learn Korean with your favorite idols!",
        type: "website",
        siteName: "K-Dictation",
    },
    twitter: {
        card: "summary_large_image",
        title: "K-Dictation : Stantalk",
        description: "Learn Korean with your favorite idols!",
    },
    // Google AdSense 인증
    other: {
        "google-adsense-account": "ca-pub-5965391983551048",
    },
};

// Viewport 설정 (모바일 최적화)
export function generateViewport() {
    return {
        width: "device-width",
        initialScale: 1,
        maximumScale: 1,
        themeColor: "#FF007F",
    };
}

// 정적 생성용 로케일 파라미터 생성
export function generateStaticParams() {
    return routing.locales.map((locale) => ({ locale }));
}

// 로케일 레이아웃 컴포넌트
export default async function LocaleLayout({
    children,
    params,
}: {
    children: React.ReactNode;
    params: Promise<{ locale: string }>;
}) {
    const { locale } = await params;

    // 정적 렌더링 활성화
    setRequestLocale(locale);

    // 메시지 로드
    const messages = await getMessages();

    return (
        <html lang={locale} suppressHydrationWarning>
            <head>
                {/* Google AdSense 스크립트 */}
                <Script
                    async
                    src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-5965391983551048"
                    crossOrigin="anonymous"
                    strategy="afterInteractive"
                />
            </head>
            <body
                className={`${inter.variable} ${montserrat.variable} antialiased min-h-screen`}
            >
                <GoogleAnalytics />
                <NextIntlClientProvider messages={messages}>
                    <ThemeProvider
                        attribute="class"
                        defaultTheme="dark"
                        enableSystem={false}
                        disableTransitionOnChange
                    >
                        <div className="flex flex-col min-h-screen">
                            <div className="flex-1">
                                {children}
                            </div>
                            <Footer />
                            <InstallPrompt />
                        </div>
                    </ThemeProvider>
                </NextIntlClientProvider>
            </body>
        </html>
    );
}

