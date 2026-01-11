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
    title: string;
    difficulty: string;
    youtubeId: string;
    xp: number;
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
                    .order('created_at', { ascending: false });

                if (error) throw error;

                if (data && data.length > 0) {
                    // 아티스트 이름 설정
                    const name = data[0].artist_name;
                    setArtistName(name);
                    setArtistEmoji(artistEmojis[name] || "🎵");

                    // 콘텐츠 데이터 변환
                    const contentList: ContentData[] = data.map((item, index) => ({
                        id: `content-${index + 1}`,
                        title: item.title,
                        difficulty: item.difficulty || 'normal',
                        youtubeId: item.youtube_id,
                        xp: item.difficulty === 'easy' ? 50 : item.difficulty === 'hard' ? 120 : 80,
                    }));

                    setContents(contentList);
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

    // 난이도별 색상
    const difficultyColor: Record<string, string> = {
        easy: "text-[#22C55E] border-[#22C55E]",
        normal: "text-[#F59E0B] border-[#F59E0B]",
        hard: "text-[#EF4444] border-[#EF4444]",
    };

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
                            {contents.length} {t("learn.contents")} • {contents.reduce((acc, c) => acc + c.xp, 0)} {t("learn.totalXP")}
                        </p>
                    </div>
                </motion.div>
            </header>

            {/* 콘텐츠 목록 */}
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
                    <div className="space-y-3 md:space-y-4">
                        {contents.map((content, index) => (
                            <motion.div
                                key={content.id}
                                initial={{ opacity: 0, x: -20 }}
                                animate={{ opacity: 1, x: 0 }}
                                transition={{ delay: index * 0.05 }}
                            >
                                <Link
                                    href={`/learn/${artistId}/${content.id}`}
                                    className="card p-4 md:p-6 flex items-center justify-between group hover:border-[#FF007F]/50 transition-all"
                                >
                                    <div className="flex items-center gap-3 md:gap-6">
                                        {/* 재생 버튼 */}
                                        <div className="w-10 h-10 md:w-14 md:h-14 rounded-full bg-gradient-to-r from-[#FF007F] to-[#7C3AED] flex items-center justify-center group-hover:scale-110 transition-transform flex-shrink-0">
                                            <Play className="w-4 h-4 md:w-6 md:h-6 text-white ml-0.5" />
                                        </div>

                                        <div>
                                            <h3 className="text-sm md:text-lg font-semibold text-white group-hover:text-[#FF007F] transition-colors">
                                                {content.title}
                                            </h3>
                                            <div className="flex items-center gap-2 md:gap-4 mt-1 text-xs md:text-sm text-gray-400">
                                                <span className="flex items-center gap-1">
                                                    <Clock className="w-3 h-3 md:w-4 md:h-4" />
                                                    ~5분
                                                </span>
                                                <span className={`px-1.5 md:px-2 py-0.5 border rounded-full text-xs ${difficultyColor[content.difficulty]}`}>
                                                    {t(`difficulty.${content.difficulty}`)}
                                                </span>
                                            </div>
                                        </div>
                                    </div>

                                    {/* XP 표시 */}
                                    <div className="flex items-center gap-1 md:gap-2 text-[#F59E0B]">
                                        <Star className="w-4 h-4 md:w-5 md:h-5" />
                                        <span className="font-bold text-sm md:text-base">{content.xp}</span>
                                    </div>
                                </Link>
                            </motion.div>
                        ))}
                    </div>
                )}
            </section>
        </main>
    );
}
