"use client";

import { useState, useEffect } from "react";
import { useTranslations } from "next-intl";
import { useRouter } from "next/navigation";
import { createClient } from "@supabase/supabase-js";
import { motion } from "framer-motion";
import {
    User, LogOut, Trash2, Shield, Globe,
    ChevronRight, Loader2, AlertTriangle
} from "lucide-react";
import { useUserAccess } from "@/hooks/useUserAccess";
import { useGuest } from "@/contexts/GuestContext";
import { LanguageSwitcher } from "@/components/ui/LanguageSwitcher";

// Supabase Client
const supabase = createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export default function SettingsPage() {
    const t = useTranslations();
    const router = useRouter();
    const { isGuest } = useUserAccess();
    const { guestData, clearGuestData } = useGuest();

    const [user, setUser] = useState<any>(null);
    const [loading, setLoading] = useState(true);
    const [isResetting, setIsResetting] = useState(false);

    useEffect(() => {
        const getUser = async () => {
            const { data: { user } } = await supabase.auth.getUser();
            setUser(user);
            setLoading(false);
        };
        getUser();
    }, []);

    const handleLogout = async () => {
        await supabase.auth.signOut();
        router.push("/login");
        router.refresh();
    };

    const handleResetGuestData = () => {
        if (confirm(t("settings.resetConfirm") || "Did you really want to reset all progress?")) {
            setIsResetting(true);
            setTimeout(() => {
                clearGuestData();
                setIsResetting(false);
                alert("Reset Complete");
                router.refresh();
            }, 1000);
        }
    };

    if (loading) {
        return (
            <div className="min-h-screen flex items-center justify-center bg-[#09090b]">
                <Loader2 className="w-8 h-8 text-rose-500 animate-spin" />
            </div>
        );
    }

    return (
        <main className="min-h-screen py-8 px-4 md:px-6 bg-[#09090b]">
            <div className="max-w-2xl mx-auto">
                <header className="mb-8">
                    <h1 className="text-3xl font-bold text-white mb-2">
                        {t("settings.title") || "Settings"}
                    </h1>
                    <p className="text-zinc-400">
                        {t("settings.subtitle") || "Manage your account and preferences"}
                    </p>
                </header>

                {/* Profile Section */}
                <section className="mb-8">
                    <h2 className="text-lg font-semibold text-white mb-4 flex items-center gap-2">
                        <User className="w-5 h-5 text-rose-500" />
                        {t("settings.profile") || "Profile"}
                    </h2>
                    <div className="card p-6 bg-zinc-900 border border-zinc-800 rounded-xl">
                        <div className="flex items-center gap-4">
                            <div className="w-16 h-16 rounded-full bg-zinc-800 flex items-center justify-center text-2xl">
                                {isGuest ? "👻" : "👤"}
                            </div>
                            <div>
                                <h3 className="text-xl font-bold text-white">
                                    {isGuest ? (t("common.guest") || "Guest") : user?.email?.split("@")[0]}
                                </h3>
                                <p className="text-zinc-500 text-sm">
                                    {isGuest ? (t("settings.guestMode") || "Guest Mode") : user?.email}
                                </p>
                            </div>
                        </div>

                        {/* Stats Summary */}
                        <div className="mt-6 grid grid-cols-2 gap-4 border-t border-zinc-800 pt-6">
                            <div className="text-center">
                                <span className="block text-2xl font-bold text-emerald-500">
                                    {isGuest ? guestData?.completedChallenges.length || 0 : 0}
                                </span>
                                <span className="text-xs text-zinc-500 uppercase tracking-wider">
                                    {t("common.solved") || "Solved"}
                                </span>
                            </div>
                            <div className="text-center">
                                <span className="block text-2xl font-bold text-amber-500">
                                    {isGuest ? guestData?.xp || 0 : 0}
                                </span>
                                <span className="text-xs text-zinc-500 uppercase tracking-wider">XP</span>
                            </div>
                        </div>
                    </div>
                </section>

                {/* Preferences */}
                <section className="mb-8">
                    <h2 className="text-lg font-semibold text-white mb-4 flex items-center gap-2">
                        <Globe className="w-5 h-5 text-indigo-500" />
                        {t("settings.preferences") || "Preferences"}
                    </h2>
                    <div className="card bg-zinc-900 border border-zinc-800 rounded-xl divide-y divide-zinc-800">
                        <div className="p-4 flex items-center justify-between">
                            <span className="text-zinc-300">{t("settings.language") || "Language"}</span>
                            <LanguageSwitcher />
                        </div>
                    </div>
                </section>

                {/* Actions */}
                <section>
                    <h2 className="text-lg font-semibold text-white mb-4 flex items-center gap-2">
                        <AlertTriangle className="w-5 h-5 text-orange-500" />
                        {t("settings.dangerZone") || "Danger Zone"}
                    </h2>
                    <div className="card bg-zinc-900 border border-zinc-800 rounded-xl overflow-hidden">
                        {isGuest ? (
                            <button
                                onClick={handleResetGuestData}
                                disabled={isResetting}
                                className="w-full p-4 flex items-center justify-between hover:bg-red-500/10 transition-colors text-left group"
                            >
                                <div className="flex items-center gap-3">
                                    <div className="p-2 rounded-lg bg-zinc-800 group-hover:bg-red-500/20 transition-colors">
                                        <Trash2 className="w-5 h-5 text-red-500" />
                                    </div>
                                    <div>
                                        <h4 className="font-medium text-white group-hover:text-red-400 transition-colors">
                                            {t("settings.resetData") || "Reset All Data"}
                                        </h4>
                                        <p className="text-xs text-zinc-500">
                                            {t("settings.resetDesc") || "Permanently delete your guest progress"}
                                        </p>
                                    </div>
                                </div>
                                <ChevronRight className="w-5 h-5 text-zinc-600 group-hover:text-red-500" />
                            </button>
                        ) : (
                            <button
                                onClick={handleLogout}
                                className="w-full p-4 flex items-center justify-between hover:bg-red-500/10 transition-colors text-left group"
                            >
                                <div className="flex items-center gap-3">
                                    <div className="p-2 rounded-lg bg-zinc-800 group-hover:bg-red-500/20 transition-colors">
                                        <LogOut className="w-5 h-5 text-red-500" />
                                    </div>
                                    <div>
                                        <h4 className="font-medium text-white group-hover:text-red-400 transition-colors">
                                            {t("auth.logout") || "Log Out"}
                                        </h4>
                                        <p className="text-xs text-zinc-500">
                                            {t("settings.logoutDesc") || "Sign out of your account"}
                                        </p>
                                    </div>
                                </div>
                                <ChevronRight className="w-5 h-5 text-zinc-600 group-hover:text-red-500" />
                            </button>
                        )}
                    </div>
                </section>

                <div className="mt-8 text-center text-zinc-600 text-xs">
                    <p>K-Dictation v1.0.0</p>
                    <div className="flex justify-center gap-4 mt-2">
                        <a href="/terms" className="hover:text-zinc-400">Terms</a>
                        <a href="/privacy" className="hover:text-zinc-400">Privacy</a>
                    </div>
                </div>
            </div>
        </main>
    );
}
