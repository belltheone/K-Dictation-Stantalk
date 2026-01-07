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
                className="flex items-center gap-1 md:gap-2 px-2 md:px-3 py-1.5 md:py-2 rounded-full border border-white/20 hover:border-[#7C3AED] transition-colors text-sm"
            >
                <Globe className="w-4 h-4 text-gray-400" />
                <span className="hidden sm:inline text-gray-300">{languageFlags[locale]}</span>
                <ChevronDown className={`w-3 h-3 md:w-4 md:h-4 text-gray-400 transition-transform ${isOpen ? 'rotate-180' : ''}`} />
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
                            transition={{ duration: 0.15 }}
                            className="absolute right-0 mt-2 w-40 md:w-48 py-2 rounded-xl glass border border-white/10 shadow-xl z-50"
                        >
                            {locales.map((loc) => (
                                <button
                                    key={loc}
                                    onClick={() => handleLanguageChange(loc)}
                                    className={`w-full px-4 py-2 text-left flex items-center gap-3 hover:bg-white/10 transition-colors ${locale === loc ? 'text-[#FF007F]' : 'text-gray-300'
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
