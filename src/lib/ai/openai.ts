// OpenAI API를 사용한 AI 문제 생성 프롬프트 및 유틸리티
import OpenAI from "openai";

// OpenAI 클라이언트 생성
const openai = new OpenAI({
    apiKey: process.env.OPENAI_API_KEY,
});

// 문제 생성 결과 타입
export interface GeneratedChallenge {
    startSec: number;
    endSec: number;
    fullSentence: string;
    answerWord: string;
    baseForm: string;
    hintEn: string;
    grammarExplanation: string;
}

// YouTube 트랜스크립트에서 학습 문제 생성
export async function generateChallengesFromTranscript(
    transcript: string,
    artistName: string,
    difficulty: "easy" | "normal" | "hard" = "normal"
): Promise<GeneratedChallenge[]> {
    const systemPrompt = `You are a Korean language education expert specializing in K-Pop content.
Your task is to analyze Korean transcript snippets and create dictation challenges.

For each challenge:
1. Identify an important grammatical construct or vocabulary word
2. Create a blank for that word in the sentence
3. Provide the base form (dictionary form) of the word
4. Give an English hint (translation of the full sentence)
5. Explain the grammar rule briefly in English

Difficulty levels:
- easy: Common verbs in present tense, basic particles
- normal: Past/future tense, informal endings, common idioms
- hard: Honorifics, complex conjugations, slang expressions

Output ONLY valid JSON array format, no markdown.`;

    const userPrompt = `Artist: ${artistName}
Difficulty: ${difficulty}

Transcript:
${transcript}

Generate 3-5 dictation challenges from this transcript. Each challenge should target a different grammatical point.

Return JSON array with this exact structure:
[
  {
    "startSec": 0,
    "endSec": 5,
    "fullSentence": "밥 먹었어?",
    "answerWord": "먹었어",
    "baseForm": "먹다",
    "hintEn": "Did you eat?",
    "grammarExplanation": "Past tense informal ending -었/았어"
  }
]`;

    try {
        const completion = await openai.chat.completions.create({
            model: "gpt-4o-mini",
            messages: [
                { role: "system", content: systemPrompt },
                { role: "user", content: userPrompt },
            ],
            temperature: 0.7,
            max_tokens: 2000,
        });

        const content = completion.choices[0].message.content;
        if (!content) {
            throw new Error("No content in response");
        }

        // JSON 파싱 (마크다운 코드블록 제거)
        const cleanedContent = content
            .replace(/```json\n?/g, "")
            .replace(/```\n?/g, "")
            .trim();

        const challenges: GeneratedChallenge[] = JSON.parse(cleanedContent);
        return challenges;
    } catch (error) {
        console.error("AI 문제 생성 에러:", error);
        throw error;
    }
}

// 단일 문장에서 빈칸 문제 생성
export async function generateBlankChallenge(
    sentence: string,
    targetDifficulty: "easy" | "normal" | "hard" = "normal"
): Promise<Omit<GeneratedChallenge, "startSec" | "endSec"> | null> {
    const systemPrompt = `You are a Korean language expert. Given a Korean sentence, identify the most educational word to blank out for a dictation exercise.

Choose words based on difficulty:
- easy: Simple nouns, basic verbs
- normal: Conjugated verbs, complex particles
- hard: Idioms, slang, advanced grammar

Return ONLY valid JSON, no markdown.`;

    const userPrompt = `Sentence: "${sentence}"
Difficulty: ${targetDifficulty}

Return JSON:
{
  "fullSentence": "original sentence",
  "answerWord": "word to blank",
  "baseForm": "dictionary form",
  "hintEn": "English translation",
  "grammarExplanation": "brief grammar note"
}`;

    try {
        const completion = await openai.chat.completions.create({
            model: "gpt-4o-mini",
            messages: [
                { role: "system", content: systemPrompt },
                { role: "user", content: userPrompt },
            ],
            temperature: 0.5,
            max_tokens: 500,
        });

        const content = completion.choices[0].message.content;
        if (!content) return null;

        const cleanedContent = content
            .replace(/```json\n?/g, "")
            .replace(/```\n?/g, "")
            .trim();

        return JSON.parse(cleanedContent);
    } catch (error) {
        console.error("빈칸 문제 생성 에러:", error);
        return null;
    }
}

// 문장 번역 (힌트용)
export async function translateToEnglish(koreanText: string): Promise<string> {
    try {
        const completion = await openai.chat.completions.create({
            model: "gpt-4o-mini",
            messages: [
                {
                    role: "system",
                    content: "You are a Korean to English translator. Translate naturally and concisely. Return only the translation, no explanations."
                },
                { role: "user", content: koreanText },
            ],
            temperature: 0.3,
            max_tokens: 200,
        });

        return completion.choices[0].message.content || koreanText;
    } catch (error) {
        console.error("번역 에러:", error);
        return koreanText;
    }
}
