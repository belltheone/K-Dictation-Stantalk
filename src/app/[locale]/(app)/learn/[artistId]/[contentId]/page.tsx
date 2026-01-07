"use client";

import { useState, useRef, useEffect, useCallback } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { useParams } from "next/navigation";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import YouTube, { YouTubePlayer, YouTubeEvent } from "react-youtube";
import {
    Play, Pause, RotateCcw, Lightbulb, Volume2, VolumeX,
    ChevronLeft, Flame, Check
} from "lucide-react";
import { validateAnswer } from "@/lib/utils";

// 딕테이션 플레이어 페이지 - 핵심 기능, 모바일 퍼스트
export default function DictationPlayerPage() {
    const params = useParams();
    const artistId = params.artistId as string;
    const t = useTranslations();

    // 플레이어 상태
    type PlayerState = 'loading' | 'ready' | 'playing' | 'success' | 'fail';
    const [playerState, setPlayerState] = useState<PlayerState>('loading');
    const [player, setPlayer] = useState<YouTubePlayer | null>(null);
    const [isMuted, setIsMuted] = useState(false);

    // 입력 및 정답 상태
    const [userInput, setUserInput] = useState("");
    const [showHint, setShowHint] = useState(false);
    const [attempts, setAttempts] = useState(0);
    const [isComposing, setIsComposing] = useState(false);

    // 샘플 챌린지 데이터
    const challenge = {
        id: "challenge-1",
        youtubeId: "dQw4w9WgXcQ",
        startSec: 10,
        endSec: 15,
        fullSentence: "밥 먹었어?",
        answerWord: "먹었어",
        hintEn: "Did you eat?",
        grammarExplanation: "Past tense informal ending",
        xp: 10,
    };

    const inputRef = useRef<HTMLInputElement>(null);
    const checkIntervalRef = useRef<NodeJS.Timeout | null>(null);

    // YouTube 플레이어 옵션 - 모바일 최적화
    const opts = {
        height: "100%",
        width: "100%",
        playerVars: {
            autoplay: 0,
            controls: 0,
            disablekb: 1,
            modestbranding: 1,
            rel: 0,
            start: challenge.startSec,
            playsinline: 1, // 모바일에서 인라인 재생
        },
    };

    const onPlayerReady = (event: YouTubeEvent) => {
        setPlayer(event.target);
        setPlayerState('ready');
    };

    const checkTimeAndLoop = useCallback(() => {
        if (player && playerState === 'playing') {
            const currentTime = player.getCurrentTime();
            if (currentTime >= challenge.endSec) {
                player.seekTo(challenge.startSec, true);
            }
        }
    }, [player, playerState, challenge.startSec, challenge.endSec]);

    useEffect(() => {
        if (playerState === 'playing') {
            checkIntervalRef.current = setInterval(checkTimeAndLoop, 100);
        }
        return () => {
            if (checkIntervalRef.current) {
                clearInterval(checkIntervalRef.current);
            }
        };
    }, [playerState, checkTimeAndLoop]);

    const togglePlay = () => {
        if (!player) return;

        if (playerState === 'playing') {
            player.pauseVideo();
            setPlayerState('ready');
        } else {
            player.seekTo(challenge.startSec, true);
            player.playVideo();
            setPlayerState('playing');
            inputRef.current?.focus();
        }
    };

    const replay = () => {
        if (!player) return;
        player.seekTo(challenge.startSec, true);
        player.playVideo();
        setPlayerState('playing');
    };

    const toggleMute = () => {
        if (!player) return;
        if (isMuted) {
            player.unMute();
        } else {
            player.mute();
        }
        setIsMuted(!isMuted);
    };

    const handleSubmit = () => {
        if (!userInput.trim() || isComposing) return;

        const result = validateAnswer(userInput, challenge.answerWord);
        setAttempts(prev => prev + 1);

        if (result.isCorrect) {
            setPlayerState('success');
            player?.pauseVideo();
        } else {
            setPlayerState('fail');
            setTimeout(() => {
                setPlayerState('ready');
                setUserInput("");
            }, 1000);
        }
    };

    const handleKeyDown = (e: React.KeyboardEvent<HTMLInputElement>) => {
        if (e.key === 'Enter' && !e.nativeEvent.isComposing && !isComposing) {
            e.preventDefault();
            handleSubmit();
        }
    };

    const goToNext = () => {
        setPlayerState('ready');
        setUserInput("");
        setShowHint(false);
        setAttempts(0);
    };

    return (
        <main className="min-h-screen flex flex-col">
            {/* 상단 네비게이션 - 모바일 최적화 */}
            <header className="p-3 md:p-4 flex items-center justify-between">
                <Link
                    href={`/learn/${artistId}`}
                    className="flex items-center gap-1 md:gap-2 text-gray-400 hover:text-white transition-colors text-sm md:text-base"
                >
                    <ChevronLeft className="w-4 h-4 md:w-5 md:h-5" />
                    <span>{t("common.back")}</span>
                </Link>

                <div className="flex items-center gap-3 md:gap-4">
                    <div className="flex items-center gap-1 md:gap-2 text-[#22C55E]">
                        <Flame className="w-4 h-4 md:w-5 md:h-5 animate-pulse-fire" />
                        <span className="font-bold text-sm md:text-base">3</span>
                    </div>
                </div>
            </header>

            {/* 메인 플레이어 영역 */}
            <div className="flex-1 flex flex-col items-center justify-center px-4 md:px-6 pb-6 md:pb-8">
                <div className="w-full max-w-3xl">
                    {/* YouTube 플레이어 */}
                    <motion.div
                        initial={{ opacity: 0, scale: 0.95 }}
                        animate={{ opacity: 1, scale: 1 }}
                        className="relative aspect-video rounded-xl md:rounded-2xl overflow-hidden bg-black/50 mb-6 md:mb-8"
                    >
                        <YouTube
                            videoId={challenge.youtubeId}
                            opts={opts}
                            onReady={onPlayerReady}
                            className="absolute inset-0"
                            iframeClassName="w-full h-full"
                        />

                        {playerState === 'loading' && (
                            <div className="absolute inset-0 flex items-center justify-center bg-black/80">
                                <div className="text-center">
                                    <div className="w-10 h-10 md:w-12 md:h-12 border-4 border-[#FF007F] border-t-transparent rounded-full animate-spin mx-auto mb-3 md:mb-4" />
                                    <p className="text-gray-400 text-sm md:text-base">{t("player.loading")}</p>
                                </div>
                            </div>
                        )}
                    </motion.div>

                    {/* 컨트롤 버튼들 */}
                    <div className="flex items-center justify-center gap-3 md:gap-4 mb-6 md:mb-8">
                        <button
                            onClick={toggleMute}
                            className="p-2 md:p-3 rounded-full border border-white/20 hover:border-[#7C3AED] transition-colors"
                        >
                            {isMuted ? <VolumeX className="w-4 h-4 md:w-5 md:h-5" /> : <Volume2 className="w-4 h-4 md:w-5 md:h-5" />}
                        </button>

                        <button
                            onClick={togglePlay}
                            className="p-4 md:p-5 rounded-full bg-gradient-to-r from-[#FF007F] to-[#7C3AED] hover:scale-110 transition-transform"
                            disabled={playerState === 'loading'}
                        >
                            {playerState === 'playing' ? (
                                <Pause className="w-6 h-6 md:w-8 md:h-8 text-white" />
                            ) : (
                                <Play className="w-6 h-6 md:w-8 md:h-8 text-white ml-0.5 md:ml-1" />
                            )}
                        </button>

                        <button
                            onClick={replay}
                            className="p-2 md:p-3 rounded-full border border-white/20 hover:border-[#7C3AED] transition-colors"
                            disabled={playerState === 'loading'}
                        >
                            <RotateCcw className="w-4 h-4 md:w-5 md:h-5" />
                        </button>
                    </div>

                    {/* 문장 표시 */}
                    <div className="text-center mb-6 md:mb-8">
                        <p className="text-xl md:text-2xl font-semibold text-white">
                            {challenge.fullSentence.replace(challenge.answerWord, "_____")}
                        </p>
                        <p className="text-gray-400 mt-1 md:mt-2 text-sm md:text-base">
                            {t("player.fillBlank")}
                        </p>
                    </div>

                    {/* 입력 영역 */}
                    <motion.div
                        animate={playerState === 'fail' ? { x: [-10, 10, -10, 10, 0] } : {}}
                        transition={{ duration: 0.5 }}
                        className="relative"
                    >
                        <input
                            ref={inputRef}
                            type="text"
                            value={userInput}
                            onChange={(e) => setUserInput(e.target.value)}
                            onKeyDown={handleKeyDown}
                            onCompositionStart={() => setIsComposing(true)}
                            onCompositionEnd={() => setIsComposing(false)}
                            placeholder={t("player.inputPlaceholder")}
                            disabled={playerState === 'loading' || playerState === 'success'}
                            className={`w-full px-4 md:px-6 py-3 md:py-4 text-base md:text-xl text-center input-field ${playerState === 'fail' ? 'border-[#EF4444]' : ''
                                }`}
                        />

                        <button
                            onClick={() => setShowHint(!showHint)}
                            className={`absolute right-3 md:right-4 top-1/2 -translate-y-1/2 p-1.5 md:p-2 rounded-full transition-colors ${showHint ? 'bg-[#F59E0B] text-black' : 'bg-white/10 hover:bg-white/20'
                                }`}
                        >
                            <Lightbulb className="w-4 h-4 md:w-5 md:h-5" />
                        </button>
                    </motion.div>

                    {/* 힌트 표시 */}
                    <AnimatePresence>
                        {showHint && (
                            <motion.div
                                initial={{ opacity: 0, y: -10 }}
                                animate={{ opacity: 1, y: 0 }}
                                exit={{ opacity: 0, y: -10 }}
                                className="mt-3 md:mt-4 p-3 md:p-4 card bg-[#F59E0B]/10 text-center"
                            >
                                <p className="text-[#F59E0B] text-sm md:text-base">💡 {t("player.hint")}: {challenge.hintEn}</p>
                                <p className="text-gray-400 text-xs md:text-sm mt-1">{challenge.grammarExplanation}</p>
                            </motion.div>
                        )}
                    </AnimatePresence>

                    {/* 제출 버튼 */}
                    <motion.button
                        whileHover={{ scale: 1.02 }}
                        whileTap={{ scale: 0.98 }}
                        onClick={handleSubmit}
                        disabled={!userInput.trim() || playerState === 'loading' || playerState === 'success'}
                        className="w-full mt-4 md:mt-6 py-3 md:py-4 btn-primary text-white font-bold text-base md:text-lg disabled:opacity-50 disabled:cursor-not-allowed"
                    >
                        {t("player.checkAnswer")}
                    </motion.button>
                </div>
            </div>

            {/* 성공 모달 */}
            <AnimatePresence>
                {playerState === 'success' && (
                    <motion.div
                        initial={{ opacity: 0 }}
                        animate={{ opacity: 1 }}
                        exit={{ opacity: 0 }}
                        className="fixed inset-0 bg-black/80 flex items-center justify-center z-50 p-4 md:p-6"
                    >
                        <motion.div
                            initial={{ scale: 0.8, y: 50 }}
                            animate={{ scale: 1, y: 0 }}
                            exit={{ scale: 0.8, y: 50 }}
                            className="card p-6 md:p-8 text-center max-w-md w-full"
                        >
                            <motion.div
                                initial={{ scale: 0 }}
                                animate={{ scale: 1 }}
                                transition={{ type: "spring", delay: 0.2 }}
                                className="w-16 h-16 md:w-20 md:h-20 mx-auto mb-4 md:mb-6 rounded-full bg-[#22C55E] flex items-center justify-center"
                            >
                                <Check className="w-8 h-8 md:w-10 md:h-10 text-white" />
                            </motion.div>

                            <h2 className="text-2xl md:text-3xl font-bold text-white mb-2">
                                {t("player.success.title")}
                            </h2>
                            <p className="text-gray-400 mb-2 text-sm md:text-base">
                                {t("player.success.answer")}: <span className="text-[#22C55E] font-bold">{challenge.answerWord}</span>
                            </p>
                            <p className="text-[#F59E0B] font-bold text-base md:text-lg mb-4 md:mb-6">
                                +{challenge.xp} XP
                            </p>

                            <button
                                onClick={goToNext}
                                className="w-full py-3 md:py-4 btn-primary text-white font-bold text-sm md:text-base"
                            >
                                {t("player.success.next")}
                            </button>
                        </motion.div>
                    </motion.div>
                )}
            </AnimatePresence>
        </main>
    );
}
