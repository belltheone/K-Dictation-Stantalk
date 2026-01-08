"use client";

import { useState } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { X, Mail, Lock, ArrowLeft, Loader2 } from "lucide-react";
import { SocialLoginButtons } from "./SocialLoginButtons";
import { signInWithEmail, signInWithPassword, signUpWithEmail } from "@/lib/actions/auth";
import { useLocale } from "next-intl";

interface LoginModalProps {
    isOpen: boolean;
    onClose: () => void;
}

type AuthMode = "social" | "email" | "password" | "signup";

// 로그인 모달 컴포넌트
export function LoginModal({ isOpen, onClose }: LoginModalProps) {
    const locale = useLocale();
    const [mode, setMode] = useState<AuthMode>("social");
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const [isLoading, setIsLoading] = useState(false);
    const [message, setMessage] = useState<{ type: "success" | "error"; text: string } | null>(null);

    // Magic Link 전송
    const handleMagicLink = async (e: React.FormEvent) => {
        e.preventDefault();
        if (!email) return;

        setIsLoading(true);
        setMessage(null);

        const result = await signInWithEmail(email, locale);

        setIsLoading(false);
        if (result.success) {
            setMessage({ type: "success", text: "Check your email for the login link!" });
        } else {
            setMessage({ type: "error", text: result.error || "Failed to send email" });
        }
    };

    // 이메일/비밀번호 로그인
    const handlePasswordLogin = async (e: React.FormEvent) => {
        e.preventDefault();
        if (!email || !password) return;

        setIsLoading(true);
        setMessage(null);

        const result = await signInWithPassword(email, password);

        setIsLoading(false);
        if (result.success) {
            onClose();
            window.location.reload();
        } else {
            setMessage({ type: "error", text: result.error || "Login failed" });
        }
    };

    // 회원가입
    const handleSignUp = async (e: React.FormEvent) => {
        e.preventDefault();
        if (!email || !password) return;
        if (password.length < 6) {
            setMessage({ type: "error", text: "Password must be at least 6 characters" });
            return;
        }

        setIsLoading(true);
        setMessage(null);

        const result = await signUpWithEmail(email, password, locale);

        setIsLoading(false);
        if (result.success) {
            setMessage({ type: "success", text: "Check your email to confirm your account!" });
        } else {
            setMessage({ type: "error", text: result.error || "Sign up failed" });
        }
    };

    // 모달 초기화
    const resetModal = () => {
        setMode("social");
        setEmail("");
        setPassword("");
        setMessage(null);
        onClose();
    };

    return (
        <AnimatePresence>
            {isOpen && (
                <>
                    {/* 배경 오버레이 */}
                    <motion.div
                        initial={{ opacity: 0 }}
                        animate={{ opacity: 1 }}
                        exit={{ opacity: 0 }}
                        onClick={resetModal}
                        className="fixed inset-0 bg-black/80 backdrop-blur-sm z-50"
                    />

                    {/* 모달 */}
                    <motion.div
                        initial={{ opacity: 0, scale: 0.95, y: 20 }}
                        animate={{ opacity: 1, scale: 1, y: 0 }}
                        exit={{ opacity: 0, scale: 0.95, y: 20 }}
                        className="fixed inset-0 z-50 flex items-center justify-center p-4"
                    >
                        <div className="card glass-card p-6 md:p-8 w-full max-w-md relative border border-white/10 shadow-2xl">
                            {/* 닫기/뒤로가기 버튼 */}
                            <div className="absolute top-4 left-4 right-4 flex justify-between">
                                {mode !== "social" ? (
                                    <button
                                        onClick={() => { setMode("social"); setMessage(null); }}
                                        className="p-2 rounded-full hover:bg-white/10 transition-colors text-zinc-400 hover:text-white"
                                    >
                                        <ArrowLeft className="w-5 h-5" />
                                    </button>
                                ) : (
                                    <div />
                                )}
                                <button
                                    onClick={resetModal}
                                    className="p-2 rounded-full hover:bg-white/10 transition-colors text-zinc-400 hover:text-white"
                                >
                                    <X className="w-5 h-5" />
                                </button>
                            </div>

                            {/* 헤더 */}
                            <div className="text-center mb-8 mt-4">
                                <h2 className="text-2xl font-bold text-white mb-2">
                                    {mode === "social" && "Join the Fandom 🎤"}
                                    {mode === "email" && "Magic Link ✨"}
                                    {mode === "password" && "Sign In 🔐"}
                                    {mode === "signup" && "Create Account 🚀"}
                                </h2>
                                <p className="text-zinc-400 text-sm">
                                    {mode === "social" && "Sign in to save your progress!"}
                                    {mode === "email" && "We'll send a login link to your email"}
                                    {mode === "password" && "Enter your email and password"}
                                    {mode === "signup" && "Create a new account"}
                                </p>
                            </div>

                            {/* 메시지 */}
                            {message && (
                                <div className={`mb-4 p-3 rounded-lg text-sm text-center ${message.type === "success"
                                    ? "bg-emerald-500/10 text-emerald-400 border border-emerald-500/20"
                                    : "bg-rose-500/10 text-rose-400 border border-rose-500/20"
                                    }`}>
                                    {message.text}
                                </div>
                            )}

                            {/* 소셜 로그인 */}
                            {mode === "social" && (
                                <>
                                    <SocialLoginButtons onClose={onClose} />

                                    <div className="relative my-6">
                                        <div className="absolute inset-0 flex items-center">
                                            <div className="w-full border-t border-white/10" />
                                        </div>
                                        <div className="relative flex justify-center text-sm">
                                            <span className="px-4 bg-[#18181b] text-zinc-500">or</span>
                                        </div>
                                    </div>

                                    <div className="space-y-3">
                                        <button
                                            onClick={() => setMode("email")}
                                            className="w-full flex items-center justify-center gap-2 px-4 py-3 rounded-xl bg-rose-500/10 border border-rose-500/20 text-rose-500 hover:bg-rose-500/20 transition-all font-medium"
                                        >
                                            <Mail className="w-5 h-5" />
                                            Continue with Email
                                        </button>
                                        <button
                                            onClick={() => setMode("password")}
                                            className="w-full flex items-center justify-center gap-2 px-4 py-3 rounded-xl bg-white/5 border border-white/10 text-zinc-300 hover:bg-white/10 transition-colors font-medium"
                                        >
                                            <Lock className="w-5 h-5" />
                                            Sign in with Password
                                        </button>
                                    </div>
                                </>
                            )}

                            {/* Magic Link */}
                            {mode === "email" && (
                                <form onSubmit={handleMagicLink} className="space-y-4">
                                    <input
                                        type="email"
                                        value={email}
                                        onChange={(e) => setEmail(e.target.value)}
                                        placeholder="your@email.com"
                                        className="input-field w-full px-4 py-3"
                                        required
                                    />
                                    <button
                                        type="submit"
                                        disabled={isLoading}
                                        className="btn-primary w-full py-3 text-white font-bold disabled:opacity-50 flex items-center justify-center gap-2 shadow-lg shadow-rose-500/20"
                                    >
                                        {isLoading ? <Loader2 className="w-5 h-5 animate-spin" /> : <Mail className="w-5 h-5" />}
                                        Send Magic Link
                                    </button>
                                </form>
                            )}

                            {/* Password Login */}
                            {mode === "password" && (
                                <form onSubmit={handlePasswordLogin} className="space-y-4">
                                    <input
                                        type="email"
                                        value={email}
                                        onChange={(e) => setEmail(e.target.value)}
                                        placeholder="your@email.com"
                                        className="input-field w-full px-4 py-3"
                                        required
                                    />
                                    <input
                                        type="password"
                                        value={password}
                                        onChange={(e) => setPassword(e.target.value)}
                                        placeholder="Password"
                                        className="input-field w-full px-4 py-3"
                                        required
                                    />
                                    <button
                                        type="submit"
                                        disabled={isLoading}
                                        className="btn-primary w-full py-3 text-white font-bold disabled:opacity-50 flex items-center justify-center gap-2 shadow-lg shadow-rose-500/20"
                                    >
                                        {isLoading ? <Loader2 className="w-5 h-5 animate-spin" /> : null}
                                        Sign In
                                    </button>
                                    <button
                                        type="button"
                                        onClick={() => setMode("signup")}
                                        className="w-full text-center text-zinc-400 text-sm hover:text-white transition-colors"
                                    >
                                        Don't have an account? <span className="text-rose-500 font-semibold">Sign up</span>
                                    </button>
                                </form>
                            )}

                            {/* Sign Up */}
                            {mode === "signup" && (
                                <form onSubmit={handleSignUp} className="space-y-4">
                                    <input
                                        type="email"
                                        value={email}
                                        onChange={(e) => setEmail(e.target.value)}
                                        placeholder="your@email.com"
                                        className="input-field w-full px-4 py-3"
                                        required
                                    />
                                    <input
                                        type="password"
                                        value={password}
                                        onChange={(e) => setPassword(e.target.value)}
                                        placeholder="Password (min 6 characters)"
                                        className="input-field w-full px-4 py-3"
                                        required
                                        minLength={6}
                                    />
                                    <button
                                        type="submit"
                                        disabled={isLoading}
                                        className="btn-primary w-full py-3 text-white font-bold disabled:opacity-50 flex items-center justify-center gap-2 shadow-lg shadow-rose-500/20"
                                    >
                                        {isLoading ? <Loader2 className="w-5 h-5 animate-spin" /> : null}
                                        Create Account
                                    </button>
                                    <button
                                        type="button"
                                        onClick={() => setMode("password")}
                                        className="w-full text-center text-zinc-400 text-sm hover:text-white transition-colors"
                                    >
                                        Already have an account? <span className="text-rose-500 font-semibold">Sign in</span>
                                    </button>
                                </form>
                            )}

                            {/* 게스트 옵션 */}
                            {mode === "social" && (
                                <div className="mt-8 text-center">
                                    <button
                                        onClick={resetModal}
                                        className="text-zinc-500 text-sm hover:text-white transition-colors border-b border-transparent hover:border-zinc-500 pb-0.5"
                                    >
                                        Continue as Guest →
                                    </button>
                                </div>
                            )}

                            {/* 약관 */}
                            <p className="text-zinc-600 text-xs text-center mt-6">
                                By signing in, you agree to our Terms of Service and Privacy Policy
                            </p>
                        </div>
                    </motion.div>
                </>
            )}
        </AnimatePresence>
    );
}
