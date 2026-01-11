#!/usr/bin/env python3
"""
Whisper AI를 사용하여 YouTube 영상에서 한국어 대화를 분석하고
학습에 적합한 문장과 타임스탬프를 추출하는 스크립트
"""

import subprocess
import os
import json
import re
import sys

# PATH에 .local/bin 추가
os.environ['PATH'] = f"/home/qwer/.local/bin:{os.environ['PATH']}"

# 학습 패턴 (정규식, 기본형, 영어 힌트)
LEARNING_PATTERNS = [
    (r'(.{0,10})(재미있어요|재미있었어요)', '재미있다', 'It is/was fun'),
    (r'(.{0,10})(좋아요|좋았어요)', '좋다', 'It is/was good'),
    (r'(.{0,10})(힘들어요|힘들었어요)', '힘들다', 'It is/was hard'),
    (r'(.{0,10})(기뻐요|기뻤어요)', '기쁘다', 'I am/was happy'),
    (r'(.{0,10})(예뻐요|예뻤어요)', '예쁘다', 'It is/was pretty'),
    (r'(.{0,10})(멋있어요|멋있었어요)', '멋있다', 'It is/was cool'),
    (r'(.{0,10})(맛있어요|맛있었어요)', '맛있다', 'It is/was delicious'),
    (r'(.{0,10})(행복해요|행복했어요)', '행복하다', 'I am/was happy'),
    (r'(.{0,10})(감사해요|감사합니다)', '감사하다', 'Thank you'),
    (r'(.{0,10})(사랑해요|사랑합니다)', '사랑하다', 'I love you'),
    (r'(.{0,10})(보고 싶어요|보고 싶었어요)', '보고 싶다', 'I miss'),
    (r'(.{0,10})(떨려요|떨렸어요)', '떨리다', 'I am/was nervous'),
    (r'(.{0,10})(긴장돼요|긴장됐어요)', '긴장되다', 'I am/was nervous'),
    (r'(.{0,10})(대박)', None, 'amazing'),
    (r'(.{0,10})(최고)', None, 'the best'),
    (r'(.{0,10})(귀여워요|귀여웠어요)', '귀엽다', 'It is/was cute'),
    (r'(.{0,10})(신나요|신났어요)', '신나다', 'I am/was excited'),
    (r'(.{0,10})(피곤해요|피곤했어요)', '피곤하다', 'I am/was tired'),
]

def download_audio(video_id: str, output_dir: str = "temp_audio") -> str:
    """YouTube 영상에서 처음 2분의 오디오만 다운로드"""
    os.makedirs(output_dir, exist_ok=True)
    output_path = f"{output_dir}/{video_id}.mp3"
    
    if os.path.exists(output_path):
        print(f"  Audio already exists: {output_path}")
        return output_path
    
    print(f"  Downloading audio for {video_id}...")
    
    # yt-dlp로 처음 2분만 다운로드 (시간 절약)
    cmd = [
        "yt-dlp",
        "-x",  # 오디오만 추출
        "--audio-format", "mp3",
        "--audio-quality", "5",  # 낮은 품질로 빠른 다운로드
        "-o", output_path,
        "--download-sections", "*0:00-2:00",  # 처음 2분만
        f"https://www.youtube.com/watch?v={video_id}"
    ]
    
    try:
        subprocess.run(cmd, check=True, capture_output=True, text=True)
        return output_path
    except subprocess.CalledProcessError as e:
        print(f"  Error downloading: {e.stderr}")
        return None

def transcribe_with_whisper(audio_path: str) -> list:
    """Whisper로 오디오 분석 (타임스탬프 포함)"""
    print(f"  Transcribing with Whisper...")
    
    try:
        import whisper
        
        # 작은 모델 사용 (빠른 처리)
        model = whisper.load_model("base")
        
        # 한국어로 분석
        result = model.transcribe(audio_path, language="ko", word_timestamps=True)
        
        segments = []
        for segment in result.get("segments", []):
            segments.append({
                "start": segment["start"],
                "end": segment["end"],
                "text": segment["text"]
            })
        
        return segments
    except Exception as e:
        print(f"  Error transcribing: {e}")
        return []

def find_learning_sentences(segments: list) -> list:
    """학습에 적합한 문장 찾기"""
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
                
                # 너무 짧은 문장 제외
                if len(full_sentence) < 4:
                    continue
                
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
    
    # 중복 answer_word 제거
    seen = set()
    unique = []
    for r in results:
        if r['answer_word'] not in seen:
            seen.add(r['answer_word'])
            unique.append(r)
    
    return unique[:3]

def process_video(video_id: str, title: str) -> dict:
    """영상 하나 처리"""
    print(f"\nProcessing: {title} ({video_id})")
    
    # 1. 오디오 다운로드
    audio_path = download_audio(video_id)
    if not audio_path:
        return None
    
    # 2. Whisper로 분석
    segments = transcribe_with_whisper(audio_path)
    if not segments:
        return None
    
    print(f"  Found {len(segments)} segments")
    
    # 3. 학습 문장 추출
    challenges = find_learning_sentences(segments)
    
    if challenges:
        return {
            'video_id': video_id,
            'title': title,
            'challenges': challenges
        }
    
    return None

def generate_sql(results: list) -> str:
    """SQL UPDATE 문 생성"""
    sql_lines = ["-- Whisper AI로 추출한 정확한 타임스탬프로 챌린지 업데이트", ""]
    
    for r in results:
        video_id = r['video_id']
        c = r['challenges'][0]  # 첫 번째 챌린지 사용
        
        sql_lines.append(f"-- {r['title']}")
        sql_lines.append(f"""UPDATE challenges 
SET start_sec = {c['start_sec']},
    end_sec = {c['end_sec']},
    full_sentence = '{c['full_sentence'].replace("'", "''")}',
    answer_word = '{c['answer_word']}',
    base_form = {f"'{c['base_form']}'" if c['base_form'] else 'NULL'},
    hint_en = '{c['hint_en']}'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '{video_id}');
""")
    
    return "\n".join(sql_lines)

# 테스트용 영상 (Stray Kids SKZ-TALKER Ep.77)
TEST_VIDEO = ('urNLPgalt6o', '[SKZ-TALKER] Ep.77')

if __name__ == '__main__':
    video_id, title = TEST_VIDEO
    
    result = process_video(video_id, title)
    
    if result:
        print("\n" + "="*60)
        print("EXTRACTED CHALLENGES:")
        print("="*60)
        
        for c in result['challenges']:
            print(f"\n[{c['start_sec']}-{c['end_sec']}s] {c['full_sentence']}")
            print(f"  Answer: {c['answer_word']} ({c['hint_en']})")
            print(f"  Original: {c['original_text']}")
        
        # SQL 생성
        sql = generate_sql([result])
        print("\n" + "="*60)
        print("GENERATED SQL:")
        print("="*60)
        print(sql)
        
        # 파일로 저장
        with open('whisper_extracted.json', 'w', encoding='utf-8') as f:
            json.dump([result], f, ensure_ascii=False, indent=2)
        
        print("\nResults saved to whisper_extracted.json")
    else:
        print("No suitable sentences found")
