"use client";

import { useState, useEffect } from "react";
import { useTranslations } from "next-intl";
import { Sun, Moon, Monitor } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

type Theme = 'dark' | 'light' | 'system';

// 테마 토글 컴포넌트
export function ThemeToggle() {
    const t = useTranslations();
    const [theme, setTheme] = useState<Theme>('dark');
    const [isOpen, setIsOpen] = useState(false);

    useEffect(() => {
        const savedTheme = localStorage.getItem('theme') as Theme | null;
        if (savedTheme) {
            setTheme(savedTheme);
            applyTheme(savedTheme);
        }
    }, []);

    const applyTheme = (newTheme: Theme) => {
        const root = document.documentElement;

        if (newTheme === 'system') {
            const systemDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
            root.classList.toggle('dark', systemDark);
            root.classList.toggle('light', !systemDark);
        } else {
            root.classList.toggle('dark', newTheme === 'dark');
            root.classList.toggle('light', newTheme === 'light');
        }
    };

    const handleThemeChange = (newTheme: Theme) => {
        setTheme(newTheme);
        localStorage.setItem('theme', newTheme);
        applyTheme(newTheme);
        setIsOpen(false);
    };

    const themes = [
        { id: 'dark' as Theme, icon: Moon, label: t("theme.dark") },
        { id: 'light' as Theme, icon: Sun, label: t("theme.light") },
        { id: 'system' as Theme, icon: Monitor, label: t("theme.system") },
    ];

    const currentTheme = themes.find(t => t.id === theme) || themes[0];

    return (
        <div className="relative">
            <button
                onClick={() => setIsOpen(!isOpen)}
                className="p-2 rounded-lg hover:bg-zinc-800 transition-colors text-zinc-400 hover:text-white"
                aria-label="Toggle theme"
            >
                <currentTheme.icon className="w-5 h-5" />
            </button>

            <AnimatePresence>
                {isOpen && (
                    <>
                        <motion.div
                            initial={{ opacity: 0 }}
                            animate={{ opacity: 1 }}
                            exit={{ opacity: 0 }}
                            className="fixed inset-0 z-40"
                            onClick={() => setIsOpen(false)}
                        />
                        <motion.div
                            initial={{ opacity: 0, scale: 0.95, y: -10 }}
                            animate={{ opacity: 1, scale: 1, y: 0 }}
                            exit={{ opacity: 0, scale: 0.95, y: -10 }}
                            className="absolute right-0 top-full mt-2 z-50 card p-2 min-w-[140px] border border-zinc-800"
                        >
                            {themes.map((themeOption) => (
                                <button
                                    key={themeOption.id}
                                    onClick={() => handleThemeChange(themeOption.id)}
                                    className={`
                                        w-full flex items-center gap-2 px-3 py-2 rounded-lg text-sm transition-colors
                                        ${theme === themeOption.id
                                            ? 'bg-rose-500/10 text-rose-400'
                                            : 'text-zinc-400 hover:bg-zinc-800 hover:text-white'
                                        }
                                    `}
                                >
                                    <themeOption.icon className="w-4 h-4" />
                                    {themeOption.label}
                                </button>
                            ))}
                        </motion.div>
                    </>
                )}
            </AnimatePresence>
        </div>
    );
}
