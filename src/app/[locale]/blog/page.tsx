"use client";

import { motion } from "framer-motion";
import { useTranslations, useLocale } from "next-intl";
import { Link } from "@/i18n/navigation";
import { ChevronLeft, Calendar, Clock, ChevronRight } from "lucide-react";

// 블로그 아티클 데이터 (10개)
const articles = [
    {
        id: "learn-korean-with-kpop",
        titleKey: "blog.articles.1.title",
        descriptionKey: "blog.articles.1.description",
        date: "2024-12-15",
        readTime: 5,
        category: "Learning",
        emoji: "🎵"
    },
    {
        id: "hangul-guide-beginners",
        titleKey: "blog.articles.2.title",
        descriptionKey: "blog.articles.2.description",
        date: "2024-12-10",
        readTime: 8,
        category: "Basics",
        emoji: "📚"
    },
    {
        id: "bts-korean-expressions",
        titleKey: "blog.articles.3.title",
        descriptionKey: "blog.articles.3.description",
        date: "2024-12-05",
        readTime: 6,
        category: "K-Pop",
        emoji: "💜"
    },
    {
        id: "kdrama-essential-phrases",
        titleKey: "blog.articles.4.title",
        descriptionKey: "blog.articles.4.description",
        date: "2024-11-28",
        readTime: 7,
        category: "K-Drama",
        emoji: "🎬"
    },
    {
        id: "korean-pronunciation-tips",
        titleKey: "blog.articles.5.title",
        descriptionKey: "blog.articles.5.description",
        date: "2024-11-20",
        readTime: 6,
        category: "Pronunciation",
        emoji: "🗣️"
    },
    {
        id: "blackpink-vocabulary",
        titleKey: "blog.articles.6.title",
        descriptionKey: "blog.articles.6.description",
        date: "2024-11-15",
        readTime: 5,
        category: "K-Pop",
        emoji: "💖"
    },
    {
        id: "korean-honorifics-guide",
        titleKey: "blog.articles.7.title",
        descriptionKey: "blog.articles.7.description",
        date: "2024-11-10",
        readTime: 9,
        category: "Grammar",
        emoji: "🙇"
    },
    {
        id: "newjeans-study-method",
        titleKey: "blog.articles.8.title",
        descriptionKey: "blog.articles.8.description",
        date: "2024-11-05",
        readTime: 5,
        category: "K-Pop",
        emoji: "🐰"
    },
    {
        id: "korean-slang-2024",
        titleKey: "blog.articles.9.title",
        descriptionKey: "blog.articles.9.description",
        date: "2024-10-28",
        readTime: 7,
        category: "Vocabulary",
        emoji: "🔥"
    },
    {
        id: "why-learn-korean",
        titleKey: "blog.articles.10.title",
        descriptionKey: "blog.articles.10.description",
        date: "2024-10-20",
        readTime: 4,
        category: "Motivation",
        emoji: "✨"
    }
];

// 블로그 목록 페이지
export default function BlogPage() {
    const t = useTranslations();
    const locale = useLocale();

    return (
        <main className="min-h-screen bg-[#09090b] py-6 md:py-8 px-4 md:px-6">
            {/* 헤더 */}
            <header className="max-w-4xl mx-auto mb-8 md:mb-12">
                <div className="flex items-center gap-2 mb-6">
                    <Link href="/" className="flex items-center gap-1 text-zinc-400 hover:text-white transition-colors text-sm">
                        <ChevronLeft className="w-4 h-4" />
                        {t("common.back")}
                    </Link>
                </div>

                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                >
                    <h1 className="text-3xl md:text-5xl font-bold text-white mb-3 md:mb-4">
                        {t("blog.title")}
                    </h1>
                    <p className="text-base md:text-lg text-zinc-400">
                        {t("blog.subtitle")}
                    </p>
                </motion.div>
            </header>

            {/* 아티클 리스트 */}
            <section className="max-w-4xl mx-auto">
                <div className="space-y-4 md:space-y-6">
                    {articles.map((article, index) => (
                        <motion.div
                            key={article.id}
                            initial={{ opacity: 0, y: 20 }}
                            animate={{ opacity: 1, y: 0 }}
                            transition={{ delay: index * 0.05 }}
                        >
                            <Link
                                href={`/blog/${article.id}`}
                                className="block card p-5 md:p-6 group hover:border-rose-500/30 transition-all"
                            >
                                <div className="flex items-start gap-4">
                                    <span className="text-3xl md:text-4xl">{article.emoji}</span>
                                    <div className="flex-1 min-w-0">
                                        <div className="flex items-center gap-2 mb-2">
                                            <span className="px-2 py-0.5 text-xs font-medium bg-rose-500/10 text-rose-400 rounded-full">
                                                {article.category}
                                            </span>
                                        </div>
                                        <h2 className="text-lg md:text-xl font-bold text-white mb-2 group-hover:text-rose-400 transition-colors line-clamp-2">
                                            {t(article.titleKey)}
                                        </h2>
                                        <p className="text-sm md:text-base text-zinc-400 mb-3 line-clamp-2">
                                            {t(article.descriptionKey)}
                                        </p>
                                        <div className="flex items-center gap-4 text-xs md:text-sm text-zinc-500">
                                            <span className="flex items-center gap-1">
                                                <Calendar className="w-3.5 h-3.5" />
                                                {article.date}
                                            </span>
                                            <span className="flex items-center gap-1">
                                                <Clock className="w-3.5 h-3.5" />
                                                {article.readTime} min read
                                            </span>
                                        </div>
                                    </div>
                                    <ChevronRight className="w-5 h-5 text-zinc-600 group-hover:text-rose-400 transition-colors flex-shrink-0 hidden md:block" />
                                </div>
                            </Link>
                        </motion.div>
                    ))}
                </div>
            </section>

            {/* CTA */}
            <section className="max-w-4xl mx-auto mt-12 md:mt-16">
                <motion.div
                    initial={{ opacity: 0 }}
                    animate={{ opacity: 1 }}
                    transition={{ delay: 0.5 }}
                    className="card p-6 md:p-8 bg-gradient-to-r from-rose-500/10 to-violet-500/10 text-center"
                >
                    <h2 className="text-xl md:text-2xl font-bold text-white mb-3">
                        {t("blog.cta.title")}
                    </h2>
                    <p className="text-sm md:text-base text-zinc-400 mb-5">
                        {t("blog.cta.description")}
                    </p>
                    <Link
                        href="/learn"
                        className="btn-primary px-6 py-2.5 text-sm md:text-base font-semibold inline-flex items-center gap-2"
                    >
                        {t("blog.cta.button")}
                    </Link>
                </motion.div>
            </section>
        </main>
    );
}
