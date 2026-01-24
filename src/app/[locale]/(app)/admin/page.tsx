"use client";

import { useState, useEffect } from "react";
import { motion } from "framer-motion";
import { Link } from "@/i18n/navigation";
import {
    Plus, Trash2, Eye, EyeOff, ChevronLeft,
    Youtube, Sparkles, Check, X, Loader2, ShieldX, Search
} from "lucide-react";
import {
    createContent,
    getAllContents,
    toggleContentPublish,
    deleteContent,
    getContentChallenges,
    deleteChallenge
} from "@/lib/actions/admin";
import { isAdmin } from "@/lib/auth/admin";

// Admin 대시보드 페이지
export default function AdminPage() {
    const [searchTerm, setSearchTerm] = useState("");
    const [contents, setContents] = useState<Array<{
        id: string;
        youtube_id: string;
        title: string;
        artist_name: string;
        difficulty: string;
        is_published: boolean;
        created_at: string;
        challenges: { count: number }[];
    }>>([]);
    const [isLoading, setIsLoading] = useState(true);
    const [showAddForm, setShowAddForm] = useState(false);
    const [selectedContent, setSelectedContent] = useState<string | null>(null);
    const [challenges, setChallenges] = useState<Array<{
        id: string;
        full_sentence: string;
        answer_word: string;
        order_index: number;
    }>>([]);
    const [hasAdminAccess, setHasAdminAccess] = useState<boolean | null>(null);

    // 관리자 권한 확인 및 콘텐츠 로드
    useEffect(() => {
        checkAdminAndLoad();
    }, []);

    const checkAdminAndLoad = async () => {
        const adminCheck = await isAdmin();
        setHasAdminAccess(adminCheck);

        if (adminCheck) {
            loadContents();
        } else {
            setIsLoading(false);
        }
    };

    const loadContents = async () => {
        setIsLoading(true);
        const data = await getAllContents();
        setContents(data as typeof contents);
        setIsLoading(false);
    };

    // 검색 필터링
    const filteredContents = contents.filter(content =>
        content.title.toLowerCase().includes(searchTerm.toLowerCase()) ||
        content.artist_name.toLowerCase().includes(searchTerm.toLowerCase())
    );

    // 콘텐츠 공개/비공개 토글
    const handleTogglePublish = async (contentId: string) => {
        const result = await toggleContentPublish(contentId);
        if (result.success) {
            setContents(prev =>
                prev.map(c => c.id === contentId ? { ...c, is_published: result.isPublished ?? false } : c)
            );
        }
    };

    // 콘텐츠 삭제
    const handleDelete = async (contentId: string) => {
        if (!confirm("Are you sure you want to delete this content?")) return;

        const result = await deleteContent(contentId);
        if (result.success) {
            setContents(prev => prev.filter(c => c.id !== contentId));
        }
    };

    // 챌린지 목록 로드
    const loadChallenges = async (contentId: string) => {
        setSelectedContent(contentId);
        const data = await getContentChallenges(contentId);
        setChallenges(data as typeof challenges);
    };

    // 챌린지 삭제
    const handleDeleteChallenge = async (challengeId: string) => {
        const result = await deleteChallenge(challengeId);
        if (result.success) {
            setChallenges(prev => prev.filter(c => c.id !== challengeId));
        }
    };

    // 관리자 권한이 없는 경우
    if (hasAdminAccess === false) {
        return (
            <main className="min-h-screen flex items-center justify-center px-4">
                <div className="card p-8 text-center max-w-md">
                    <ShieldX className="w-16 h-16 mx-auto mb-6 text-[#EF4444]" />
                    <h1 className="text-2xl font-bold text-white mb-2">Access Denied</h1>
                    <p className="text-gray-400 mb-6">
                        You don't have admin privileges to access this page.
                    </p>
                    <Link
                        href="/"
                        className="btn-primary px-6 py-3 text-white font-medium inline-block"
                    >
                        Go Home
                    </Link>
                </div>
            </main>
        );
    }

    // 권한 확인 중
    if (hasAdminAccess === null) {
        return (
            <main className="min-h-screen flex items-center justify-center">
                <Loader2 className="w-8 h-8 text-[#FF007F] animate-spin" />
            </main>
        );
    }

    return (
        <main className="min-h-screen py-6 md:py-8 px-4 md:px-6">
            <div className="max-w-6xl mx-auto">
                {/* 헤더 */}
                <header className="flex items-center justify-between mb-8">
                    <div className="flex items-center gap-4">
                        <Link href="/" className="text-gray-400 hover:text-white">
                            <ChevronLeft className="w-6 h-6" />
                        </Link>
                        <h1 className="text-2xl md:text-3xl font-bold text-white">
                            Admin Dashboard
                        </h1>
                    </div>

                    <button
                        onClick={() => setShowAddForm(true)}
                        className="btn-primary px-4 py-2 text-white font-semibold text-sm inline-flex items-center gap-2"
                    >
                        <Plus className="w-4 h-4" />
                        Add Content
                    </button>
                </header>

                {/* 통계 카드 */}
                <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-8">
                    <div className="card p-4 text-center">
                        <p className="text-2xl font-bold text-[#FF007F]">{contents.length}</p>
                        <p className="text-gray-400 text-sm">Total Contents</p>
                    </div>
                    <div className="card p-4 text-center">
                        <p className="text-2xl font-bold text-[#22C55E]">
                            {contents.filter(c => c.is_published).length}
                        </p>
                        <p className="text-gray-400 text-sm">Published</p>
                    </div>
                    <div className="card p-4 text-center">
                        <p className="text-2xl font-bold text-[#F59E0B]">
                            {contents.reduce((acc, c) => acc + (c.challenges?.[0]?.count || 0), 0)}
                        </p>
                        <p className="text-gray-400 text-sm">Challenges</p>
                    </div>
                    <div className="card p-4 text-center">
                        <p className="text-2xl font-bold text-[#7C3AED]">
                            {new Set(contents.map(c => c.artist_name)).size}
                        </p>
                        <p className="text-gray-400 text-sm">Artists</p>
                    </div>
                </div>

                {/* 콘텐츠 목록 */}
                <div className="card p-4 md:p-6">
                    <div className="flex flex-col md:flex-row md:items-center justify-between gap-4 mb-6">
                        <h2 className="text-lg font-bold text-white">Content Library</h2>

                        {/* 검색창 */}
                        <div className="relative w-full md:w-64">
                            <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400 w-4 h-4" />
                            <input
                                type="text"
                                placeholder="Search by title or artist..."
                                value={searchTerm}
                                onChange={(e) => setSearchTerm(e.target.value)}
                                className="w-full bg-[#09090b] border border-white/10 rounded-lg py-2 pl-9 pr-4 text-sm text-white focus:outline-none focus:border-[#FF007F]"
                            />
                        </div>
                    </div>

                    {isLoading ? (
                        <div className="text-center py-12">
                            <Loader2 className="w-8 h-8 text-[#FF007F] animate-spin mx-auto" />
                        </div>
                    ) : filteredContents.length === 0 ? (
                        <div className="text-center py-12 text-gray-400">
                            {searchTerm ? (
                                <>
                                    <Search className="w-12 h-12 mx-auto mb-4 opacity-50" />
                                    <p>No results found for "{searchTerm}"</p>
                                </>
                            ) : (
                                <>
                                    <Youtube className="w-12 h-12 mx-auto mb-4 opacity-50" />
                                    <p>No content yet. Add your first video!</p>
                                </>
                            )}
                        </div>
                    ) : (
                        <div className="space-y-3">
                            {filteredContents.map((content) => (
                                <motion.div
                                    key={content.id}
                                    initial={{ opacity: 0, y: 10 }}
                                    animate={{ opacity: 1, y: 0 }}
                                    className="flex items-center justify-between p-4 bg-white/5 rounded-xl hover:bg-white/10 transition-colors"
                                >
                                    <div className="flex items-center gap-4">
                                        <img
                                            src={`https://img.youtube.com/vi/${content.youtube_id}/default.jpg`}
                                            alt=""
                                            className="w-20 h-12 object-cover rounded-lg"
                                        />
                                        <div>
                                            <h3 className="text-white font-medium">{content.title}</h3>
                                            <p className="text-gray-400 text-sm">
                                                {content.artist_name} • {content.challenges?.[0]?.count || 0} challenges
                                            </p>
                                        </div>
                                    </div>

                                    <div className="flex items-center gap-2">
                                        <span className={`px-2 py-1 rounded-full text-xs ${content.difficulty === "easy" ? "bg-[#22C55E]/20 text-[#22C55E]" :
                                            content.difficulty === "normal" ? "bg-[#F59E0B]/20 text-[#F59E0B]" :
                                                "bg-[#EF4444]/20 text-[#EF4444]"
                                            }`}>
                                            {content.difficulty}
                                        </span>

                                        <button
                                            onClick={() => handleTogglePublish(content.id)}
                                            className={`p-2 rounded-lg transition-colors ${content.is_published
                                                ? "bg-[#22C55E]/20 text-[#22C55E]"
                                                : "bg-gray-500/20 text-gray-400"
                                                }`}
                                            title={content.is_published ? "Unpublish" : "Publish"}
                                        >
                                            {content.is_published ? <Eye className="w-4 h-4" /> : <EyeOff className="w-4 h-4" />}
                                        </button>

                                        <button
                                            onClick={() => loadChallenges(content.id)}
                                            className="p-2 rounded-lg bg-[#7C3AED]/20 text-[#7C3AED] hover:bg-[#7C3AED]/30"
                                            title="View Challenges"
                                        >
                                            <Sparkles className="w-4 h-4" />
                                        </button>

                                        <button
                                            onClick={() => handleDelete(content.id)}
                                            className="p-2 rounded-lg bg-[#EF4444]/20 text-[#EF4444] hover:bg-[#EF4444]/30"
                                            title="Delete"
                                        >
                                            <Trash2 className="w-4 h-4" />
                                        </button>
                                    </div>
                                </motion.div>
                            ))}
                        </div>
                    )}
                </div>

                {/* 챌린지 패널 */}
                {selectedContent && (
                    <motion.div
                        initial={{ opacity: 0, y: 20 }}
                        animate={{ opacity: 1, y: 0 }}
                        className="card p-4 md:p-6 mt-6"
                    >
                        <div className="flex items-center justify-between mb-4">
                            <h2 className="text-lg font-bold text-white">Challenges</h2>
                            <button
                                onClick={() => setSelectedContent(null)}
                                className="text-gray-400 hover:text-white"
                            >
                                <X className="w-5 h-5" />
                            </button>
                        </div>

                        {challenges.length === 0 ? (
                            <p className="text-gray-400 text-center py-8">No challenges yet</p>
                        ) : (
                            <div className="space-y-2">
                                {challenges.map((challenge, index) => (
                                    <div
                                        key={challenge.id}
                                        className="flex items-center justify-between p-3 bg-white/5 rounded-lg"
                                    >
                                        <div className="flex items-center gap-3">
                                            <span className="text-[#FF007F] font-bold">#{index + 1}</span>
                                            <span className="text-white">
                                                {challenge.full_sentence.replace(
                                                    challenge.answer_word,
                                                    `[${challenge.answer_word}]`
                                                )}
                                            </span>
                                        </div>
                                        <button
                                            onClick={() => handleDeleteChallenge(challenge.id)}
                                            className="text-gray-400 hover:text-[#EF4444]"
                                        >
                                            <Trash2 className="w-4 h-4" />
                                        </button>
                                    </div>
                                ))}
                            </div>
                        )}
                    </motion.div>
                )}

                {/* 콘텐츠 추가 모달 */}
                {showAddForm && (
                    <AddContentModal
                        onClose={() => setShowAddForm(false)}
                        onSuccess={() => {
                            setShowAddForm(false);
                            loadContents();
                        }}
                    />
                )}
            </div>
        </main>
    );
}

// 콘텐츠 추가 모달 컴포넌트
function AddContentModal({
    onClose,
    onSuccess
}: {
    onClose: () => void;
    onSuccess: () => void;
}) {
    const [formData, setFormData] = useState({
        youtubeUrl: "",
        title: "",
        artistName: "",
        difficulty: "normal" as "easy" | "normal" | "hard",
        transcript: "",
    });
    const [isLoading, setIsLoading] = useState(false);
    const [error, setError] = useState<string | null>(null);

    // YouTube URL에서 ID 추출
    const extractYoutubeId = (url: string): string | null => {
        const match = url.match(/(?:youtube\.com\/watch\?v=|youtu\.be\/|youtube\.com\/embed\/)([^&\n?#]+)/);
        return match ? match[1] : null;
    };

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault();
        setError(null);

        const youtubeId = extractYoutubeId(formData.youtubeUrl);
        if (!youtubeId) {
            setError("Invalid YouTube URL");
            return;
        }

        setIsLoading(true);

        const result = await createContent({
            youtubeId,
            title: formData.title,
            artistName: formData.artistName,
            difficulty: formData.difficulty,
            transcript: formData.transcript || undefined,
        });

        setIsLoading(false);

        if (result.success) {
            onSuccess();
        } else {
            setError(result.error || "Failed to create content");
        }
    };

    return (
        <motion.div
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            className="fixed inset-0 bg-black/80 flex items-center justify-center z-50 p-4"
        >
            <motion.div
                initial={{ scale: 0.95, y: 20 }}
                animate={{ scale: 1, y: 0 }}
                className="card p-6 w-full max-w-lg max-h-[90vh] overflow-y-auto"
            >
                <div className="flex items-center justify-between mb-6">
                    <h2 className="text-xl font-bold text-white">Add New Content</h2>
                    <button onClick={onClose} className="text-gray-400 hover:text-white">
                        <X className="w-5 h-5" />
                    </button>
                </div>

                <form onSubmit={handleSubmit} className="space-y-4">
                    {/* YouTube URL */}
                    <div>
                        <label className="block text-sm text-gray-400 mb-2">YouTube URL *</label>
                        <input
                            type="text"
                            value={formData.youtubeUrl}
                            onChange={(e) => setFormData(prev => ({ ...prev, youtubeUrl: e.target.value }))}
                            placeholder="https://youtube.com/watch?v=..."
                            className="w-full px-4 py-3 input-field"
                            required
                        />
                    </div>

                    {/* Title */}
                    <div>
                        <label className="block text-sm text-gray-400 mb-2">Title *</label>
                        <input
                            type="text"
                            value={formData.title}
                            onChange={(e) => setFormData(prev => ({ ...prev, title: e.target.value }))}
                            placeholder="V-Log Daily Talk"
                            className="w-full px-4 py-3 input-field"
                            required
                        />
                    </div>

                    {/* Artist Name */}
                    <div>
                        <label className="block text-sm text-gray-400 mb-2">Artist Name *</label>
                        <input
                            type="text"
                            value={formData.artistName}
                            onChange={(e) => setFormData(prev => ({ ...prev, artistName: e.target.value }))}
                            placeholder="BTS"
                            className="w-full px-4 py-3 input-field"
                            required
                        />
                    </div>

                    {/* Difficulty */}
                    <div>
                        <label className="block text-sm text-gray-400 mb-2">Difficulty *</label>
                        <div className="flex gap-2">
                            {(["easy", "normal", "hard"] as const).map((level) => (
                                <button
                                    key={level}
                                    type="button"
                                    onClick={() => setFormData(prev => ({ ...prev, difficulty: level }))}
                                    className={`flex-1 py-2 rounded-lg capitalize transition-colors ${formData.difficulty === level
                                        ? level === "easy" ? "bg-[#22C55E] text-white" :
                                            level === "normal" ? "bg-[#F59E0B] text-white" :
                                                "bg-[#EF4444] text-white"
                                        : "bg-white/10 text-gray-400"
                                        }`}
                                >
                                    {level}
                                </button>
                            ))}
                        </div>
                    </div>

                    {/* Transcript (Optional - for AI generation) */}
                    <div>
                        <label className="block text-sm text-gray-400 mb-2">
                            Transcript (Optional - for AI challenge generation)
                        </label>
                        <textarea
                            value={formData.transcript}
                            onChange={(e) => setFormData(prev => ({ ...prev, transcript: e.target.value }))}
                            placeholder="Paste the Korean transcript here for AI-powered challenge generation..."
                            className="w-full px-4 py-3 input-field h-32 resize-none"
                        />
                        <p className="text-xs text-gray-500 mt-1">
                            <Sparkles className="w-3 h-3 inline mr-1" />
                            AI will automatically generate challenges from the transcript
                        </p>
                    </div>

                    {/* Error */}
                    {error && (
                        <div className="p-3 bg-[#EF4444]/20 text-[#EF4444] rounded-lg text-sm">
                            {error}
                        </div>
                    )}

                    {/* Submit */}
                    <div className="flex gap-3 pt-4">
                        <button
                            type="button"
                            onClick={onClose}
                            className="flex-1 py-3 border border-white/20 rounded-full text-white font-medium hover:bg-white/10"
                        >
                            Cancel
                        </button>
                        <button
                            type="submit"
                            disabled={isLoading}
                            className="flex-1 py-3 btn-primary text-white font-medium disabled:opacity-50 inline-flex items-center justify-center gap-2"
                        >
                            {isLoading ? (
                                <>
                                    <Loader2 className="w-4 h-4 animate-spin" />
                                    Creating...
                                </>
                            ) : (
                                <>
                                    <Check className="w-4 h-4" />
                                    Create
                                </>
                            )}
                        </button>
                    </div>
                </form>
            </motion.div>
        </motion.div>
    );
}
