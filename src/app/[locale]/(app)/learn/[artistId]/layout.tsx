import type { Metadata } from "next";

// 동적 메타데이터 생성 - 아티스트 이름 기반 SEO 최적화
export async function generateMetadata({
    params
}: {
    params: Promise<{ locale: string; artistId: string }>
}): Promise<Metadata> {
    const { artistId } = await params;

    // URL에서 아티스트 이름 복원
    const artistName = decodeURIComponent(artistId)
        .split('-')
        .map(word => word.charAt(0).toUpperCase() + word.slice(1))
        .join(' ');

    return {
        title: `${artistName} - K-Dictation`,
        description: `Learn Korean with ${artistName}! Practice listening and vocabulary through K-Pop content.`,
        openGraph: {
            title: `Learn Korean with ${artistName} | K-Dictation`,
            description: `Master Korean through ${artistName}'s content. Fun, engaging K-Pop dictation practice.`,
            type: "website",
        },
        twitter: {
            card: "summary_large_image",
            title: `${artistName} - K-Dictation`,
            description: `Learn Korean with ${artistName}! K-Pop based language learning.`,
        },
    };
}

export default function ArtistLayout({
    children,
}: {
    children: React.ReactNode;
}) {
    return <>{children}</>;
}
