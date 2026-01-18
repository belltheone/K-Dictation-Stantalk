#!/usr/bin/env python3
"""
The Dredge V4: YouTube 자막 기반 콘텐츠 수집
- 공식 유튜브 채널에서 자동 생성 자막 추출
- 100% 일관성 보장 (유튜브가 생성한 자막 그대로 사용)
- 타임스탬프 포함
"""
import os
import sys
import json
import subprocess
import re
import math
import time

os.environ['PATH'] = f"/home/qwer/.local/bin:{os.environ['PATH']}"
sys.path.insert(0, '/home/qwer/Workspace/kdictation/scripts')

from yt_dlp import YoutubeDL
from patterns_expanded import find_learning_sentences

# Configuration
TARGET_STAGE_COUNT = 30
VIDEOS_PER_CHANNEL = 50
AUDIO_DIR = "/home/qwer/Workspace/kdictation/temp_audio"
SUBTITLE_DIR = "/home/qwer/Workspace/kdictation/temp_subtitles"
OUTPUT_SQL = "supabase/migrations/038_stage_data_v4.sql"

for d in [AUDIO_DIR, SUBTITLE_DIR]:
    if not os.path.exists(d):
        os.makedirs(d)

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
    "QWER": "@QWER_Band_official",
}

# 브이로그/비하인드 관련 키워드
VLOG_KEYWORDS = [
    "vlog", "브이로그", "log", "로그", 
    "behind", "비하인드", "메이킹",
    "diary", "일기", "일상",
    "episode", "에피소드",
]

# 제외할 키워드 (MV, 음악 영상 등)
EXCLUDE_KEYWORDS = [
    "MV", "M/V", "Music Video", "Official Video", "Official Audio",
    "Lyric Video", "Dance Practice", "Performance Video",
    "Teaser", "Trailer", "Highlight Medley", "Concept Film",
    "Official MV", "뮤직비디오", "안무 영상", "안무영상",
    "Dance Challenge", "Choreography", "Stage Mix",
    "Audio", "AUDIO", "audio",
]


def get_channel_videos(channel_handle, max_videos=50):
    """공식 채널에서 최근 영상 목록 가져오기"""
    channel_url = f"https://www.youtube.com/{channel_handle}/videos"
    
    print(f"📺 채널 접속: {channel_url}")
    
    ydl_opts = {
        'quiet': True,
        'extract_flat': True,
        'playlistend': max_videos,
        'ignoreerrors': True,
    }
    
    try:
        with YoutubeDL(ydl_opts) as ydl:
            result = ydl.extract_info(channel_url, download=False)
            if result and 'entries' in result:
                videos = []
                for entry in list(result['entries'])[:max_videos]:
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


def is_music_content(title):
    """제목이 MV/음악 영상인지 확인 (제외 대상)"""
    title_upper = title.upper()
    for keyword in EXCLUDE_KEYWORDS:
        if keyword.upper() in title_upper:
            return True
    return False


def download_subtitles(video_id, max_retries=3):
    """유튜브 자동 생성 자막 다운로드 (재시도 로직 포함)"""
    import random
    
    url = f"https://www.youtube.com/watch?v={video_id}"
    subtitle_path = f"{SUBTITLE_DIR}/{video_id}"
    
    # 기존 자막 파일 확인
    vtt_file = f"{subtitle_path}.ko.vtt"
    if os.path.exists(vtt_file):
        return vtt_file
    
    ydl_opts = {
        'quiet': True,
        'skip_download': True,
        'writeautomaticsub': True,
        'subtitleslangs': ['ko'],
        'outtmpl': subtitle_path,
        'ignoreerrors': True,
        'socket_timeout': 30,
        'retries': 3,
    }
    
    for attempt in range(max_retries):
        try:
            # 요청 전 랜덤 딜레이 (5~15초)
            delay = random.uniform(5, 15)
            print(f"    (대기 {delay:.1f}초...)", end='', flush=True)
            time.sleep(delay)
            
            with YoutubeDL(ydl_opts) as ydl:
                ydl.download([url])
            
            # 자막 파일 확인
            if os.path.exists(vtt_file):
                print(" ✓")
                return vtt_file
            
            # .ko.vtt 대신 다른 형식일 수 있음
            for ext in ['.ko.vtt', '.ko.srt', '.ko.json3']:
                if os.path.exists(f"{subtitle_path}{ext}"):
                    print(" ✓")
                    return f"{subtitle_path}{ext}"
            
            print(" (자막 없음)")
            return None
                    
        except Exception as e:
            wait_time = (2 ** attempt) * 10 + random.uniform(5, 15)  # 지수 백오프
            print(f"\n    재시도 {attempt+1}/{max_retries} (대기 {wait_time:.0f}초)...")
            time.sleep(wait_time)
    
    print(f"    자막 다운로드 실패 (재시도 초과)")
    return None


def parse_vtt_file(vtt_path):
    """VTT 자막 파일 파싱하여 세그먼트 추출"""
    segments = []
    
    try:
        with open(vtt_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # VTT 타임스탬프 패턴
        # 00:00:01.000 --> 00:00:04.000
        pattern = r'(\d{2}:\d{2}:\d{2}\.\d{3})\s*-->\s*(\d{2}:\d{2}:\d{2}\.\d{3})\s*\n(.+?)(?=\n\n|\n\d{2}:\d{2}|\Z)'
        
        matches = re.findall(pattern, content, re.DOTALL)
        
        for start_ts, end_ts, text in matches:
            # 타임스탬프를 초로 변환
            def ts_to_sec(ts):
                parts = ts.replace(',', '.').split(':')
                return int(parts[0]) * 3600 + int(parts[1]) * 60 + float(parts[2])
            
            # HTML 태그 및 특수 문자 제거
            clean_text = re.sub(r'<[^>]+>', '', text)
            clean_text = re.sub(r'\n', ' ', clean_text).strip()
            
            if clean_text and len(clean_text) >= 5:
                segments.append({
                    'text': clean_text,
                    'start': ts_to_sec(start_ts),
                    'end': ts_to_sec(end_ts)
                })
    
    except Exception as e:
        print(f"    자막 파싱 실패: {e}")
    
    return segments


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
    """아티스트 공식 채널에서 자막 기반 콘텐츠 수집"""
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
    
    # 2. MV/음악 영상 먼저 제외
    filtered_videos = [v for v in videos if not is_music_content(v['title'])]
    excluded_count = len(videos) - len(filtered_videos)
    if excluded_count > 0:
        print(f"  ⏭️ MV/음악 영상 제외: {excluded_count}개")
    
    # 3. 브이로그/비하인드 영상 우선 정렬
    vlog_videos = [v for v in filtered_videos if is_vlog_content(v['title'])]
    other_videos = [v for v in filtered_videos if not is_vlog_content(v['title'])]
    
    print(f"  🎬 처리 대상: {len(filtered_videos)}개 (브이로그: {len(vlog_videos)}개)")
    
    sorted_videos = vlog_videos + other_videos
    
    for i, vid in enumerate(sorted_videos):
        if len(candidates) >= TARGET_STAGE_COUNT:
            break
            
        video_id = vid.get('id')
        title = vid.get('title', '')
        
        print(f"[{i+1}/{len(sorted_videos)}] {title[:45]}...")
        
        # 자막 다운로드
        subtitle_path = download_subtitles(video_id)
        
        
        if not subtitle_path:
            print(f"    자막 없음")
            continue
        
        # 자막 파싱
        segments = parse_vtt_file(subtitle_path)
        if not segments:
            print(f"    세그먼트 없음")
            continue
        
        # 학습 문장 추출
        challenges = find_learning_sentences(segments, max_results=5)
        
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
        print("사용법: python3 dredge_content_v4.py <Artist_Name> [Artist2 ...] OR 'ALL'")
        sys.exit(1)
    
    if sys.argv[1] == "ALL":
        print(f"🌊 전체 {len(ALL_ARTISTS)}개 아티스트 유튜브 자막 기반 수집 시작...")
        artists = ALL_ARTISTS
    else:
        artists = sys.argv[1:]
    
    print("📝 YouTube 자동 자막 사용 (100% 일관성 보장)\n")
    
    # 출력 파일 초기화
    with open(OUTPUT_SQL, "w") as f:
        f.write("-- Dredge Content V4 (YouTube Subtitles)\n")
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
