#!/usr/bin/env python3
"""
The Dredge V2: Content Expansion with Google Cloud STT
- Dual-language search (Korean + English)
- Google Cloud Speech-to-Text for transcription
- More accurate difficulty calculation
- Better relevance filtering
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
SEARCH_LIMIT = 30  # 두 검색어 합쳐서 60개
AUDIO_DIR = "/home/qwer/Workspace/kdictation/temp_audio"
OUTPUT_SQL = "supabase/migrations/036_stage_data_v2.sql"

if not os.path.exists(AUDIO_DIR):
    os.makedirs(AUDIO_DIR)

# 아티스트별 검색어 매핑 (한글 + 영어)
ARTIST_SEARCH_TERMS = {
    "BTS": ["방탄소년단 브이로그 자막", "BTS vlog subtitle"],
    "NewJeans": ["뉴진스 브이로그 자막", "NewJeans vlog"],
    "BLACKPINK": ["블랙핑크 브이로그 자막", "BLACKPINK vlog"],
    "IVE": ["아이브 브이로그 자막", "IVE vlog subtitle"],
    "aespa": ["에스파 브이로그 자막", "aespa vlog"],
    "SEVENTEEN": ["세븐틴 브이로그 자막", "SEVENTEEN vlog"],
    "Stray Kids": ["스트레이키즈 브이로그 자막", "Stray Kids vlog"],
    "NCT 127": ["엔시티127 브이로그 자막", "NCT127 vlog"],
    "NCT DREAM": ["엔시티드림 브이로그 자막", "NCT DREAM vlog"],
    "TXT": ["투모로우바이투게더 브이로그 자막", "투바투 vlog 자막"],
    "ENHYPEN": ["엔하이픈 브이로그 자막", "ENHYPEN vlog"],
    "LE SSERAFIM": ["르세라핌 브이로그 자막", "LE SSERAFIM vlog"],
    "ITZY": ["있지 브이로그 자막", "ITZY vlog"],
    "TWICE": ["트와이스 브이로그 자막", "TWICE vlog"],
    "G-IDLE": ["여자아이들 브이로그 자막", "(G)I-DLE vlog"],
    "NMIXX": ["엔믹스 브이로그 자막", "NMIXX vlog"],
    "BABYMONSTER": ["베이비몬스터 브이로그 자막", "BABYMONSTER vlog"],
    "BOYNEXTDOOR": ["보이넥스트도어 브이로그 자막", "BOYNEXTDOOR vlog"],
    "TWS": ["투어스 브이로그 자막", "TWS vlog"],
    "fromis_9": ["프로미스나인 브이로그 자막", "fromis_9 vlog"],
    "ATEEZ": ["에이티즈 브이로그 자막", "ATEEZ vlog"],
    "Red Velvet": ["레드벨벳 브이로그 자막", "Red Velvet vlog"],
    "RIIZE": ["라이즈 브이로그 자막", "RIIZE vlog"],
    "ZEROBASEONE": ["제로베이스원 브이로그 자막", "ZEROBASEONE vlog"],
    "xikers": ["싸이커스 브이로그 자막", "xikers vlog"],
    "KISS OF LIFE": ["키스오브라이프 브이로그 자막", "KISS OF LIFE vlog"],
    "Kep1er": ["케플러 브이로그 자막", "Kep1er vlog"],
    "MEOVV": ["미오브 브이로그 자막", "MEOVV vlog"],
    "WayV": ["웨이비 브이로그 자막", "WayV vlog"],
    "ILLIT": ["아일릿 브이로그 자막", "ILLIT vlog"],
    "IZNA": ["이즈나 브이로그 자막", "IZNA vlog"],
    "Hearts2Hearts": ["하츠투하츠 브이로그 자막", "Hearts2Hearts vlog"],
}

# 아티스트별 관련성 검증 키워드
ARTIST_KEYWORDS = {
    "BTS": ["bts", "방탄", "방탄소년단", "rm", "진", "슈가", "제이홉", "지민", "뷔", "정국", "bangtan"],
    "NewJeans": ["newjeans", "뉴진스", "민지", "하니", "다니엘", "해린", "혜인"],
    "BLACKPINK": ["blackpink", "블랙핑크", "블핑", "제니", "지수", "로제", "리사"],
    "IVE": ["ive", "아이브", "유진", "가을", "레이", "원영", "리즈", "이서"],
    "aespa": ["aespa", "에스파", "카리나", "지젤", "윈터", "닝닝"],
    "SEVENTEEN": ["seventeen", "세븐틴", "에스쿱스", "정한", "조슈아", "준", "호시", "원우", "우지", "디에잇", "민규", "도겸", "승관", "버논", "디노"],
    "Stray Kids": ["stray kids", "스트레이키즈", "스키즈", "방찬", "리노", "창빈", "현진", "한", "필릭스", "승민", "아이엔"],
    "NCT 127": ["nct 127", "nct127", "엔시티", "태용", "쟈니", "유타", "도영", "재현", "정우", "마크", "해찬"],
    "NCT DREAM": ["nct dream", "엔시티드림", "드림", "마크", "런쥔", "제노", "해찬", "재민", "천러", "지성"],
    "TXT": ["txt", "투모로우", "투바투", "수빈", "연준", "범규", "태현", "휴닝카이", "tomorrow x together"],
    "ENHYPEN": ["enhypen", "엔하이픈", "엔하", "희승", "제이", "제이크", "성훈", "선우", "정원", "니키"],
    "LE SSERAFIM": ["le sserafim", "르세라핌", "사쿠라", "김채원", "허윤진", "카즈하", "홍은채"],
    "ITZY": ["itzy", "있지", "예지", "리아", "류진", "채령", "유나"],
    "TWICE": ["twice", "트와이스", "나연", "정연", "모모", "사나", "지효", "미나", "다현", "채영", "쯔위"],
    "G-IDLE": ["g-idle", "gi-dle", "gidle", "여자아이들", "아이들", "미연", "민니", "소연", "우기", "슈화"],
    "NMIXX": ["nmixx", "엔믹스", "릴리", "해원", "설윤", "배이", "지우", "규진"],
    "BABYMONSTER": ["babymonster", "베이비몬스터", "베몬", "루카", "파리타", "아사", "아현", "로라", "치키타", "하람"],
    "BOYNEXTDOOR": ["boynextdoor", "보이넥스트도어", "성호", "리우", "명재", "태산", "이한", "운학"],
    "TWS": ["tws", "투어스", "신유", "도훈", "영재", "경민", "지훈", "한주"],
    "fromis_9": ["fromis_9", "fromis", "프로미스나인", "프로미스", "이서연", "송하영", "장규리", "박지원", "노지선", "이채영", "이나경", "백지헌"],
    "ATEEZ": ["ateez", "에이티즈", "홍중", "성화", "윤호", "여상", "산", "민기", "우영", "종호"],
    "Red Velvet": ["red velvet", "레드벨벳", "레벨", "아이린", "슬기", "웬디", "조이", "예리"],
    "RIIZE": ["riize", "라이즈", "쇼타로", "은석", "성찬", "원빈", "수호", "소희", "앤톤"],
    "ZEROBASEONE": ["zerobaseone", "제로베이스원", "zb1", "성한빈", "김지웅", "장하오", "석매튜", "김태래", "리키", "김규빈", "박건욱", "한유진"],
    "xikers": ["xikers", "싸이커스", "민재", "수민", "주민", "예담", "준한", "세온", "연우", "인탁", "휘진", "현우"],
    "KISS OF LIFE": ["kiss of life", "키스오브라이프", "키오라", "줄리", "나띠", "벨", "하늘"],
    "Kep1er": ["kep1er", "케플러", "유진", "샤오팅", "마시로", "채현", "다연", "히카루", "휴닝바히에", "영은", "예서"],
    "MEOVV": ["meovv", "미오브", "쏘피", "얀", "가을", "너기", "안나"],
    "WayV": ["wayv", "웨이비", "쿤", "텐", "윈윈", "루카스", "샤오쥔", "헨드리", "양양"],
    "ILLIT": ["illit", "아일릿", "윤아", "민주", "모카", "원희", "이로하"],
    "IZNA": ["izna", "이즈나", "고코", "지유", "준희", "서연", "지민", "사랑"],
    "Hearts2Hearts": ["hearts2hearts", "하츠투하츠", "시아", "쓰무기", "유이", "요우", "한나"],
}

def check_relevance(artist_name, video_title):
    """영상 제목이 아티스트와 관련 있는지 확인"""
    keywords = ARTIST_KEYWORDS.get(artist_name, [artist_name.lower()])
    title_lower = video_title.lower()
    
    for kw in keywords:
        if kw.lower() in title_lower:
            return True
    return False

def search_youtube_dual(artist_name):
    """한글 + 영어 두 검색어로 검색"""
    search_terms = ARTIST_SEARCH_TERMS.get(artist_name, [f"{artist_name} 브이로그", f"{artist_name} vlog"])
    all_videos = []
    seen_ids = set()
    
    for query in search_terms:
        print(f"🔍 검색 중: {query}")
        ydl_opts = {
            'quiet': True,
            'extract_flat': True,
            'force_generic_extractor': False,
            'playlist_end': SEARCH_LIMIT,
            'ignoreerrors': True,
        }
        
        with YoutubeDL(ydl_opts) as ydl:
            try:
                search_query = f"ytsearch{SEARCH_LIMIT}:{query}"
                result = ydl.extract_info(search_query, download=False)
                if 'entries' in result:
                    for vid in result['entries']:
                        if vid and vid.get('id') and vid['id'] not in seen_ids:
                            seen_ids.add(vid['id'])
                            all_videos.append(vid)
            except Exception as e:
                print(f"  검색 오류: {e}")
    
    print(f"  총 {len(all_videos)}개 영상 발견")
    return all_videos

def download_audio(video_id):
    """오디오 다운로드 (첫 2분)"""
    url = f"https://www.youtube.com/watch?v={video_id}"
    path = f"{AUDIO_DIR}/{video_id}"
    
    # 기존 파일 확인
    if os.path.exists(f"{path}.mp3"):
        return f"{path}.mp3"
    
    cmd = [
        "yt-dlp", "-x", "--audio-format", "mp3", "--audio-quality", "5",
        "-o", path + ".%(ext)s",
        "--download-sections", "*0:00-0:30",  # 30초만 (Google STT 동기화 API 제한)
        url
    ]
    
    try:
        subprocess.run(cmd, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
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
        subprocess.run(cmd, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
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
        enable_word_time_offsets=True,  # 단어별 타임스탬프
        enable_automatic_punctuation=True,
    )
    
    try:
        response = client.recognize(config=config, audio=audio)
        
        segments = []
        for result in response.results:
            alt = result.alternatives[0]
            transcript = alt.transcript
            
            # 단어 타임스탬프로 세그먼트 구성
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
        print(f"    Google STT 오류: {e}")
        return []

def calculate_difficulty(sentence, duration):
    """난이도 계산"""
    clean_text = re.sub(r'[^\w\s]', '', sentence)
    length = len(clean_text)
    cps = length / max(duration, 0.5)
    
    score = (cps * 10) + (length * 0.5)
    
    # 복잡한 문법 패턴 보너스
    if "면" in sentence or "는데" in sentence:
        score += 5
    if len(sentence) > 15:
        score += 5
        
    return score

def process_artist(artist_name):
    """아티스트별 콘텐츠 수집 및 처리"""
    print(f"\n{'='*60}")
    print(f"처리 중: {artist_name}")
    print(f"{'='*60}")
    
    # 1. 검색 (한글 + 영어)
    videos = search_youtube_dual(artist_name)
    candidates = []
    
    for i, vid in enumerate(videos):
        if not vid:
            continue
            
        video_id = vid.get('id')
        title = vid.get('title', '')
        
        # Shorts 제외
        if "short" in title.lower() or "#short" in title.lower():
            continue
        
        # 관련성 체크
        if not check_relevance(artist_name, title):
            print(f"[{i+1}/{len(videos)}] ❌ 관련 없음: {title[:40]}...")
            continue
            
        print(f"[{i+1}/{len(videos)}] ✅ 관련 영상: {title[:40]}...")
        
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
        challenges = find_learning_sentences(segments, max_results=1)
        
        if challenges:
            best = challenges[0]
            if len(best['full_sentence']) < 10:
                print(f"    문장 너무 짧음: {best['full_sentence']}")
                continue
            
            diff = calculate_difficulty(best['full_sentence'], best['end_sec'] - best['start_sec'])
            
            candidates.append({
                'video_id': video_id,
                'title': title.replace("'", "''"),
                'challenge': best,
                'difficulty': diff
            })
            print(f"    ✅ 추가! 점수: {diff:.1f} ({best['full_sentence'][:30]}...)")
            
            if len(candidates) >= TARGET_STAGE_COUNT:
                break
    
    print(f"\n{artist_name}: {len(candidates)}개 수집 완료")
    
    # 2. 스테이지 배정 (난이도순 정렬)
    candidates.sort(key=lambda x: x['difficulty'])
    
    # 3. SQL 생성
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

# Full Artist List (32 Groups)
ALL_ARTISTS = list(ARTIST_SEARCH_TERMS.keys())

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("사용법: python3 dredge_content_v2.py <Artist_Name> [Artist2 ...] OR 'ALL'")
        sys.exit(1)
    
    if sys.argv[1] == "ALL":
        print(f"🌊 전체 {len(ALL_ARTISTS)}개 아티스트 수집 시작...")
        artists = ALL_ARTISTS
    else:
        artists = sys.argv[1:]
    
    print("Google Cloud Speech-to-Text 사용")
    
    # 출력 파일 초기화
    with open(OUTPUT_SQL, "w") as f:
        f.write("-- Dredge Content V2 (Google STT)\n")
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
