"use client";

import { useState, useEffect } from "react";
import { motion } from "framer-motion";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import { ChevronLeft, Bookmark, Trash2, Play, Loader2 } from "lucide-react";
import { createClient } from "@supabase/supabase-js";

// Supabase 클라이언트 생성
const supabase = createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

// 아티스트 이모지 매핑
const artistEmojis: Record<string, string> = {
    "BTS": "💜", "NewJeans": "🐰", "BLACKPINK": "💖", "Stray Kids": "🖤",
    "SEVENTEEN": "💎", "IVE": "🌟", "aespa": "✨", "TWICE": "🍭",
    "LE SSERAFIM": "🦋", "ITZY": "💫", "G-IDLE": "🔥", "ENHYPEN": "🌙",
    "TXT": "💙", "Red Velvet": "❤️", "NCT 127": "🌿", "NCT DREAM": "💚",
    "ATEEZ": "⚓", "ILLIT": "🩷",
};

interface BookmarkItem {
    id: string;
    artistName: string;
    artistId: string;
    contentTitle: string;
    difficulty: string;
    emoji: string;
}

// 북마크 페이지 - Supabase 연동
export default function BookmarksPage() {
    const t = useTranslations();
    const [bookmarks, setBookmarks] = useState<BookmarkItem[]>([]);
    const [isLoading, setIsLoading] = useState(true);

    // Supabase에서 북마크 데이터 가져오기
    useEffect(() => {
        const fetchBookmarks = async () => {
            try {
                setIsLoading(true);

                // 현재 사용자의 북마크 조회
                const { data: { user } } = await supabase.auth.getUser();

                if (!user) {
                    // 로그인하지 않은 경우 빈 목록
                    setBookmarks([]);
                    return;
                }

                // vocab 테이블에서 북마크 가져오기
                const { data, error } = await supabase
                    .from('vocab')
                    .select(`
                        id,
                        word,
                        meaning,
                        challenges (
                            content_id,
                            full_sentence,
                            contents (
                                title,
                                artist_name,
                                difficulty
                            )
                        )
                    `)
                    .eq('user_id', user.id)
                    .order('created_at', { ascending: false })
                    .limit(20);

                if (error) throw error;

                if (data) {
                    const bookmarkList: BookmarkItem[] = data.map((item) => {
                        // Supabase 조인 결과는 배열일 수 있음
                        const challengeData = item.challenges as unknown;
                        const challenge = Array.isArray(challengeData) ? challengeData[0] : challengeData;
                        const contentData = challenge?.contents as unknown;
                        const content = Array.isArray(contentData) ? contentData[0] : contentData;
                        const artistName = (content as { artist_name?: string })?.artist_name || 'Unknown';

                        return {
                            id: item.id,
                            artistName: artistName,
                            artistId: artistName.toLowerCase().replace(/\s+/g, '-'),
                            contentTitle: item.word,
                            difficulty: (content as { difficulty?: string })?.difficulty || 'normal',
                            emoji: artistEmojis[artistName] || '🎵',
                        };
                    });
                    setBookmarks(bookmarkList);
                }
            } catch (err) {
                console.error('Error fetching bookmarks:', err);
                setBookmarks([]);
            } finally {
                setIsLoading(false);
            }
        };

        fetchBookmarks();
    }, []);

    // 북마크 삭제
    const handleDelete = async (id: string) => {
        try {
            const { error } = await supabase
                .from('vocab')
                .delete()
                .eq('id', id);

            if (!error) {
                setBookmarks(prev => prev.filter(b => b.id !== id));
            }
        } catch (err) {
            console.error('Error deleting bookmark:', err);
        }
    };

    return (
        <main className="min-h-screen bg-[#09090b] py-6 md:py-8 px-4 md:px-6">
            {/* 헤더 */}
            <header className="max-w-2xl mx-auto mb-8">
                <div className="flex items-center gap-2 mb-6">
                    <Link href="/learn" className="flex items-center gap-1 text-zinc-400 hover:text-white transition-colors text-sm">
                        <ChevronLeft className="w-4 h-4" />
                        {t("common.back")}
                    </Link>
                </div>

                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    className="flex items-center gap-3"
                >
                    <Bookmark className="w-8 h-8 text-rose-400" />
                    <h1 className="text-2xl md:text-3xl font-bold text-white">
                        {t("bookmarks.title")}
                    </h1>
                </motion.div>
            </header>

            {/* 북마크 리스트 */}
            <section className="max-w-2xl mx-auto">
                {isLoading ? (
                    <div className="flex items-center justify-center py-12">
                        <Loader2 className="w-8 h-8 text-rose-500 animate-spin" />
                    </div>
                ) : bookmarks.length === 0 ? (
                    <div className="text-center py-12">
                        <Bookmark className="w-12 h-12 mx-auto mb-4 text-zinc-600" />
                        <p className="text-zinc-500">{t("bookmarks.empty")}</p>
                        <Link href="/learn" className="text-rose-500 hover:underline mt-2 inline-block">
                            학습 시작하기
                        </Link>
                    </div>
                ) : (
                    <div className="space-y-3">
                        {bookmarks.map((item, index) => (
                            <motion.div
                                key={item.id}
                                initial={{ opacity: 0, y: 20 }}
                                animate={{ opacity: 1, y: 0 }}
                                transition={{ delay: index * 0.05 }}
                                className="card p-4 flex items-center gap-4 group"
                            >
                                <span className="text-2xl">{item.emoji}</span>
                                <div className="flex-1 min-w-0">
                                    <p className="font-medium text-white truncate">{item.contentTitle}</p>
                                    <p className="text-sm text-zinc-500">{item.artistName} · {item.difficulty}</p>
                                </div>
                                <div className="flex items-center gap-2">
                                    <Link
                                        href={`/learn/${item.artistId}/content-1`}
                                        className="p-2 rounded-full bg-rose-500/10 text-rose-400 hover:bg-rose-500/20 transition-colors"
                                    >
                                        <Play className="w-4 h-4" />
                                    </Link>
                                    <button
                                        onClick={() => handleDelete(item.id)}
                                        className="p-2 rounded-full text-zinc-500 hover:bg-zinc-800 hover:text-red-400 transition-colors"
                                    >
                                        <Trash2 className="w-4 h-4" />
                                    </button>
                                </div>
                            </motion.div>
                        ))}
                    </div>
                )}
            </section>
        </main>
    );
}
