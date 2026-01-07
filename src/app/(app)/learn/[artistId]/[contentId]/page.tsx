"use client";

import { useState, useRef, useEffect, useCallback } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { useParams } from "next/navigation";
import YouTube, { YouTubePlayer, YouTubeEvent } from "react-youtube";
import {
    Play, Pause, RotateCcw, Lightbulb, Volume2, VolumeX,
    ChevronLeft, Flame, Check, X
} from "lucide-react";
import Link from "next/link";
import { validateAnswer } from "@/lib/utils";

// 딕테이션 플레이어 페이지 - 핵심 기능
export default function DictationPlayerPage() {
    const params = useParams();
    const artistId = params.artistId as string;
    const contentId = params.contentId as string;

    // 플레이어 상태
    type PlayerState = 'loading' | 'ready' | 'playing' | 'success' | 'fail';
    const [playerState, setPlayerState] = useState<PlayerState>('loading');
    const [player, setPlayer] = useState<YouTubePlayer | null>(null);
    const [isMuted, setIsMuted] = useState(false);

    // 입력 및 정답 상태
    const [userInput, setUserInput] = useState("");
    const [showHint, setShowHint] = useState(false);
    const [attempts, setAttempts] = useState(0);
    const [isComposing, setIsComposing] = useState(false); // 한글 조합 중 상태

    // 샘플 챌린지 데이터 (추후 Supabase에서 가져올 예정)
    const challenge = {
        id: "challenge-1",
        youtubeId: "dQw4w9WgXcQ", // 샘플 영상
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

    // YouTube 플레이어 옵션
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
        },
    };

    // 플레이어 준비 완료
    const onPlayerReady = (event: YouTubeEvent) => {
        setPlayer(event.target);
        setPlayerState('ready');
    };

    // 구간 반복 체크 함수
    const checkTimeAndLoop = useCallback(() => {
        if (player && playerState === 'playing') {
            const currentTime = player.getCurrentTime();
            if (currentTime >= challenge.endSec) {
                player.seekTo(challenge.startSec, true);
            }
        }
    }, [player, playerState, challenge.startSec, challenge.endSec]);

    // 구간 반복 로직
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

    // 재생 토글
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

    // 다시 듣기
    const replay = () => {
        if (!player) return;
        player.seekTo(challenge.startSec, true);
        player.playVideo();
        setPlayerState('playing');
    };

    // 음소거 토글
    const toggleMute = () => {
        if (!player) return;
        if (isMuted) {
            player.unMute();
        } else {
            player.mute();
        }
        setIsMuted(!isMuted);
    };

    // 정답 제출
    const handleSubmit = () => {
        if (!userInput.trim() || isComposing) return;

        const result = validateAnswer(userInput, challenge.answerWord);
        setAttempts(prev => prev + 1);

        if (result.isCorrect) {
            setPlayerState('success');
            player?.pauseVideo();
        } else {
            setPlayerState('fail');
            // 흔들림 효과 후 다시 ready로
            setTimeout(() => {
                setPlayerState('ready');
                setUserInput("");
            }, 1000);
        }
    };

    // 키보드 이벤트 처리 (한글 IME 이슈 대응)
    const handleKeyDown = (e: React.KeyboardEvent<HTMLInputElement>) => {
        if (e.key === 'Enter' && !e.nativeEvent.isComposing && !isComposing) {
            e.preventDefault();
            handleSubmit();
        }
    };

    // 다음 챌린지로 이동 (임시)
    const goToNext = () => {
        setPlayerState('ready');
        setUserInput("");
        setShowHint(false);
        setAttempts(0);
        // 실제로는 다음 챌린지 데이터를 로드
    };

    return (
        <main className="min-h-screen flex flex-col">
            {/* 상단 네비게이션 */}
            <header className="p-4 flex items-center justify-between">
                <Link
                    href={`/learn/${artistId}`}
                    className="flex items-center gap-2 text-gray-400 hover:text-white transition-colors"
                >
                    <ChevronLeft className="w-5 h-5" />
                    <span>뒤로</span>
                </Link>

                <div className="flex items-center gap-4">
                    <div className="flex items-center gap-2 text-[#22C55E]">
                        <Flame className="w-5 h-5 animate-pulse-fire" />
                        <span className="font-bold">3</span>
                    </div>
                </div>
            </header>

            {/* 메인 플레이어 영역 */}
            <div className="flex-1 flex flex-col items-center justify-center px-6 pb-8">
                <div className="w-full max-w-3xl">
                    {/* YouTube 플레이어 */}
                    <motion.div
                        initial={{ opacity: 0, scale: 0.95 }}
                        animate={{ opacity: 1, scale: 1 }}
                        className="relative aspect-video rounded-2xl overflow-hidden bg-black/50 mb-8"
                    >
                        <YouTube
                            videoId={challenge.youtubeId}
                            opts={opts}
                            onReady={onPlayerReady}
                            className="absolute inset-0"
                            iframeClassName="w-full h-full"
                        />

                        {/* 로딩 오버레이 */}
                        {playerState === 'loading' && (
                            <div className="absolute inset-0 flex items-center justify-center bg-black/80">
                                <div className="text-center">
                                    <div className="w-12 h-12 border-4 border-[#FF007F] border-t-transparent rounded-full animate-spin mx-auto mb-4" />
                                    <p className="text-gray-400">Waiting for Oppa... 🎤</p>
                                </div>
                            </div>
                        )}
                    </motion.div>

                    {/* 컨트롤 버튼들 */}
                    <div className="flex items-center justify-center gap-4 mb-8">
                        <button
                            onClick={toggleMute}
                            className="p-3 rounded-full border border-white/20 hover:border-[#7C3AED] transition-colors"
                        >
                            {isMuted ? <VolumeX className="w-5 h-5" /> : <Volume2 className="w-5 h-5" />}
                        </button>

                        <button
                            onClick={togglePlay}
                            className="p-5 rounded-full bg-gradient-to-r from-[#FF007F] to-[#7C3AED] hover:scale-110 transition-transform"
                            disabled={playerState === 'loading'}
                        >
                            {playerState === 'playing' ? (
                                <Pause className="w-8 h-8 text-white" />
                            ) : (
                                <Play className="w-8 h-8 text-white ml-1" />
                            )}
                        </button>

                        <button
                            onClick={replay}
                            className="p-3 rounded-full border border-white/20 hover:border-[#7C3AED] transition-colors"
                            disabled={playerState === 'loading'}
                        >
                            <RotateCcw className="w-5 h-5" />
                        </button>
                    </div>

                    {/* 문장 표시 (빈칸 처리) */}
                    <div className="text-center mb-8">
                        <p className="text-2xl font-semibold text-white">
                            {challenge.fullSentence.replace(challenge.answerWord, "_____")}
                        </p>
                        <p className="text-gray-400 mt-2">
                            빈칸에 들어갈 말을 받아쓰세요!
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
                            placeholder="여기에 입력하세요..."
                            disabled={playerState === 'loading' || playerState === 'success'}
                            className={`w-full px-6 py-4 text-xl text-center input-field ${playerState === 'fail' ? 'border-[#EF4444]' : ''
                                }`}
                        />

                        {/* 힌트 버튼 */}
                        <button
                            onClick={() => setShowHint(!showHint)}
                            className={`absolute right-4 top-1/2 -translate-y-1/2 p-2 rounded-full transition-colors ${showHint ? 'bg-[#F59E0B] text-black' : 'bg-white/10 hover:bg-white/20'
                                }`}
                        >
                            <Lightbulb className="w-5 h-5" />
                        </button>
                    </motion.div>

                    {/* 힌트 표시 */}
                    <AnimatePresence>
                        {showHint && (
                            <motion.div
                                initial={{ opacity: 0, y: -10 }}
                                animate={{ opacity: 1, y: 0 }}
                                exit={{ opacity: 0, y: -10 }}
                                className="mt-4 p-4 card bg-[#F59E0B]/10 text-center"
                            >
                                <p className="text-[#F59E0B]">💡 Hint: {challenge.hintEn}</p>
                                <p className="text-gray-400 text-sm mt-1">{challenge.grammarExplanation}</p>
                            </motion.div>
                        )}
                    </AnimatePresence>

                    {/* 제출 버튼 */}
                    <motion.button
                        whileHover={{ scale: 1.02 }}
                        whileTap={{ scale: 0.98 }}
                        onClick={handleSubmit}
                        disabled={!userInput.trim() || playerState === 'loading' || playerState === 'success'}
                        className="w-full mt-6 py-4 btn-primary text-white font-bold text-lg disabled:opacity-50 disabled:cursor-not-allowed"
                    >
                        정답 확인
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
                        className="fixed inset-0 bg-black/80 flex items-center justify-center z-50 p-6"
                    >
                        <motion.div
                            initial={{ scale: 0.8, y: 50 }}
                            animate={{ scale: 1, y: 0 }}
                            exit={{ scale: 0.8, y: 50 }}
                            className="card p-8 text-center max-w-md w-full"
                        >
                            <motion.div
                                initial={{ scale: 0 }}
                                animate={{ scale: 1 }}
                                transition={{ type: "spring", delay: 0.2 }}
                                className="w-20 h-20 mx-auto mb-6 rounded-full bg-[#22C55E] flex items-center justify-center"
                            >
                                <Check className="w-10 h-10 text-white" />
                            </motion.div>

                            <h2 className="text-3xl font-bold text-white mb-2">
                                Daebak! 🎉
                            </h2>
                            <p className="text-gray-400 mb-2">
                                정답: <span className="text-[#22C55E] font-bold">{challenge.answerWord}</span>
                            </p>
                            <p className="text-[#F59E0B] font-bold text-lg mb-6">
                                +{challenge.xp} XP
                            </p>

                            <button
                                onClick={goToNext}
                                className="w-full py-4 btn-primary text-white font-bold"
                            >
                                Next Challenge →
                            </button>
                        </motion.div>
                    </motion.div>
                )}
            </AnimatePresence>
        </main>
    );
}
