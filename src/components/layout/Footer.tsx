"use client";

import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";

export function Footer() {
    const t = useTranslations("common");
    const currentYear = new Date().getFullYear();

    return (
        <footer className="w-full py-8 bg-[#09090b] text-zinc-500 text-sm border-t border-zinc-800">
            <div className="max-w-6xl mx-auto px-4 md:px-6 flex flex-col md:flex-row justify-between items-center gap-4">
                <div className="flex flex-col items-center md:items-start gap-1">
                    <p className="font-semibold text-zinc-400">K-Dictation</p>
                    <p>© {currentYear} Stantalk. All rights reserved.</p>
                </div>

                <div className="flex items-center gap-6">
                    <Link href="/terms" className="hover:text-zinc-300 transition-colors">
                        Terms of Service
                    </Link>
                    <Link href="/privacy" className="hover:text-zinc-300 transition-colors">
                        Privacy Policy
                    </Link>
                    <a href="mailto:support@stantalk.com" className="hover:text-zinc-300 transition-colors">
                        Contact Us
                    </a>
                </div>
            </div>
        </footer>
    );
}
