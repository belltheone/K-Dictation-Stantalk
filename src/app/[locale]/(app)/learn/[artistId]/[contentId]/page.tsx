"use client";

import { useState, useRef, useEffect, useCallback } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { useParams } from "next/navigation";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import YouTube, { YouTubePlayer, YouTubeEvent } from "react-youtube";
import {
    Play, Pause, RotateCcw, Volume2, VolumeX,
    ChevronLeft, Flame, Check, X
} from "lucide-react";

// 4지선다 퀴즈 기반 딕테이션 플레이어 - 모바일 퍼스트
export default function DictationPlayerPage() {
    const params = useParams();
    const artistId = params.artistId as string;
    const t = useTranslations();

    // 플레이어 상태
    type PlayerState = 'loading' | 'ready' | 'playing' | 'success' | 'fail';
    const [playerState, setPlayerState] = useState<PlayerState>('loading');
    const [player, setPlayer] = useState<YouTubePlayer | null>(null);
    const [isMuted, setIsMuted] = useState(false);

    // 선택지 상태
    const [selectedOption, setSelectedOption] = useState<number | null>(null);
    const [shuffledOptions, setShuffledOptions] = useState<string[]>([]);

    // 샘플 챌린지 데이터 - 4지선다 옵션 포함
    const challenge = {
        id: "challenge-1",
        youtubeId: "dQw4w9WgXcQ",
        startSec: 10,
        endSec: 15,
        fullSentence: "밥 먹었어?",
        answerWord: "먹었어",
        wrongOptions: ["먹어", "먹을까", "먹자"], // 오답 3개
        hintEn: "Did you eat?",
        grammarExplanation: "Past tense informal ending",
        xp: 10,
    };

    const checkIntervalRef = useRef<NodeJS.Timeout | null>(null);

    // 옵션 셔플 함수
    const shuffleOptions = useCallback(() => {
        const options = [challenge.answerWord, ...challenge.wrongOptions];
        const shuffled = options.sort(() => Math.random() - 0.5);
        setShuffledOptions(shuffled);
    }, [challenge.answerWord, challenge.wrongOptions]);

    useEffect(() => {
        shuffleOptions();
    }, [shuffleOptions]);

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
            playsinline: 1,
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

    // 4지선다 선택 핸들러
    const handleOptionSelect = (index: number) => {
        if (playerState === 'success' || selectedOption !== null) return;

        setSelectedOption(index);
        const selected = shuffledOptions[index];

        if (selected === challenge.answerWord) {
            setPlayerState('success');
            player?.pauseVideo();
        } else {
            setPlayerState('fail');
            setTimeout(() => {
                setPlayerState('ready');
                setSelectedOption(null);
            }, 1500);
        }
    };

    const getOptionStyle = (index: number) => {
        if (selectedOption === null) {
            return "bg-zinc-800/50 border-zinc-700 hover:border-rose-500/50 hover:bg-zinc-800";
        }

        const isCorrect = shuffledOptions[index] === challenge.answerWord;
        const isSelected = selectedOption === index;

        if (isCorrect) {
            return "bg-emerald-500/20 border-emerald-500 text-emerald-400";
        }
        if (isSelected && !isCorrect) {
            return "bg-red-500/20 border-red-500 text-red-400";
        }
        return "bg-zinc-800/30 border-zinc-700/50 opacity-50";
    };

    const goToNext = () => {
        setPlayerState('ready');
        setSelectedOption(null);
        shuffleOptions();
    };

    return (
        <main className="min-h-screen flex flex-col bg-[#09090b]">
            {/* 상단 네비게이션 */}
            <header className="p-3 md:p-4 flex items-center justify-between">
                <Link
                    href={`/learn/${artistId}`}
                    className="flex items-center gap-1 md:gap-2 text-zinc-400 hover:text-white transition-colors text-sm md:text-base"
                >
                    <ChevronLeft className="w-4 h-4 md:w-5 md:h-5" />
                    <span>{t("common.back")}</span>
                </Link>

                <div className="flex items-center gap-3 md:gap-4">
                    <div className="flex items-center gap-1 md:gap-2 text-emerald-500">
                        <Flame className="w-4 h-4 md:w-5 md:h-5 animate-pulse" />
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
                                    <div className="w-10 h-10 md:w-12 md:h-12 border-4 border-rose-500 border-t-transparent rounded-full animate-spin mx-auto mb-3 md:mb-4" />
                                    <p className="text-zinc-400 text-sm md:text-base">{t("player.loading")}</p>
                                </div>
                            </div>
                        )}
                    </motion.div>

                    {/* 컨트롤 버튼들 */}
                    <div className="flex items-center justify-center gap-3 md:gap-4 mb-6 md:mb-8">
                        <button
                            onClick={toggleMute}
                            className="p-2 md:p-3 rounded-full border border-zinc-700 hover:border-rose-500/50 transition-colors"
                        >
                            {isMuted ? <VolumeX className="w-4 h-4 md:w-5 md:h-5" /> : <Volume2 className="w-4 h-4 md:w-5 md:h-5" />}
                        </button>

                        <button
                            onClick={togglePlay}
                            className="p-4 md:p-5 rounded-full bg-gradient-to-r from-rose-600 to-violet-600 hover:scale-110 transition-transform shadow-lg shadow-rose-500/20"
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
                            className="p-2 md:p-3 rounded-full border border-zinc-700 hover:border-rose-500/50 transition-colors"
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
                        <p className="text-zinc-400 mt-1 md:mt-2 text-sm md:text-base">
                            {t("player.fillBlank")}
                        </p>
                    </div>

                    {/* 4지선다 옵션 */}
                    <div className="grid grid-cols-2 gap-3 md:gap-4">
                        {shuffledOptions.map((option, index) => (
                            <motion.button
                                key={index}
                                whileHover={selectedOption === null ? { scale: 1.02 } : {}}
                                whileTap={selectedOption === null ? { scale: 0.98 } : {}}
                                onClick={() => handleOptionSelect(index)}
                                disabled={playerState === 'loading' || playerState === 'success' || selectedOption !== null}
                                className={`
                                    p-4 md:p-5 rounded-xl border-2 text-base md:text-lg font-medium
                                    transition-all duration-300 flex items-center justify-center gap-2
                                    ${getOptionStyle(index)}
                                `}
                            >
                                {selectedOption !== null && option === challenge.answerWord && (
                                    <Check className="w-5 h-5" />
                                )}
                                {selectedOption === index && option !== challenge.answerWord && (
                                    <X className="w-5 h-5" />
                                )}
                                {option}
                            </motion.button>
                        ))}
                    </div>

                    {/* 영어 힌트 */}
                    <div className="mt-4 md:mt-6 p-3 md:p-4 rounded-xl bg-zinc-800/30 border border-zinc-700/50 text-center">
                        <p className="text-zinc-400 text-sm md:text-base">💡 {challenge.hintEn}</p>
                    </div>
                </div>
            </div>

            {/* 성공 모달 */}
            <AnimatePresence>
                {playerState === 'success' && (
                    <motion.div
                        initial={{ opacity: 0 }}
                        animate={{ opacity: 1 }}
                        exit={{ opacity: 0 }}
                        className="fixed inset-0 bg-black/80 backdrop-blur-sm flex items-center justify-center z-50 p-4 md:p-6"
                    >
                        <motion.div
                            initial={{ scale: 0.8, y: 50 }}
                            animate={{ scale: 1, y: 0 }}
                            exit={{ scale: 0.8, y: 50 }}
                            className="card p-6 md:p-8 text-center max-w-md w-full bg-zinc-900 border border-zinc-800"
                        >
                            <motion.div
                                initial={{ scale: 0 }}
                                animate={{ scale: 1 }}
                                transition={{ type: "spring", delay: 0.2 }}
                                className="w-16 h-16 md:w-20 md:h-20 mx-auto mb-4 md:mb-6 rounded-full bg-emerald-500 flex items-center justify-center"
                            >
                                <Check className="w-8 h-8 md:w-10 md:h-10 text-white" />
                            </motion.div>

                            <h2 className="text-2xl md:text-3xl font-bold text-white mb-2">
                                {t("player.success.title")}
                            </h2>
                            <p className="text-zinc-400 mb-2 text-sm md:text-base">
                                {t("player.success.answer")}: <span className="text-emerald-400 font-bold">{challenge.answerWord}</span>
                            </p>
                            <p className="text-amber-400 font-bold text-base md:text-lg mb-4 md:mb-6">
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
