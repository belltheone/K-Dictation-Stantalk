"use client";

import { useState } from "react";
import { useLocale, useTranslations } from "next-intl";
import { useRouter, usePathname } from "@/i18n/navigation";
import { Globe, ChevronDown } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import { locales, type Locale } from "@/i18n/routing";

// 언어 플래그 이모지 매핑
const languageFlags: Record<Locale, string> = {
    en: "🇺🇸",
    ko: "🇰🇷",
    ja: "🇯🇵",
    zh: "🇨🇳",
    th: "🇹🇭",
    vi: "🇻🇳",
};

// 언어 선택 드롭다운 컴포넌트
export function LanguageSwitcher() {
    const [isOpen, setIsOpen] = useState(false);
    const locale = useLocale() as Locale;
    const router = useRouter();
    const pathname = usePathname();
    const t = useTranslations("language");

    // 언어 변경 핸들러
    const handleLanguageChange = (newLocale: Locale) => {
        router.replace(pathname, { locale: newLocale });
        setIsOpen(false);
    };

    return (
        <div className="relative">
            <button
                onClick={() => setIsOpen(!isOpen)}
                className="flex items-center gap-1 md:gap-2 px-3 py-1.5 md:py-2 rounded-full border border-zinc-700 bg-zinc-800/50 hover:bg-zinc-800 hover:border-violet-500 transition-all text-sm group"
            >
                <Globe className="w-4 h-4 text-zinc-400 group-hover:text-violet-400 transition-colors" />
                <span className="hidden sm:inline text-zinc-300 font-medium">{languageFlags[locale]}</span>
                <ChevronDown className={`w-3 h-3 md:w-4 md:h-4 text-zinc-500 transition-transform duration-300 ${isOpen ? 'rotate-180' : ''}`} />
            </button>

            <AnimatePresence>
                {isOpen && (
                    <>
                        {/* 오버레이 - 클릭 시 드롭다운 닫기 */}
                        <div
                            className="fixed inset-0 z-40"
                            onClick={() => setIsOpen(false)}
                        />

                        {/* 드롭다운 메뉴 */}
                        <motion.div
                            initial={{ opacity: 0, y: -10, scale: 0.95 }}
                            animate={{ opacity: 1, y: 0, scale: 1 }}
                            exit={{ opacity: 0, y: -10, scale: 0.95 }}
                            transition={{ duration: 0.2, ease: "easeOut" }}
                            className="absolute right-0 mt-2 w-40 md:w-48 py-2 rounded-xl glass-card border border-zinc-700/50 shadow-2xl z-50 overflow-hidden"
                        >
                            {locales.map((loc) => (
                                <button
                                    key={loc}
                                    onClick={() => handleLanguageChange(loc)}
                                    className={`w-full px-4 py-2.5 text-left flex items-center gap-3 hover:bg-white/5 transition-colors ${locale === loc ? 'text-rose-500 font-medium bg-rose-500/5' : 'text-zinc-400'
                                        }`}
                                >
                                    <span className="text-lg">{languageFlags[loc]}</span>
                                    <span className="text-sm">{t(loc)}</span>
                                </button>
                            ))}
                        </motion.div>
                    </>
                )}
            </AnimatePresence>
        </div>
    );
}
