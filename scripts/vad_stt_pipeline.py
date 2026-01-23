#!/usr/bin/env python3
"""
VAD-STT Pipeline V2: Silero-VAD + Google Cloud STT
- soundfile 사용 (torchaudio 호환성 문제 해결)
- 공식 채널에서 자막 없는 영상의 음성을 직접 추출
- Silero-VAD로 음성 구간만 감지 (무료, 로컬)
- Google Cloud STT로 해당 구간만 텍스트화 (유료, API)
"""
import os
import sys
import re
import time
import torch
import numpy as np
import soundfile as sf
from scipy import signal
from yt_dlp import YoutubeDL
from google.cloud import speech
from dredge_content_v4 import OFFICIAL_CHANNELS, is_music_content, calculate_difficulty

# Configuration
TARGET_STAGE_COUNT = 30
AUDIO_DIR = "/home/qwer/Workspace/kdictation/temp_audio"
OUTPUT_SQL = "supabase/migrations/045_stage_data_stt.sql"
SAMPLE_RATE = 16000

# 부족한 아티스트 (필요 개수 포함)
SHORTAGE_ARTISTS = {
    "ITZY": 14,
    "ATEEZ": 14,
    "RIIZE": 19,
    "ZEROBASEONE": 23,
    "xikers": 25,
    "ILLIT": 9,
    "QWER": 24,
    "Red Velvet": 30,
    "G-IDLE": 30,
    "BABYMONSTER": 30,
    "MEOVV": 30,
    "IZNA": 30,
    "Hearts2Hearts": 30,
}

# Silero VAD 모델 로드
print("🔧 Silero-VAD 모델 로딩...")
vad_model, utils = torch.hub.load(
    repo_or_dir='snakers4/silero-vad',
    model='silero_vad',
    force_reload=False,
    onnx=False,
    trust_repo=True
)
(get_speech_timestamps, save_audio, read_audio, VADIterator, collect_chunks) = utils
print("✅ VAD 모델 로드 완료")

# Google Cloud STT 클라이언트
stt_client = speech.SpeechClient()

def get_channel_videos(artist_name, limit=100):
    """공식 채널에서 비음악 영상 가져오기"""
    channel_handle = OFFICIAL_CHANNELS.get(artist_name)
    if not channel_handle:
        return []
    
    url = f"https://www.youtube.com/{channel_handle}/videos"
    
    ydl_opts = {
        'quiet': True,
        'extract_flat': True,
        'playlistend': limit,
        'ignoreerrors': True,
    }
    
    try:
        with YoutubeDL(ydl_opts) as ydl:
            result = ydl.extract_info(url, download=False)
            if not result or 'entries' not in result:
                return []
            
            videos = []
            for entry in result['entries']:
                if not entry:
                    continue
                title = entry.get('title', '')
                vid = entry.get('id')
                
                if is_music_content(title):
                    continue
                
                videos.append({'id': vid, 'title': title})
            
            return videos
    except Exception as e:
        print(f"  ⚠️ 채널 오류: {e}")
        return []

def download_audio(video_id):
    """영상 오디오 다운로드 (16kHz mono WAV)"""
    audio_path = f"{AUDIO_DIR}/{video_id}.wav"
    
    if os.path.exists(audio_path):
        return audio_path
    
    url = f"https://www.youtube.com/watch?v={video_id}"
    
    ydl_opts = {
        'quiet': True,
        'format': 'bestaudio/best',
        'outtmpl': f"{AUDIO_DIR}/{video_id}.%(ext)s",
        'postprocessors': [{
            'key': 'FFmpegExtractAudio',
            'preferredcodec': 'wav',
        }],
        'postprocessor_args': ['-ar', '16000', '-ac', '1'],
        'ignoreerrors': True,
    }
    
    try:
        with YoutubeDL(ydl_opts) as ydl:
            ydl.download([url])
        
        if os.path.exists(audio_path):
            return audio_path
    except Exception as e:
        print(f"    ⚠️ 오디오 다운로드 실패: {e}")
    
    return None

def load_audio_soundfile(audio_path):
    """soundfile로 오디오 로드 (16kHz mono로 변환)"""
    try:
        data, sr = sf.read(audio_path)
        
        # 스테레오 → 모노
        if len(data.shape) > 1:
            data = data.mean(axis=1)
        
        # 리샘플링 (16kHz로)
        if sr != SAMPLE_RATE:
            num_samples = int(len(data) * SAMPLE_RATE / sr)
            data = signal.resample(data, num_samples)
        
        # float32로 변환 및 정규화
        data = data.astype(np.float32)
        
        # 정수형 데이터(int16)인 경우 변환
        if np.abs(data).max() > 1.0:
            data = data / 32768.0
            
        # Peak Normalization (VAD 감도 향상)
        peak = np.abs(data).max()
        if peak > 0:
            data = data / peak * 0.9  # 0.9 scale
            
        return torch.tensor(data)
    except Exception as e:
        print(f"    ⚠️ 오디오 로드 실패: {e}")
        return None

def detect_speech_segments(audio_path, max_segments=20):
    """Silero-VAD로 음성 구간 감지"""
    try:
        wav = load_audio_soundfile(audio_path)
        if wav is None:
            return []
            
        # Debug: Audio stats
        print(f"    🔊 Audio stats: max={wav.abs().max():.4f}, mean={wav.abs().mean():.4f}")
        
        speech_timestamps = get_speech_timestamps(wav, vad_model, sampling_rate=SAMPLE_RATE)
        print(f"    🔊 Raw VAD segments: {len(speech_timestamps)}")
        
        # 2~30초 구간만 필터링 (완화됨)
        valid_segments = []
        for ts in speech_timestamps:
            start_sec = ts['start'] / SAMPLE_RATE
            end_sec = ts['end'] / SAMPLE_RATE
            duration = end_sec - start_sec
            
            if 2 <= duration <= 30:
                valid_segments.append({
                    'start': start_sec,
                    'end': end_sec,
                    'duration': duration
                })
        
        # 균일하게 샘플링
        if len(valid_segments) > max_segments:
            step = len(valid_segments) // max_segments
            valid_segments = valid_segments[::step][:max_segments]
        
        return valid_segments
        
    except Exception as e:
        print(f"    ⚠️ VAD 오류: {e}")
        return []

def transcribe_segment(audio_path, start_sec, end_sec):
    """Google Cloud STT로 특정 구간 텍스트화"""
    try:
        # soundfile로 오디오 로드
        data, sr = sf.read(audio_path)
        if len(data.shape) > 1:
            data = data.mean(axis=1)
        
        # 구간 추출
        start_frame = int(start_sec * sr)
        end_frame = int(end_sec * sr)
        segment = data[start_frame:end_frame]
        
        # 리샘플링 (16kHz)
        if sr != SAMPLE_RATE:
            num_samples = int(len(segment) * SAMPLE_RATE / sr)
            segment = signal.resample(segment, num_samples)
        
        # int16으로 변환
        segment = (segment * 32767).astype(np.int16)
        
        # 임시 파일로 저장
        temp_path = f"{AUDIO_DIR}/temp_segment.wav"
        sf.write(temp_path, segment, SAMPLE_RATE)
        
        # STT 요청
        with open(temp_path, 'rb') as f:
            content = f.read()
        
        audio = speech.RecognitionAudio(content=content)
        config = speech.RecognitionConfig(
            encoding=speech.RecognitionConfig.AudioEncoding.LINEAR16,
            sample_rate_hertz=SAMPLE_RATE,
            language_code="ko-KR",
            enable_automatic_punctuation=True,
        )
        
        response = stt_client.recognize(config=config, audio=audio)
        
        if response.results:
            transcript = response.results[0].alternatives[0].transcript
            return transcript
        
        return None
        
    except Exception as e:
        print(f"    ⚠️ STT 오류: {e}")
        return None

def is_good_sentence(text):
    """구어체 문장인지 검증"""
    if not text or len(text) < 8:  # 길이 완화 (10->8)
        return False
    
    # 문장 끝 구두점 제거
    text = re.sub(r'[!.,?]', '', text).strip()
    
    # 구어체 종결어미 (대폭 확장)
    spoken_endings = [
        '요', '다', '까', '죠', '야', '니', '지', '돼', '해', '봐', 
        '서', '게', '나', '네', '데', '어', '아', '자', '군', '걸',
        '래', '대', '함', '음', '는', '고', '잖아', '거야', '게요',
        '래요', '데요', '네요', '세요', '아요', '어요', '구요'
    ]
    if not any(text.endswith(ending) for ending in spoken_endings):
        return False
    
    # 너무 긴 문장만 제외
    if len(text) > 100:
        return False
    
    return True

def calculate_difficulty_v2(sentence, duration):
    """난이도 계산 V2 (확장된 종결어미 반영)"""
    score = 0
    words = sentence.split()
    
    # 1. 속도 점수
    sps = len(sentence) / duration
    if sps > 6.0: score += 3
    elif sps > 4.0: score += 2
    else: score += 1
    
    # 2. 길이 점수
    if len(sentence) > 40: score += 3
    elif len(sentence) > 20: score += 2
    else: score += 1
    
    # 3. 어휘 난이도 (단순 길이 대용)
    avg_word_len = sum(len(w) for w in words) / len(words) if words else 0
    if avg_word_len > 3.0: score += 2
    
    return score

def calculate_difficulty_v2(sentence, duration):
    """난이도 계산 (확장된 종결어미 지원)"""
    # 1. 말하기 속도 (CPS: Char Per Second)
    cps = len(sentence.replace(' ', '')) / duration if duration > 0 else 0
    
    # 2. 어휘 난이도 (길이 기반)
    words = sentence.split()
    avg_word_len = sum(len(w) for w in words) / len(words) if words else 0
    
    # 3. 문장 복잡도
    score = (cps * 10) + (avg_word_len * 5)
    
    # 구어체 종결어미 체크 (확장됨)
    spoken_endings = [
        '요', '다', '까', '죠', '야', '니', '지', '돼', '해', '봐', 
        '서', '게', '나', '네', '데', '어', '아', '자', '군', '걸',
        '래', '대', '함', '음', '는', '고', '잖아', '거야', '게요',
        '래요', '데요', '네요', '세요', '아요', '어요', '구요'
    ]
    
    clean_sent = re.sub(r'[!.,?]', '', sentence).strip()
    if not any(clean_sent.endswith(ending) for ending in spoken_endings):
        return 999  # 여전히 아니면 제외
        
    return round(score, 1)

def find_answer_word(sentence):
    """문장에서 정답 단어 추출"""
    words = sentence.split()
    if len(words) >= 2:
        return words[-1]
    return sentence

def process_artist(artist_name, needed_count):
    """아티스트별 처리"""
    print(f"\n{'='*60}")
    print(f"🎤 {artist_name}: {needed_count}개 필요")
    print(f"{'='*60}")
    
    videos = get_channel_videos(artist_name)
    print(f"  📺 비음악 영상: {len(videos)}개")
    
    candidates = []
    
    for i, vid_info in enumerate(videos):
        if len(candidates) >= needed_count:
            break
        
        print(f"\n[{i+1}/{len(videos)}] {vid_info['title'][:40]}...")
        
        audio_path = download_audio(vid_info['id'])
        if not audio_path:
            continue
        
        segments = detect_speech_segments(audio_path)
        print(f"    🔊 음성 구간: {len(segments)}개")
        
        for seg in segments:
            if len(candidates) >= needed_count:
                break
            
            transcript = transcribe_segment(audio_path, seg['start'], seg['end'])
            if not transcript:
                print(f"      ❌ STT 실패 (Empty)")
                continue
            
            # Debug: STT 결과 출력
            print(f"      📝 감지된 텍스트: {transcript}")
            
            if not is_good_sentence(transcript):
                print(f"      ❌ 필터링: 구어체 아님/길이 부적절")
                continue
            
            difficulty = calculate_difficulty_v2(transcript, seg['end'] - seg['start'])
            if difficulty >= 999:
                print(f"      ❌ 필터링: 난이도/문장끝맺음 부적절")
                continue
            
            candidates.append({
                'video_id': vid_info['id'],
                'title': vid_info['title'],
                'start_sec': seg['start'],
                'end_sec': seg['end'],
                'full_sentence': transcript,
                'answer_word': find_answer_word(transcript),
                'difficulty': difficulty
            })
            print(f"    💎 {transcript[:30]}...")
        
        time.sleep(1)
    
    print(f"  ✅ 수집 완료: {len(candidates)}개")
    return candidates

def generate_sql(artist_name, candidates, start_stage):
    """SQL 생성"""
    sqls = []
    candidates.sort(key=lambda x: x['difficulty'])
    
    for i, item in enumerate(candidates):
        stage = start_stage + i + 1
        is_locked = 'true'
        
        safe_title = item['title'].replace("'", "''")
        safe_full = item['full_sentence'].replace("'", "''")
        safe_answer = item['answer_word'].replace("'", "''")

        sql = f"""
DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('{item['video_id']}_stt_{stage}', '{safe_title}', '{artist_name}', 'normal', {stage}, {item['difficulty']}, {is_locked}, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = {stage}, difficulty_score = {item['difficulty']}, is_locked = {is_locked}, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, {item['start_sec']:.2f}, {item['end_sec']:.2f}, '{safe_full}', '{safe_answer}', '', '');
END $$;
"""
        sqls.append(sql)
    return sqls

if __name__ == "__main__":
    os.makedirs(AUDIO_DIR, exist_ok=True)
    
    print("🚀 VAD-STT Pipeline V2 시작")
    print(f"📝 출력: {OUTPUT_SQL}")
    
    with open(OUTPUT_SQL, "w") as f:
        f.write("-- VAD-STT Extracted Data (V2)\n\n")
    
    total_added = 0
    
    for artist, needed in SHORTAGE_ARTISTS.items():
        current = TARGET_STAGE_COUNT - needed
        
        candidates = process_artist(artist, needed)
        
        if candidates:
            sqls = generate_sql(artist, candidates, current)
            with open(OUTPUT_SQL, "a") as f:
                f.write("\n".join(sqls) + "\n")
            total_added += len(sqls)
            print(f"💾 {artist}: {len(sqls)}개 저장")
    
    print(f"\n{'='*60}")
    print(f"✅ 완료! 총 {total_added}개 추출")
    print(f"📄 저장됨: {OUTPUT_SQL}")
