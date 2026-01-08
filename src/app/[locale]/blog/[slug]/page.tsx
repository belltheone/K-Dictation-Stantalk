"use client";

import { motion } from "framer-motion";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import { ChevronLeft, Calendar, Clock, Share2, Bookmark } from "lucide-react";
import { useParams } from "next/navigation";

// 블로그 아티클 내용 (간단한 정적 콘텐츠)
const articleContents: Record<string, { sections: string[] }> = {
    "learn-korean-with-kpop": {
        sections: ["blog.content.1.section1", "blog.content.1.section2", "blog.content.1.section3"]
    },
    "hangul-guide-beginners": {
        sections: ["blog.content.2.section1", "blog.content.2.section2", "blog.content.2.section3"]
    },
    "bts-korean-expressions": {
        sections: ["blog.content.3.section1", "blog.content.3.section2", "blog.content.3.section3"]
    },
    "kdrama-essential-phrases": {
        sections: ["blog.content.4.section1", "blog.content.4.section2", "blog.content.4.section3"]
    },
    "korean-pronunciation-tips": {
        sections: ["blog.content.5.section1", "blog.content.5.section2", "blog.content.5.section3"]
    },
    "blackpink-vocabulary": {
        sections: ["blog.content.6.section1", "blog.content.6.section2", "blog.content.6.section3"]
    },
    "korean-honorifics-guide": {
        sections: ["blog.content.7.section1", "blog.content.7.section2", "blog.content.7.section3"]
    },
    "newjeans-study-method": {
        sections: ["blog.content.8.section1", "blog.content.8.section2", "blog.content.8.section3"]
    },
    "korean-slang-2024": {
        sections: ["blog.content.9.section1", "blog.content.9.section2", "blog.content.9.section3"]
    },
    "why-learn-korean": {
        sections: ["blog.content.10.section1", "blog.content.10.section2", "blog.content.10.section3"]
    }
};

const articleMeta: Record<string, { titleKey: string; date: string; readTime: number; emoji: string }> = {
    "learn-korean-with-kpop": { titleKey: "blog.articles.1.title", date: "2024-12-15", readTime: 5, emoji: "🎵" },
    "hangul-guide-beginners": { titleKey: "blog.articles.2.title", date: "2024-12-10", readTime: 8, emoji: "📚" },
    "bts-korean-expressions": { titleKey: "blog.articles.3.title", date: "2024-12-05", readTime: 6, emoji: "💜" },
    "kdrama-essential-phrases": { titleKey: "blog.articles.4.title", date: "2024-11-28", readTime: 7, emoji: "🎬" },
    "korean-pronunciation-tips": { titleKey: "blog.articles.5.title", date: "2024-11-20", readTime: 6, emoji: "🗣️" },
    "blackpink-vocabulary": { titleKey: "blog.articles.6.title", date: "2024-11-15", readTime: 5, emoji: "💖" },
    "korean-honorifics-guide": { titleKey: "blog.articles.7.title", date: "2024-11-10", readTime: 9, emoji: "🙇" },
    "newjeans-study-method": { titleKey: "blog.articles.8.title", date: "2024-11-05", readTime: 5, emoji: "🐰" },
    "korean-slang-2024": { titleKey: "blog.articles.9.title", date: "2024-10-28", readTime: 7, emoji: "🔥" },
    "why-learn-korean": { titleKey: "blog.articles.10.title", date: "2024-10-20", readTime: 4, emoji: "✨" }
};

// 블로그 아티클 상세 페이지
export default function BlogArticlePage() {
    const params = useParams();
    const slug = params.slug as string;
    const t = useTranslations();

    const article = articleContents[slug];
    const meta = articleMeta[slug];

    if (!article || !meta) {
        return (
            <main className="min-h-screen bg-[#09090b] flex items-center justify-center">
                <div className="text-center">
                    <h1 className="text-2xl font-bold text-white mb-4">Article not found</h1>
                    <Link href="/blog" className="text-rose-400 hover:underline">
                        Back to Blog
                    </Link>
                </div>
            </main>
        );
    }

    return (
        <main className="min-h-screen bg-[#09090b] py-6 md:py-8 px-4 md:px-6">
            {/* 헤더 */}
            <header className="max-w-3xl mx-auto mb-8">
                <div className="flex items-center justify-between mb-6">
                    <Link href="/blog" className="flex items-center gap-1 text-zinc-400 hover:text-white transition-colors text-sm">
                        <ChevronLeft className="w-4 h-4" />
                        {t("blog.backToList")}
                    </Link>
                    <div className="flex items-center gap-2">
                        <button className="p-2 rounded-full hover:bg-zinc-800 transition-colors text-zinc-400 hover:text-white">
                            <Share2 className="w-4 h-4" />
                        </button>
                        <button className="p-2 rounded-full hover:bg-zinc-800 transition-colors text-zinc-400 hover:text-white">
                            <Bookmark className="w-4 h-4" />
                        </button>
                    </div>
                </div>

                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                >
                    <span className="text-4xl md:text-5xl mb-4 block">{meta.emoji}</span>
                    <h1 className="text-2xl md:text-4xl font-bold text-white mb-4 leading-tight">
                        {t(meta.titleKey)}
                    </h1>
                    <div className="flex items-center gap-4 text-sm text-zinc-500">
                        <span className="flex items-center gap-1">
                            <Calendar className="w-4 h-4" />
                            {meta.date}
                        </span>
                        <span className="flex items-center gap-1">
                            <Clock className="w-4 h-4" />
                            {meta.readTime} min read
                        </span>
                    </div>
                </motion.div>
            </header>

            {/* 아티클 내용 */}
            <article className="max-w-3xl mx-auto">
                <motion.div
                    initial={{ opacity: 0 }}
                    animate={{ opacity: 1 }}
                    transition={{ delay: 0.2 }}
                    className="prose prose-invert prose-zinc max-w-none"
                >
                    {article.sections.map((sectionKey, index) => (
                        <div key={index} className="mb-8">
                            <p className="text-base md:text-lg text-zinc-300 leading-relaxed">
                                {t(sectionKey)}
                            </p>
                        </div>
                    ))}
                </motion.div>

                {/* CTA */}
                <motion.div
                    initial={{ opacity: 0 }}
                    animate={{ opacity: 1 }}
                    transition={{ delay: 0.4 }}
                    className="mt-12 card p-6 md:p-8 bg-gradient-to-r from-rose-500/10 to-violet-500/10 text-center"
                >
                    <h3 className="text-xl font-bold text-white mb-3">
                        {t("blog.articleCta.title")}
                    </h3>
                    <p className="text-sm text-zinc-400 mb-5">
                        {t("blog.articleCta.description")}
                    </p>
                    <Link
                        href="/learn"
                        className="btn-primary px-6 py-2.5 text-sm font-semibold inline-flex items-center gap-2"
                    >
                        {t("blog.articleCta.button")}
                    </Link>
                </motion.div>
            </article>
        </main>
    );
}
