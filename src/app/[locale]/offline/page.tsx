"use client";

import { motion } from "framer-motion";
import { WifiOff, Home, RefreshCw } from "lucide-react";
import { Link } from "@/i18n/navigation";

// 오프라인 페이지
export default function OfflinePage() {
    const handleRetry = () => {
        window.location.reload();
    };

    return (
        <main className="min-h-screen bg-[#09090b] flex items-center justify-center px-4">
            <motion.div
                initial={{ opacity: 0, y: 20 }}
                animate={{ opacity: 1, y: 0 }}
                className="text-center max-w-md"
            >
                <div className="w-20 h-20 mx-auto mb-6 rounded-full bg-zinc-800 flex items-center justify-center">
                    <WifiOff className="w-10 h-10 text-zinc-500" />
                </div>

                <h1 className="text-2xl font-bold text-white mb-3">
                    오프라인 상태입니다
                </h1>
                <p className="text-zinc-400 mb-8">
                    인터넷 연결을 확인하고 다시 시도해주세요.
                    <br />
                    일부 콘텐츠는 오프라인에서도 이용 가능합니다.
                </p>

                <div className="flex flex-col sm:flex-row gap-3 justify-center">
                    <button
                        onClick={handleRetry}
                        className="btn-primary px-6 py-3 font-medium flex items-center justify-center gap-2"
                    >
                        <RefreshCw className="w-4 h-4" />
                        다시 시도
                    </button>
                    <Link
                        href="/"
                        className="px-6 py-3 rounded-full border border-zinc-700 text-white font-medium hover:bg-zinc-800 transition-colors flex items-center justify-center gap-2"
                    >
                        <Home className="w-4 h-4" />
                        홈으로
                    </Link>
                </div>
            </motion.div>
        </main>
    );
}
