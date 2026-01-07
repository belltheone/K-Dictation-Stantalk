"use server";

// Admin 관련 Server Actions - 콘텐츠 등록 및 관리
import { createClient } from "@/lib/supabase/server";
import { generateChallengesFromTranscript } from "@/lib/ai/openai";

// 콘텐츠 생성 입력 타입
interface CreateContentInput {
    youtubeId: string;
    title: string;
    artistName: string;
    thumbnailUrl?: string;
    difficulty: "easy" | "normal" | "hard";
    transcript?: string; // AI 문제 생성용
}

// 새 콘텐츠 등록
export async function createContent(input: CreateContentInput) {
    const supabase = await createClient();

    // 관리자 권한 확인 (추후 구현)
    const { data: { user } } = await supabase.auth.getUser();
    if (!user) {
        return { success: false, error: "Unauthorized" };
    }

    // 콘텐츠 생성
    const { data: content, error } = await supabase
        .from("contents")
        .insert({
            youtube_id: input.youtubeId,
            title: input.title,
            artist_name: input.artistName,
            thumbnail_url: input.thumbnailUrl || `https://img.youtube.com/vi/${input.youtubeId}/maxresdefault.jpg`,
            difficulty: input.difficulty,
            is_published: false, // 초기에는 비공개
        })
        .select()
        .single();

    if (error) {
        console.error("콘텐츠 생성 에러:", error.message);
        return { success: false, error: error.message };
    }

    // 트랜스크립트가 있으면 AI로 문제 생성
    if (input.transcript) {
        try {
            const challenges = await generateChallengesFromTranscript(
                input.transcript,
                input.artistName,
                input.difficulty
            );

            // 생성된 문제들 저장
            for (let i = 0; i < challenges.length; i++) {
                const challenge = challenges[i];
                await supabase.from("challenges").insert({
                    content_id: content.id,
                    start_sec: challenge.startSec,
                    end_sec: challenge.endSec,
                    full_sentence: challenge.fullSentence,
                    answer_word: challenge.answerWord,
                    base_form: challenge.baseForm,
                    hint_en: challenge.hintEn,
                    grammar_explanation: challenge.grammarExplanation,
                    order_index: i,
                });
            }
        } catch (aiError) {
            console.error("AI 문제 생성 에러:", aiError);
            // AI 실패해도 콘텐츠는 생성됨
        }
    }

    return { success: true, content };
}

// 수동 챌린지 추가
export async function addChallenge(
    contentId: string,
    challenge: {
        startSec: number;
        endSec: number;
        fullSentence: string;
        answerWord: string;
        baseForm?: string;
        hintEn?: string;
        grammarExplanation?: string;
    }
) {
    const supabase = await createClient();

    // 현재 최대 order_index 조회
    const { data: existing } = await supabase
        .from("challenges")
        .select("order_index")
        .eq("content_id", contentId)
        .order("order_index", { ascending: false })
        .limit(1);

    const nextOrderIndex = existing && existing.length > 0 ? existing[0].order_index + 1 : 0;

    const { data, error } = await supabase
        .from("challenges")
        .insert({
            content_id: contentId,
            start_sec: challenge.startSec,
            end_sec: challenge.endSec,
            full_sentence: challenge.fullSentence,
            answer_word: challenge.answerWord,
            base_form: challenge.baseForm,
            hint_en: challenge.hintEn,
            grammar_explanation: challenge.grammarExplanation,
            order_index: nextOrderIndex,
        })
        .select()
        .single();

    if (error) {
        console.error("챌린지 추가 에러:", error.message);
        return { success: false, error: error.message };
    }

    return { success: true, challenge: data };
}

// 콘텐츠 공개/비공개 토글
export async function toggleContentPublish(contentId: string) {
    const supabase = await createClient();

    // 현재 상태 조회
    const { data: content } = await supabase
        .from("contents")
        .select("is_published")
        .eq("id", contentId)
        .single();

    if (!content) {
        return { success: false, error: "Content not found" };
    }

    // 상태 토글
    const { error } = await supabase
        .from("contents")
        .update({ is_published: !content.is_published })
        .eq("id", contentId);

    if (error) {
        return { success: false, error: error.message };
    }

    return { success: true, isPublished: !content.is_published };
}

// 콘텐츠 삭제
export async function deleteContent(contentId: string) {
    const supabase = await createClient();

    const { error } = await supabase
        .from("contents")
        .delete()
        .eq("id", contentId);

    if (error) {
        return { success: false, error: error.message };
    }

    return { success: true };
}

// 챌린지 삭제
export async function deleteChallenge(challengeId: string) {
    const supabase = await createClient();

    const { error } = await supabase
        .from("challenges")
        .delete()
        .eq("id", challengeId);

    if (error) {
        return { success: false, error: error.message };
    }

    return { success: true };
}

// 모든 콘텐츠 조회 (Admin용 - 비공개 포함)
export async function getAllContents() {
    const supabase = await createClient();

    const { data, error } = await supabase
        .from("contents")
        .select(`
      *,
      challenges (count)
    `)
        .order("created_at", { ascending: false });

    if (error) {
        console.error("콘텐츠 조회 에러:", error.message);
        return [];
    }

    return data || [];
}

// 특정 콘텐츠의 챌린지 조회
export async function getContentChallenges(contentId: string) {
    const supabase = await createClient();

    const { data, error } = await supabase
        .from("challenges")
        .select("*")
        .eq("content_id", contentId)
        .order("order_index", { ascending: true });

    if (error) {
        console.error("챌린지 조회 에러:", error.message);
        return [];
    }

    return data || [];
}
