"use client";

import { useState, useEffect } from "react";
import { motion } from "framer-motion";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import { Play, ChevronRight, Flame, Star, Loader2, Search, Settings } from "lucide-react";
import { LanguageSwitcher } from "@/components/ui/LanguageSwitcher";
import { AdminButton } from "@/components/admin/AdminButton";
import { useScrollRestoration } from "@/hooks/useScrollRestoration";
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

// 아티스트 데이터 타입
interface ArtistData {
    id: string;
    name: string;
    emoji: string;
    contentCount: number;
}

// 학습 콘텐츠 목록 페이지 - Supabase 연동
export default function LearnPage() {
    const t = useTranslations();
    const [artists, setArtists] = useState<ArtistData[]>([]);
    const [isLoading, setIsLoading] = useState(true);
    const [searchTerm, setSearchTerm] = useState(""); // 검색어 상태 추가

    // 스크롤 위치 복원 (뒤로 가기 시 리스트 위치 유지)
    useScrollRestoration("learn-page");

    // Supabase에서 아티스트별 콘텐츠 수 조회
    useEffect(() => {
        const fetchArtists = async () => {
            try {
                setIsLoading(true);

                // 콘텐츠 테이블에서 아티스트별 그룹핑
                const { data, error } = await supabase
                    .from('contents')
                    .select('artist_name')
                    .eq('is_published', true)
                    .limit(10000); // 전체 데이터 조회 (기본값 1000 제한 해제)

                if (error) throw error;

                if (data) {
                    // 아티스트별 콘텐츠 수 계산
                    const artistCounts: Record<string, number> = {};
                    data.forEach(item => {
                        const name = item.artist_name;
                        artistCounts[name] = (artistCounts[name] || 0) + 1;
                    });

                    // 아티스트 배열 생성
                    const artistList: ArtistData[] = Object.entries(artistCounts).map(([name, count]) => ({
                        id: name.toLowerCase().replace(/\s+/g, '-'),
                        name: name,
                        emoji: artistEmojis[name] || "🎵",
                        contentCount: count,
                    }));

                    // 아티스트 이름 알파벳순 정렬
                    artistList.sort((a, b) => a.name.localeCompare(b.name));
                    setArtists(artistList);
                }
            } catch (err) {
                console.error('Error fetching artists:', err);
            } finally {
                setIsLoading(false);
            }
        };

        fetchArtists();
    }, []);

    return (
        <main className="min-h-screen py-6 md:py-8 px-4 md:px-6">
            {/* 헤더 영역 */}
            <header className="max-w-6xl mx-auto mb-8 md:mb-12">
                <div className="flex items-center justify-between mb-6 md:mb-8">
                    <Link href="/" className="flex items-center gap-1 md:gap-2">
                        <span className="text-lg md:text-2xl font-bold bg-gradient-to-r from-[#FF007F] to-[#7C3AED] bg-clip-text text-transparent">
                            K-Dictation
                        </span>
                    </Link>

                    {/* 사용자 스탯 및 언어 선택 */}
                    <div className="flex items-center gap-2 md:gap-4">
                        <div className="flex items-center gap-1 md:gap-2 text-[#22C55E]">
                            <Flame className="w-4 h-4 md:w-5 md:h-5" />
                            <span className="font-bold text-sm md:text-base">3</span>
                        </div>
                        <div className="flex items-center gap-1 md:gap-2 text-[#F59E0B]">
                            <Star className="w-4 h-4 md:w-5 md:h-5" />
                            <span className="font-bold text-sm md:text-base">150 XP</span>
                        </div>
                        <AdminButton />
                        <Link
                            href="/settings"
                            className="p-2 text-zinc-400 hover:text-white transition-colors"
                            title={t("settings.title") || "Settings"}
                        >
                            <Settings className="w-5 h-5" />
                        </Link>
                        <LanguageSwitcher />
                    </div>
                </div>

                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                >
                    <h1 className="text-2xl md:text-4xl font-bold text-white mb-2 md:mb-4">
                        {t("learn.header")}
                    </h1>
                    <p className="text-sm md:text-lg text-gray-400">
                        {t("learn.subtitle")}
                    </p>
                </motion.div>
            </header>

            {/* 로딩 상태 */}
            {isLoading ? (
                <div className="max-w-6xl mx-auto flex items-center justify-center py-20">
                    <Loader2 className="w-8 h-8 text-rose-500 animate-spin" />
                </div>
            ) : (
                <>
                    {/* 아티스트 그리드 - Supabase 데이터 */}
                    <section className="max-w-6xl mx-auto">
                        {/* 검색창 */}
                        <div className="mb-6 md:mb-8 relative">
                            <Search className="absolute left-4 top-1/2 transform -translate-y-1/2 text-zinc-400 w-5 h-5" />
                            <input
                                type="text"
                                placeholder={t("learn.searchPlaceholder") || "Search artist..."}
                                value={searchTerm}
                                onChange={(e) => setSearchTerm(e.target.value)}
                                className="w-full bg-zinc-900 border border-zinc-800 rounded-xl py-4 pl-12 pr-4 text-white focus:outline-none focus:border-rose-500 transition-colors"
                            />
                        </div>

                        <div className="grid grid-cols-2 md:grid-cols-2 lg:grid-cols-3 gap-3 md:gap-6">
                            {artists
                                .filter(artist => artist.name.toLowerCase().includes(searchTerm.toLowerCase()))
                                .map((artist, index) => (
                                    <motion.div
                                        key={artist.id}
                                        initial={{ opacity: 0, y: 30 }}
                                        animate={{ opacity: 1, y: 0 }}
                                        transition={{ delay: index * 0.05 }}
                                    >
                                        <Link
                                            href={`/learn/${artist.id}`}
                                            className="card p-4 md:p-6 block group hover:border-[#FF007F]/50 transition-all hover:scale-[1.02]"
                                        >
                                            <div className="flex flex-col md:flex-row md:items-center md:justify-between gap-2 md:gap-0">
                                                <div className="flex items-center gap-3 md:gap-4">
                                                    <span className="text-2xl md:text-4xl">{artist.emoji}</span>
                                                    <div>
                                                        <h3 className="text-base md:text-xl font-bold text-white group-hover:text-[#FF007F] transition-colors">
                                                            {artist.name}
                                                        </h3>
                                                        <p className="text-gray-400 text-xs md:text-sm">
                                                            {artist.contentCount} {t("learn.contents")}
                                                        </p>
                                                    </div>
                                                </div>
                                                <ChevronRight className="hidden md:block w-6 h-6 text-gray-500 group-hover:text-[#FF007F] transition-colors" />
                                            </div>
                                        </Link>
                                    </motion.div>
                                ))}
                        </div>
                    </section>

                    {/* 빠른 시작 CTA */}
                    <section className="max-w-6xl mx-auto mt-8 md:mt-12">
                        <motion.div
                            initial={{ opacity: 0 }}
                            animate={{ opacity: 1 }}
                            transition={{ delay: 0.3 }}
                            className="card p-6 md:p-8 bg-gradient-to-r from-[#FF007F]/10 to-[#7C3AED]/10 text-center"
                        >
                            <h2 className="text-lg md:text-2xl font-bold text-white mb-2 md:mb-4">
                                {t("learn.randomChallenge.title")}
                            </h2>
                            <p className="text-sm md:text-base text-gray-400 mb-4 md:mb-6">
                                {t("learn.randomChallenge.description")}
                            </p>
                            <Link
                                href="/learn/random"
                                className="btn-primary px-6 md:px-8 py-2 md:py-3 text-white font-bold text-sm md:text-base inline-flex items-center gap-2"
                            >
                                <Play className="w-4 h-4 md:w-5 md:h-5" />
                                {t("learn.randomChallenge.button")}
                            </Link>
                        </motion.div>
                    </section>
                </>
            )}
        </main>
    );
}
