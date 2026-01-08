"use client";

import { motion } from "framer-motion";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import { ChevronLeft, Bookmark, Trash2, Play } from "lucide-react";

// 샘플 북마크 데이터
const bookmarkedContent = [
    { id: "1", artistName: "BTS", contentTitle: "밥 먹었어?", difficulty: "Easy", emoji: "💜" },
    { id: "2", artistName: "NewJeans", contentTitle: "사랑해요", difficulty: "Easy", emoji: "🐰" },
    { id: "3", artistName: "BLACKPINK", contentTitle: "어떻게 지내?", difficulty: "Normal", emoji: "💖" },
];

// 북마크 페이지
export default function BookmarksPage() {
    const t = useTranslations();

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
                {bookmarkedContent.length === 0 ? (
                    <div className="text-center py-12">
                        <Bookmark className="w-12 h-12 mx-auto mb-4 text-zinc-600" />
                        <p className="text-zinc-500">{t("bookmarks.empty")}</p>
                    </div>
                ) : (
                    <div className="space-y-3">
                        {bookmarkedContent.map((item, index) => (
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
                                        href={`/learn/${item.artistName.toLowerCase()}/${item.id}`}
                                        className="p-2 rounded-full bg-rose-500/10 text-rose-400 hover:bg-rose-500/20 transition-colors"
                                    >
                                        <Play className="w-4 h-4" />
                                    </Link>
                                    <button className="p-2 rounded-full text-zinc-500 hover:bg-zinc-800 hover:text-red-400 transition-colors">
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
