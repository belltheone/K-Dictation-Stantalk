#!/usr/bin/env python3
"""
The Dredge V3: Official Channel Collection
- 공식 유튜브 채널에서 직접 영상 수집
- 100% 관련성 보장
- Google Cloud STT 전사
"""
import os
import sys
import json
import subprocess
import re
import math

os.environ['PATH'] = f"/home/qwer/.local/bin:{os.environ['PATH']}"
sys.path.insert(0, '/home/qwer/Workspace/kdictation/scripts')

from google.cloud import speech
from patterns_expanded import find_learning_sentences
from yt_dlp import YoutubeDL

# Google Cloud 인증 설정
os.environ['GOOGLE_APPLICATION_CREDENTIALS'] = "/home/qwer/Workspace/kdictation/google-credentials.json"

# Configuration
TARGET_STAGE_COUNT = 30
VIDEOS_PER_CHANNEL = 50  # 채널당 최대 영상 수
AUDIO_DIR = "/home/qwer/Workspace/kdictation/temp_audio"
OUTPUT_SQL = "supabase/migrations/037_stage_data_v3.sql"

if not os.path.exists(AUDIO_DIR):
    os.makedirs(AUDIO_DIR)

# 아티스트별 공식 유튜브 채널 (유저 제공)
OFFICIAL_CHANNELS = {
    "BTS": "@BTS",
    "NewJeans": "@NewJeans_official",
    "BLACKPINK": "@BLACKPINK",
    "IVE": "@IVEstarship",
    "aespa": "@aespa",
    "SEVENTEEN": "@pledis17",
    "Stray Kids": "@StrayKids",
    "NCT 127": "@NCT127",
    "NCT DREAM": "@NCTDREAM",
    "TXT": "@TXT_bighit",
    "ENHYPEN": "@ENHYPENOFFICIAL",
    "LE SSERAFIM": "@LE_SSERAFIM",
    "ITZY": "@ITZY",
    "TWICE": "@TWICE",
    "G-IDLE": "@official_i_dle",
    "NMIXX": "@NMIXXOfficial",
    "BABYMONSTER": "@BABYMONSTER",
    "BOYNEXTDOOR": "@boynextdoor_official",
    "TWS": "@TWS_PLEDIS",
    "fromis_9": "@Officialfromis9",
    "ATEEZ": "@ATEEZofficial",
    "Red Velvet": "@redvelvet",
    "RIIZE": "@RIIZE_official",
    "ZEROBASEONE": "@ZB1_official",
    "xikers": "@xikers_official",
    "KISS OF LIFE": "@KISSOFLIFE_official",
    "Kep1er": "@Kep1er_Offcl",
    "MEOVV": "@MEOVV_OFFICIAL",
    "WayV": "@WayV",
    "ILLIT": "@ILLIT_official",
    "IZNA": "@izna_offcl",
    "Hearts2Hearts": "@hearts2hearts.official",
}

# 브이로그/비하인드 관련 키워드 (제목 필터링용)
VLOG_KEYWORDS = [
    "vlog", "브이로그", "log", "로그", 
    "behind", "비하인드", "메이킹",
    "diary", "일기", "일상",
    "episode", "에피소드",
    "reality", "리얼리티",
    "vlive", "live", "라이브",
    "talk", "토크", "채팅",
]


def get_channel_videos(channel_handle, max_videos=50):
    """공식 채널에서 최근 영상 목록 가져오기"""
    channel_url = f"https://www.youtube.com/{channel_handle}/videos"
    
    print(f"📺 채널 접속: {channel_url}")
    
    ydl_opts = {
        'quiet': True,
        'extract_flat': True,
        'playlistend': max_videos,  # 언더스코어 없음
        'ignoreerrors': True,
    }
    
    try:
        with YoutubeDL(ydl_opts) as ydl:
            result = ydl.extract_info(channel_url, download=False)
            if result and 'entries' in result:
                videos = []
                for entry in list(result['entries'])[:max_videos]:  # 명시적 제한
                    if entry:
                        videos.append({
                            'id': entry.get('id'),
                            'title': entry.get('title', ''),
                        })
                return videos
    except Exception as e:
        print(f"  채널 접속 실패: {e}")
    
    return []


def is_vlog_content(title):
    """제목이 브이로그/비하인드 컨텐츠인지 확인"""
    title_lower = title.lower()
    for keyword in VLOG_KEYWORDS:
        if keyword.lower() in title_lower:
            return True
    return False


def download_audio(video_id):
    """오디오 다운로드 (첫 30초)"""
    url = f"https://www.youtube.com/watch?v={video_id}"
    path = f"{AUDIO_DIR}/{video_id}"
    
    # 기존 파일 확인
    if os.path.exists(f"{path}.mp3"):
        return f"{path}.mp3"
    
    cmd = [
        "yt-dlp", "-x", "--audio-format", "mp3", "--audio-quality", "5",
        "-o", path + ".%(ext)s",
        "--download-sections", "*0:00-0:30",
        url
    ]
    
    try:
        subprocess.run(cmd, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, timeout=60)
        return f"{path}.mp3"
    except:
        return None


def convert_to_wav(mp3_path):
    """MP3를 Google STT용 WAV로 변환"""
    wav_path = mp3_path.replace('.mp3', '.wav')
    if os.path.exists(wav_path):
        return wav_path
    
    cmd = [
        "ffmpeg", "-y", "-i", mp3_path,
        "-ar", "16000", "-ac", "1",
        wav_path
    ]
    
    try:
        subprocess.run(cmd, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, timeout=30)
        return wav_path
    except:
        return None


def transcribe_with_google(audio_path):
    """Google Cloud STT로 전사"""
    client = speech.SpeechClient()
    
    with open(audio_path, "rb") as audio_file:
        content = audio_file.read()
    
    audio = speech.RecognitionAudio(content=content)
    config = speech.RecognitionConfig(
        encoding=speech.RecognitionConfig.AudioEncoding.LINEAR16,
        sample_rate_hertz=16000,
        language_code="ko-KR",
        enable_word_time_offsets=True,
        enable_automatic_punctuation=True,
    )
    
    try:
        response = client.recognize(config=config, audio=audio)
        
        segments = []
        for result in response.results:
            alt = result.alternatives[0]
            transcript = alt.transcript
            
            if alt.words:
                start_time = alt.words[0].start_time.total_seconds()
                end_time = alt.words[-1].end_time.total_seconds()
                segments.append({
                    'text': transcript,
                    'start': start_time,
                    'end': end_time
                })
        
        return segments
    except Exception as e:
        print(f"    STT 오류: {e}")
        return []


def calculate_difficulty(sentence, duration):
    """난이도 계산"""
    clean_text = re.sub(r'[^\w\s]', '', sentence)
    length = len(clean_text)
    cps = length / max(duration, 0.5)
    
    score = (cps * 10) + (length * 0.5)
    
    if "면" in sentence or "는데" in sentence:
        score += 5
    if len(sentence) > 15:
        score += 5
        
    return score


def process_artist(artist_name):
    """아티스트 공식 채널에서 콘텐츠 수집"""
    print(f"\n{'='*60}")
    print(f"🎤 처리 중: {artist_name}")
    print(f"{'='*60}")
    
    channel_handle = OFFICIAL_CHANNELS.get(artist_name)
    if not channel_handle:
        print(f"  ❌ 채널 정보 없음")
        return []
    
    # 1. 채널에서 영상 목록 가져오기
    videos = get_channel_videos(channel_handle, VIDEOS_PER_CHANNEL)
    print(f"  찾은 영상: {len(videos)}개")
    
    if not videos:
        print(f"  ❌ 영상을 찾을 수 없음")
        return []
    
    candidates = []
    
    # 2. 브이로그/비하인드 영상 먼저 처리
    vlog_videos = [v for v in videos if is_vlog_content(v['title'])]
    other_videos = [v for v in videos if not is_vlog_content(v['title'])]
    
    print(f"  브이로그 영상: {len(vlog_videos)}개")
    
    # 브이로그 우선, 부족하면 다른 영상도 포함
    sorted_videos = vlog_videos + other_videos
    
    for i, vid in enumerate(sorted_videos):
        if len(candidates) >= TARGET_STAGE_COUNT:
            break
            
        video_id = vid.get('id')
        title = vid.get('title', '')
        
        print(f"[{i+1}/{len(sorted_videos)}] {title[:50]}...")
        
        # 오디오 다운로드
        audio_path = download_audio(video_id)
        if not audio_path:
            print(f"    다운로드 실패")
            continue
        
        # WAV 변환
        wav_path = convert_to_wav(audio_path)
        if not wav_path:
            print(f"    변환 실패")
            continue
        
        # Google STT 전사
        segments = transcribe_with_google(wav_path)
        if not segments:
            print(f"    전사 실패")
            continue
        
        # 학습 문장 추출
        challenges = find_learning_sentences(segments, max_results=5)  # 영상당 최대 5개 문제
        
        if challenges:
            for ch in challenges:
                if len(ch['full_sentence']) < 10:
                    continue
                
                diff = calculate_difficulty(ch['full_sentence'], ch['end_sec'] - ch['start_sec'])
                
                candidates.append({
                    'video_id': video_id,
                    'title': title.replace("'", "''"),
                    'challenge': ch,
                    'difficulty': diff
                })
                print(f"    ✅ 추가! ({ch['full_sentence'][:25]}...)")
                
                if len(candidates) >= TARGET_STAGE_COUNT:
                    break
            
            if len(candidates) >= TARGET_STAGE_COUNT:
                break
    
    print(f"\n{artist_name}: {len(candidates)}개 수집 완료")
    
    # 3. 스테이지 배정 (난이도순)
    candidates.sort(key=lambda x: x['difficulty'])
    
    # 4. SQL 생성
    sql_statements = []
    for stage, item in enumerate(candidates[:TARGET_STAGE_COUNT], start=1):
        ch = item['challenge']
        
        is_locked = 'true' if stage > 1 else 'false'
        safe_full_sentence = ch['full_sentence'].replace("'", "''")
        safe_answer = ch['answer_word'].replace("'", "''")
        safe_base = (ch.get('base_form') or '').replace("'", "''")
        safe_hint = (ch.get('hint_en') or '').replace("'", "''")
        
        sql = f"""
DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('{item['video_id']}', '{item['title']}', '{artist_name}', 'normal', {stage}, {item['difficulty']}, {is_locked}, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = {stage}, difficulty_score = {item['difficulty']}, is_locked = {is_locked}, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, {ch['start_sec']}, {ch['end_sec']}, '{safe_full_sentence}', '{safe_answer}', '{safe_base}', '{safe_hint}');
END $$;
"""
        sql_statements.append(sql)
    
    return sql_statements


# Full Artist List
ALL_ARTISTS = list(OFFICIAL_CHANNELS.keys())

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("사용법: python3 dredge_content_v3.py <Artist_Name> [Artist2 ...] OR 'ALL'")
        sys.exit(1)
    
    if sys.argv[1] == "ALL":
        print(f"🌊 전체 {len(ALL_ARTISTS)}개 아티스트 공식 채널 수집 시작...")
        artists = ALL_ARTISTS
    else:
        artists = sys.argv[1:]
    
    print("📺 공식 채널 + Google Cloud STT 사용\n")
    
    # 출력 파일 초기화
    with open(OUTPUT_SQL, "w") as f:
        f.write("-- Dredge Content V3 (Official Channels + Google STT)\n")
        f.write(f"-- 생성 시각: {__import__('datetime').datetime.now()}\n\n")
    
    total_count = 0
    for artist in artists:
        try:
            sqls = process_artist(artist)
            if sqls:
                count = len(sqls)
                with open(OUTPUT_SQL, "a") as f:
                    f.write("\n".join(sqls) + "\n")
                print(f"💾 {artist}: {count}개 저장됨")
                total_count += count
        except Exception as e:
            print(f"❌ {artist} 처리 오류: {e}")
    
    print(f"\n{'='*60}")
    print(f"✅ 완료! 총 {total_count}개 → {OUTPUT_SQL}")
    print(f"{'='*60}")
