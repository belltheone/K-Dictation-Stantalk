"use client";

import { useState, useEffect } from "react";
import { motion } from "framer-motion";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import { useParams } from "next/navigation";
import { Play, ChevronLeft, Clock, Star, Loader2, Music } from "lucide-react";
import { createClient } from "@supabase/supabase-js";

// Supabase 클라이언트 생성
const supabase = createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

// 아티스트 이모지 매핑
const artistEmojis: Record<string, string> = {
    "BTS": "💜",
    "NewJeans": "🐰",
    "BLACKPINK": "💖",
    "Stray Kids": "🖤",
    "SEVENTEEN": "💎",
    "IVE": "🌟",
    "aespa": "✨",
    "TWICE": "🍭",
    "LE SSERAFIM": "🦋",
    "ITZY": "💫",
    "G-IDLE": "🔥",
    "ENHYPEN": "🌙",
    "TXT": "💙",
    "Red Velvet": "❤️",
    "NCT 127": "🌿",
    "NCT DREAM": "💚",
    "ATEEZ": "⚓",
    "ILLIT": "🩷",
};

// 콘텐츠 타입
interface ContentData {
    id: string;
    displayId?: string;
    title: string;
    difficulty: string;
    youtubeId: string;
    xp: number;
    stage_number: number;
    difficulty_score: number;
    is_locked: boolean;
    thumbnail_url?: string;
}

// 특정 아티스트의 콘텐츠 목록 페이지 - Supabase 연동
export default function ArtistPage() {
    const params = useParams();
    const artistId = params.artistId as string;
    const t = useTranslations();

    const [isLoading, setIsLoading] = useState(true);
    const [artistName, setArtistName] = useState<string>("");
    const [artistEmoji, setArtistEmoji] = useState<string>("🎤");
    const [contents, setContents] = useState<ContentData[]>([]);

    // Supabase에서 아티스트 콘텐츠 조회
    useEffect(() => {
        const fetchContents = async () => {
            try {
                setIsLoading(true);

                // URL에서 아티스트 이름 복원
                const decodedArtistId = decodeURIComponent(artistId);
                const searchName = decodedArtistId.replace(/-/g, ' ');

                // 콘텐츠 조회 - 대소문자 무시 검색
                const { data, error } = await supabase
                    .from('contents')
                    .select('*')
                    .ilike('artist_name', `%${searchName}%`)
                    .eq('is_published', true)
                    .order('stage_number', { ascending: true }) // 스테이지 순 정렬
                    .order('created_at', { ascending: false }); // Fallback

                if (error) throw error;

                if (data && data.length > 0) {
                    // 아티스트 이름 설정
                    const name = data[0].artist_name;
                    setArtistName(name);
                    setArtistEmoji(artistEmojis[name] || "🎵");

                    // 콘텐츠 데이터 변환
                    const contentList: ContentData[] = data.map((item, index) => ({
                        id: item.id, // Use real ID for key
                        displayId: `content-${index + 1}`, // Assuming slug routing relies on this index logic or we need to fix routing too.
                        // Wait, previous routing was `content-${index+1}`. If we want to keep that working without changing dynamic route structure, we keep it.
                        // But StageMap links to displayId.
                        title: item.title,
                        difficulty: item.difficulty || 'normal',
                        youtubeId: item.youtube_id,
                        xp: item.difficulty === 'easy' ? 50 : item.difficulty === 'hard' ? 120 : 80,
                        stage_number: item.stage_number || (index + 1), // Fallback if null
                        difficulty_score: item.difficulty_score || 0,
                        is_locked: item.is_locked,
                        thumbnail_url: item.thumbnail_url
                    }));

                    // Force unlock first stage if all are locked (safety)
                    if (contentList.length > 0 && contentList.every(c => c.is_locked)) {
                        contentList[0].is_locked = false;
                    }

                    // @ts-ignore - ContentData type in this file needs update or we cast
                    setContents(contentList as any);
                } else {
                    // 아티스트를 찾지 못한 경우
                    setArtistName(searchName);
                }
            } catch (err) {
                console.error('Error fetching contents:', err);
            } finally {
                setIsLoading(false);
            }
        };

        fetchContents();
    }, [artistId]);

    // 로딩 상태
    if (isLoading) {
        return (
            <main className="min-h-screen flex items-center justify-center">
                <Loader2 className="w-8 h-8 text-rose-500 animate-spin" />
            </main>
        );
    }

    return (
        <main className="min-h-screen py-6 md:py-8 px-4 md:px-6">
            {/* 헤더 */}
            <header className="max-w-4xl mx-auto mb-8 md:mb-12">
                <Link
                    href="/learn"
                    className="inline-flex items-center gap-1 md:gap-2 text-gray-400 hover:text-white transition-colors mb-4 md:mb-6 text-sm md:text-base"
                >
                    <ChevronLeft className="w-4 h-4 md:w-5 md:h-5" />
                    <span>{t("learn.artistList")}</span>
                </Link>

                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    className="flex items-center gap-3 md:gap-4"
                >
                    <span className="text-4xl md:text-6xl">{artistEmoji}</span>
                    <div>
                        <h1 className="text-2xl md:text-4xl font-bold text-white mb-1 md:mb-2">
                            {artistName}
                        </h1>
                        <p className="text-sm md:text-base text-gray-400">
                            {contents.length} Stages • {contents.reduce((acc, c) => acc + c.xp, 0)} {t("learn.totalXP")}
                        </p>
                    </div>
                </motion.div>
            </header>

            {/* 스테이지 맵 */}
            <section className="max-w-4xl mx-auto">
                {contents.length === 0 ? (
                    <div className="text-center py-12">
                        <Music className="w-16 h-16 text-zinc-600 mx-auto mb-4" />
                        <p className="text-zinc-400">콘텐츠가 없습니다</p>
                        <Link href="/learn" className="text-rose-500 hover:underline mt-2 inline-block">
                            다른 아티스트 선택하기
                        </Link>
                    </div>
                ) : (
                    // @ts-ignore - passing compatible types
                    <StageMap contents={contents} artistId={artistId} />
                )}
            </section>
        </main>
    );
}

// Helper component import
import { StageMap } from "@/components/stage-map";
