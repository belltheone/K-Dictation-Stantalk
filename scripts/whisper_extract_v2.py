#!/usr/bin/env python3
"""
Whisper AI로 추출한 한국어 문장에서 학습 가능한 문장 찾기
더 일반적인 패턴 매칭
"""

import os
import json
import re
import subprocess

os.environ['PATH'] = f"/home/qwer/.local/bin:{os.environ['PATH']}"

# 일반적인 문장 종결 패턴을 찾아서 학습에 활용
LEARNING_PATTERNS = [
    # "-요" 종결어미 (존댓말)
    (r'(.{3,15})(맛있어요)', '맛있다', 'It is delicious'),
    (r'(.{3,15})(좋아요)', '좋다', 'It is good'),
    (r'(.{3,15})(좋아해요)', '좋아하다', 'I like it'),
    (r'(.{3,15})(재미있어요)', '재미있다', 'It is fun'),
    (r'(.{3,15})(예뻐요)', '예쁘다', 'It is pretty'),
    (r'(.{3,15})(멋있어요)', '멋있다', 'It is cool'),
    (r'(.{3,15})(행복해요)', '행복하다', 'I am happy'),
    (r'(.{3,15})(힘들어요)', '힘들다', 'It is hard'),
    (r'(.{3,15})(피곤해요)', '피곤하다', 'I am tired'),
    
    # "-었어요" 과거형
    (r'(.{3,15})(좋았어요)', '좋다', 'It was good'),
    (r'(.{3,15})(맛있었어요)', '맛있다', 'It was delicious'),
    (r'(.{3,15})(재미있었어요)', '재미있다', 'It was fun'),
    (r'(.{3,15})(힘들었어요)', '힘들다', 'It was hard'),
    
    # "-았/었어요" 동사
    (r'(.{3,15})(먹었어요)', '먹다', 'I ate'),
    (r'(.{3,15})(봤어요)', '보다', 'I saw'),
    (r'(.{3,15})(갔어요)', '가다', 'I went'),
    (r'(.{3,15})(왔어요)', '오다', 'I came'),
    (r'(.{3,15})(했어요)', '하다', 'I did'),
    
    # "-ㄹ 줄 알았어요" 패턴
    (r'(.{3,20})(줄 알았어요)', None, 'I thought'),
    
    # 감탄/인사
    (r'(.{3,15})(감사합니다|감사해요)', '감사하다', 'Thank you'),
    (r'(.{3,15})(사랑해요|사랑합니다)', '사랑하다', 'I love you'),
    
    # 의문/추측
    (r'(.{3,15})(뭐야\?*)', None, 'What is this?'),
    (r'(.{3,15})(없어요)', '없다', 'There is none'),
    (r'(.{3,15})(있어요)', '있다', 'There is'),
    
    # 명령/제안
    (r'(.{3,15})(해주세요)', '하다', 'Please do'),
    (r'(.{3,15})(해줘요*)', '하다', 'Please do'),
]

def find_sentences(transcript: str, segments: list) -> list:
    """전체 스크립트와 세그먼트에서 학습 문장 찾기"""
    results = []
    
    for segment in segments:
        text = segment['text'].strip()
        start = segment['start']
        end = segment['end']
        
        for pattern, base_form, hint_en in LEARNING_PATTERNS:
            match = re.search(pattern, text)
            if match:
                full_sentence = match.group(0).strip()
                answer_word = match.group(2)
                
                if len(full_sentence) >= 6:  # 최소 길이
                    results.append({
                        'start_sec': int(start),
                        'end_sec': int(end) + 2,
                        'full_sentence': full_sentence,
                        'answer_word': answer_word,
                        'base_form': base_form,
                        'hint_en': hint_en,
                        'original_text': text,
                    })
                break
    
    # 중복 제거
    seen = set()
    unique = []
    for r in results:
        if r['answer_word'] not in seen:
            seen.add(r['answer_word'])
            unique.append(r)
    
    return unique

def process_video(video_id: str, title: str, download=True) -> dict:
    """영상 처리"""
    import whisper
    
    audio_dir = "temp_audio"
    os.makedirs(audio_dir, exist_ok=True)
    audio_path = f"{audio_dir}/{video_id}.mp3"
    
    # 다운로드
    if download and not os.path.exists(audio_path):
        print(f"  Downloading audio...")
        cmd = [
            "yt-dlp", "-x", "--audio-format", "mp3", "--audio-quality", "5",
            "-o", audio_path, "--download-sections", "*0:00-2:00",
            f"https://www.youtube.com/watch?v={video_id}"
        ]
        subprocess.run(cmd, capture_output=True)
    
    if not os.path.exists(audio_path):
        print(f"  Audio not found")
        return None
    
    # Whisper 분석
    print(f"  Transcribing...")
    model = whisper.load_model("base")
    result = model.transcribe(audio_path, language="ko")
    
    segments = result.get('segments', [])
    print(f"  Found {len(segments)} segments")
    
    # 학습 문장 찾기
    challenges = find_sentences(result['text'], segments)
    
    if challenges:
        print(f"  Found {len(challenges)} learning sentences!")
        return {
            'video_id': video_id,
            'title': title,
            'challenges': challenges,
            'full_transcript': result['text'][:500]
        }
    
    return None

# 테스트
if __name__ == '__main__':
    # 이미 다운로드된 영상 재분석
    result = process_video('urNLPgalt6o', '[SKZ-TALKER] Ep.77', download=False)
    
    if result:
        print("\n" + "="*60)
        print("FOUND LEARNING SENTENCES:")
        print("="*60)
        for c in result['challenges']:
            print(f"\n[{c['start_sec']}-{c['end_sec']}s] {c['full_sentence']}")
            print(f"  Answer: {c['answer_word']}")
            print(f"  Hint: {c['hint_en']}")
            
        with open('whisper_result.json', 'w', encoding='utf-8') as f:
            json.dump(result, f, ensure_ascii=False, indent=2)
        print("\nSaved to whisper_result.json")
    else:
        print("No learning sentences found")
