"use client";

import { useState, useRef, useEffect, useCallback } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { useParams } from "next/navigation";
import { useTranslations } from "next-intl";
import { Link } from "@/i18n/navigation";
import YouTube, { YouTubePlayer, YouTubeEvent } from "react-youtube";
import { createClient } from "@supabase/supabase-js";
import {
    Play, Pause, RotateCcw, Volume2, VolumeX,
    ChevronLeft, Flame, Check, X, Loader2
} from "lucide-react";

// Supabase 클라이언트 생성
const supabase = createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

// 챌린지 타입 정의
interface Challenge {
    id: string;
    youtubeId: string;
    startSec: number;
    endSec: number;
    fullSentence: string;
    answerWord: string;
    wrongOptions: string[];
    hintEn: string;
    grammarExplanation: string;
    xp: number;
    artistName: string;
    contentTitle: string;
}

// 4지선다 퀴즈 기반 딕테이션 플레이어 - Supabase 데이터 연동
export default function DictationPlayerPage() {
    const params = useParams();
    const artistId = params.artistId as string;
    const contentId = params.contentId as string;
    const t = useTranslations();

    // 데이터 로딩 상태
    const [isLoading, setIsLoading] = useState(true);
    const [error, setError] = useState<string | null>(null);
    const [challenge, setChallenge] = useState<Challenge | null>(null);
    const [currentChallengeIndex, setCurrentChallengeIndex] = useState(0);
    const [challenges, setChallenges] = useState<Challenge[]>([]);

    // 플레이어 상태
    type PlayerState = 'loading' | 'ready' | 'playing' | 'success' | 'fail';
    const [playerState, setPlayerState] = useState<PlayerState>('loading');
    const [player, setPlayer] = useState<YouTubePlayer | null>(null);
    const [isMuted, setIsMuted] = useState(false);

    // 선택지 상태
    const [selectedOption, setSelectedOption] = useState<number | null>(null);
    const [shuffledOptions, setShuffledOptions] = useState<string[]>([]);

    const checkIntervalRef = useRef<NodeJS.Timeout | null>(null);

    // Supabase에서 데이터 가져오기
    useEffect(() => {
        const fetchChallenges = async () => {
            try {
                setIsLoading(true);
                setError(null);

                // 아티스트 이름으로 콘텐츠 검색
                const artistName = decodeURIComponent(artistId).replace(/-/g, ' ');

                // 콘텐츠 조회
                const { data: contents, error: contentError } = await supabase
                    .from('contents')
                    .select('*')
                    .ilike('artist_name', `%${artistName}%`)
                    .eq('is_published', true)
                    .limit(10);

                if (contentError) throw contentError;

                if (!contents || contents.length === 0) {
                    // 모든 콘텐츠에서 랜덤 선택
                    const { data: allContents, error: allError } = await supabase
                        .from('contents')
                        .select('*')
                        .eq('is_published', true)
                        .limit(10);

                    if (allError) throw allError;
                    if (!allContents || allContents.length === 0) {
                        throw new Error('No content available');
                    }

                    // 랜덤 콘텐츠 선택
                    const randomContent = allContents[Math.floor(Math.random() * allContents.length)];

                    // 해당 콘텐츠의 챌린지 조회
                    const { data: challengeData, error: challengeError } = await supabase
                        .from('challenges')
                        .select('*')
                        .eq('content_id', randomContent.id)
                        .order('order_index');

                    if (challengeError) throw challengeError;

                    if (!challengeData || challengeData.length === 0) {
                        throw new Error('No challenges available');
                    }

                    // 챌린지 데이터 변환
                    const formattedChallenges: Challenge[] = challengeData.map(ch => ({
                        id: ch.id,
                        youtubeId: randomContent.youtube_id,
                        startSec: ch.start_sec,
                        endSec: ch.end_sec,
                        fullSentence: ch.full_sentence,
                        answerWord: ch.answer_word,
                        wrongOptions: generateWrongOptions(ch.answer_word, challengeData),
                        hintEn: ch.hint_en || '',
                        grammarExplanation: ch.grammar_explanation || '',
                        xp: 10,
                        artistName: randomContent.artist_name,
                        contentTitle: randomContent.title,
                    }));

                    setChallenges(formattedChallenges);
                    setChallenge(formattedChallenges[0]);
                } else {
                    // contentId에서 인덱스 추출 (content-1 -> 0, content-2 -> 1)
                    const contentIndex = parseInt(contentId.replace('content-', '')) - 1;
                    const selectedIndex = Math.min(Math.max(0, contentIndex), contents.length - 1);
                    const content = contents[selectedIndex];

                    // 해당 콘텐츠의 챌린지 조회
                    const { data: challengeData, error: challengeError } = await supabase
                        .from('challenges')
                        .select('*')
                        .eq('content_id', content.id)
                        .order('order_index');

                    if (challengeError) throw challengeError;

                    if (!challengeData || challengeData.length === 0) {
                        throw new Error('No challenges for this content');
                    }

                    // 챌린지 데이터 변환
                    const formattedChallenges: Challenge[] = challengeData.map(ch => ({
                        id: ch.id,
                        youtubeId: content.youtube_id,
                        startSec: ch.start_sec,
                        endSec: ch.end_sec,
                        fullSentence: ch.full_sentence,
                        answerWord: ch.answer_word,
                        wrongOptions: generateWrongOptions(ch.answer_word, challengeData),
                        hintEn: ch.hint_en || '',
                        grammarExplanation: ch.grammar_explanation || '',
                        xp: 10,
                        artistName: content.artist_name,
                        contentTitle: content.title,
                    }));

                    setChallenges(formattedChallenges);
                    setChallenge(formattedChallenges[0]);
                }

            } catch (err) {
                console.error('Error fetching challenges:', err);
                setError(err instanceof Error ? err.message : 'Failed to load content');
            } finally {
                setIsLoading(false);
            }
        };

        fetchChallenges();
    }, [artistId, contentId]);

    // 오답 옵션 생성 함수
    function generateWrongOptions(answer: string, allChallenges: { answer_word: string }[]): string[] {
        const otherAnswers = allChallenges
            .map(ch => ch.answer_word)
            .filter(word => word !== answer);

        // 기본 오답 목록 (한국어 일반 단어들)
        const defaultWrongs = [
            '했어', '갔어', '왔어', '봤어', '먹었어', '마셨어',
            '좋아', '싫어', '예뻐', '멋있어', '재미있어',
            '해줘', '가자', '와봐', '해볼래', '할까',
            '사랑해', '보고싶어', '고마워', '미안해'
        ].filter(word => word !== answer);

        const combined = [...new Set([...otherAnswers, ...defaultWrongs])];
        const shuffled = combined.sort(() => Math.random() - 0.5);
        return shuffled.slice(0, 3);
    }

    // 옵션 셔플 함수
    const shuffleOptions = useCallback(() => {
        if (!challenge) return;
        const options = [challenge.answerWord, ...challenge.wrongOptions];
        const shuffled = options.sort(() => Math.random() - 0.5);
        setShuffledOptions(shuffled);
    }, [challenge]);

    useEffect(() => {
        if (challenge) {
            shuffleOptions();
        }
    }, [challenge, shuffleOptions]);

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
            start: challenge?.startSec || 0,
            playsinline: 1,
        },
    };

    const onPlayerReady = (event: YouTubeEvent) => {
        const ytPlayer = event.target;
        setPlayer(ytPlayer);
        // 플레이어 준비 시 시작 위치로 이동
        if (challenge) {
            ytPlayer.seekTo(challenge.startSec, true);
            ytPlayer.pauseVideo();
        }
        setPlayerState('ready');
    };

    // 플레이어 상태 변경 핸들러
    const onStateChange = (event: YouTubeEvent) => {
        // 1 = 재생 중
        if (event.data === 1 && challenge && player) {
            const currentTime = player.getCurrentTime();
            // 시작 위치보다 앞에 있으면 시작 위치로 이동
            if (currentTime < challenge.startSec - 1) {
                player.seekTo(challenge.startSec, true);
            }
        }
    };

    const checkTimeAndLoop = useCallback(() => {
        if (player && playerState === 'playing' && challenge) {
            const currentTime = player.getCurrentTime();
            if (currentTime >= challenge.endSec) {
                player.seekTo(challenge.startSec, true);
            }
        }
    }, [player, playerState, challenge]);

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
        if (!player || !challenge) return;

        if (playerState === 'playing') {
            player.pauseVideo();
            setPlayerState('ready');
        } else {
            // 항상 시작 위치로 이동 후 재생
            player.seekTo(challenge.startSec, true);
            player.playVideo();
            setPlayerState('playing');
        }
    };

    const replay = () => {
        if (!player || !challenge) return;
        // 시작 위치로 이동 후 재생
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
        if (!challenge || playerState === 'success' || selectedOption !== null) return;

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
        if (!challenge || selectedOption === null) {
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
        const nextIndex = currentChallengeIndex + 1;
        if (nextIndex < challenges.length) {
            setCurrentChallengeIndex(nextIndex);
            setChallenge(challenges[nextIndex]);
            setPlayerState('ready');
            setSelectedOption(null);
        } else {
            // 모든 챌린지 완료 - 처음으로 돌아가기
            setCurrentChallengeIndex(0);
            setChallenge(challenges[0]);
            setPlayerState('ready');
            setSelectedOption(null);
        }
    };

    // 로딩 상태
    if (isLoading) {
        return (
            <main className="min-h-screen flex items-center justify-center bg-[#09090b]">
                <div className="text-center">
                    <Loader2 className="w-12 h-12 text-rose-500 animate-spin mx-auto mb-4" />
                    <p className="text-zinc-400">콘텐츠 로딩 중...</p>
                </div>
            </main>
        );
    }

    // 에러 상태
    if (error || !challenge) {
        return (
            <main className="min-h-screen flex items-center justify-center bg-[#09090b] px-4">
                <div className="text-center max-w-md">
                    <div className="w-16 h-16 mx-auto mb-4 rounded-full bg-red-500/20 flex items-center justify-center">
                        <X className="w-8 h-8 text-red-500" />
                    </div>
                    <h2 className="text-xl font-bold text-white mb-2">콘텐츠를 불러올 수 없습니다</h2>
                    <p className="text-zinc-400 mb-6">{error || '데이터가 없습니다'}</p>
                    <Link href="/learn" className="btn-primary px-6 py-3">
                        학습 페이지로 돌아가기
                    </Link>
                </div>
            </main>
        );
    }

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
                    <span className="text-zinc-500 text-sm">
                        {challenge.artistName} - {challenge.contentTitle}
                    </span>
                    <div className="flex items-center gap-1 md:gap-2 text-emerald-500">
                        <Flame className="w-4 h-4 md:w-5 md:h-5 animate-pulse" />
                        <span className="font-bold text-sm md:text-base">{currentChallengeIndex + 1}/{challenges.length}</span>
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
                            onStateChange={onStateChange}
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
                    {challenge.hintEn && (
                        <div className="mt-4 md:mt-6 p-3 md:p-4 rounded-xl bg-zinc-800/30 border border-zinc-700/50 text-center">
                            <p className="text-zinc-400 text-sm md:text-base">💡 {challenge.hintEn}</p>
                        </div>
                    )}
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
