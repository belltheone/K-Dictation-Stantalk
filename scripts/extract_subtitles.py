#!/usr/bin/env python3
"""
YouTube 자막에서 한국어 학습에 적합한 문장을 추출하는 스크립트
각 영상에서 일상 대화 패턴(감정 표현, 감탄 등)을 찾아 챌린지 데이터 생성
"""

from youtube_transcript_api import YouTubeTranscriptApi, TranscriptsDisabled, NoTranscriptFound
import json
import re

# 학습에 적합한 패턴들 (빈칸 문제로 만들기 좋은 문장들)
LEARNING_PATTERNS = [
    # 감정/상태 표현
    (r'(.{2,8})(재미있어요|재미있었어요)', '재미있다', 'It is/was fun'),
    (r'(.{2,8})(좋아요|좋았어요)', '좋다', 'It is/was good'),
    (r'(.{2,8})(힘들어요|힘들었어요)', '힘들다', 'It is/was hard'),
    (r'(.{2,8})(기뻐요|기뻤어요)', '기쁘다', 'I am/was happy'),
    (r'(.{2,8})(예뻐요|예뻤어요)', '예쁘다', 'It is/was pretty'),
    (r'(.{2,8})(멋있어요|멋있었어요)', '멋있다', 'It is/was cool'),
    (r'(.{2,8})(맛있어요|맛있었어요)', '맛있다', 'It is/was delicious'),
    (r'(.{2,8})(행복해요|행복했어요)', '행복하다', 'I am/was happy'),
    (r'(.{2,8})(감사해요|감사합니다)', '감사하다', 'Thank you'),
    (r'(.{2,8})(사랑해요|사랑합니다)', '사랑하다', 'I love you'),
    
    # 보고 싶다 표현
    (r'(.{2,8})(보고 싶어요|보고 싶었어요)', '보고 싶다', 'I miss'),
    
    # 긴장/떨림 표현
    (r'(.{2,8})(떨려요|떨렸어요|긴장돼요|긴장됐어요)', '떨리다/긴장되다', 'I am/was nervous'),
    
    # 대박/최고 표현
    (r'(.{2,10})(대박|최고)', None, 'amazing/the best'),
]

def extract_transcript(video_id: str) -> list:
    """YouTube 영상에서 자막 추출 (v1.2.3 API)"""
    try:
        # v1.2.3 API: YouTubeTranscriptApi() 인스턴스 생성 후 fetch 또는 list 사용
        ytt_api = YouTubeTranscriptApi()
        
        # 한국어 자막 시도
        try:
            transcript = ytt_api.fetch(video_id, languages=['ko'])
            # FetchedTranscript 객체에서 snippets 추출
            return [{'text': s.text, 'start': s.start, 'duration': s.duration} for s in transcript.snippets]
        except Exception as e1:
            print(f"  Korean subtitle not found: {e1}")
            try:
                # 자동 생성 한국어 자막 시도
                transcript = ytt_api.fetch(video_id, languages=['ko-KR', 'ko'])
                return [{'text': s.text, 'start': s.start, 'duration': s.duration} for s in transcript.snippets]
            except Exception as e2:
                print(f"  Auto Korean subtitle not found: {e2}")
                # 영어로 시도하지 않음 - 한국어 학습용이므로
                return []
    except Exception as e:
        print(f"Error fetching transcript for {video_id}: {e}")
        return []

def find_learning_sentences(transcript: list) -> list:
    """자막에서 학습에 적합한 문장 찾기"""
    results = []
    
    for segment in transcript:
        text = segment['text']
        start = segment['start']
        duration = segment.get('duration', 3)
        
        # 각 패턴과 매칭
        for pattern, base_form, hint_en in LEARNING_PATTERNS:
            match = re.search(pattern, text)
            if match:
                full_sentence = match.group(0)
                answer_word = match.group(2) if len(match.groups()) > 1 else match.group(1)
                
                results.append({
                    'start_sec': int(start),
                    'end_sec': int(start + duration),
                    'full_sentence': full_sentence,
                    'answer_word': answer_word,
                    'base_form': base_form,
                    'hint_en': hint_en,
                    'original_text': text
                })
    
    return results

def process_video(video_id: str, title: str) -> dict:
    """영상 하나 처리"""
    print(f"Processing: {title} ({video_id})")
    
    transcript = extract_transcript(video_id)
    if not transcript:
        return None
    
    sentences = find_learning_sentences(transcript)
    
    # 가장 좋은 문장 선택 (앞부분에서 찾은 것 우선)
    if sentences:
        # 중복 제거하고 최대 3개
        unique_sentences = []
        seen_answers = set()
        for s in sentences:
            if s['answer_word'] not in seen_answers:
                unique_sentences.append(s)
                seen_answers.add(s['answer_word'])
                if len(unique_sentences) >= 3:
                    break
        
        return {
            'video_id': video_id,
            'title': title,
            'challenges': unique_sentences
        }
    
    return None

# 테스트용 영상 목록 (Stray Kids, NewJeans)
TEST_VIDEOS = [
    # Stray Kids
    ('urNLPgalt6o', '[SKZ-TALKER] Ep.77'),
    ('RIYBe1R-mho', '[SKZ-TALKER] Ep.76'),
    
    # NewJeans
    ('OMVoxddjWmM', '[Jeans ZINE+] 연말 파티 ZIP'),
    ('pP2OqE0NN4g', '[Bunnies CAMP] EP.1'),
]

if __name__ == '__main__':
    results = []
    
    for video_id, title in TEST_VIDEOS:
        result = process_video(video_id, title)
        if result:
            results.append(result)
            print(f"  Found {len(result['challenges'])} challenges")
        else:
            print(f"  No suitable sentences found")
    
    # 결과 출력
    print("\n" + "="*60)
    print("EXTRACTION RESULTS")
    print("="*60)
    
    for r in results:
        print(f"\n{r['title']} ({r['video_id']}):")
        for c in r['challenges']:
            print(f"  [{c['start_sec']}-{c['end_sec']}s] {c['full_sentence']}")
            print(f"    Answer: {c['answer_word']} ({c['hint_en']})")
    
    # JSON으로 저장
    with open('extracted_challenges.json', 'w', encoding='utf-8') as f:
        json.dump(results, f, ensure_ascii=False, indent=2)
    
    print(f"\nSaved to extracted_challenges.json")
