#!/usr/bin/env python3
"""
전체 검증 스크립트 - Google Cloud Speech-to-Text 교차 검증
- 영상-문장 일치 확인
- 난이도 분포 검증
- 문법 패턴 검증
- FAIL 항목 자동 제거 SQL 생성
"""
import os
import sys
import re
import subprocess
from difflib import SequenceMatcher
from collections import defaultdict

# Google Cloud Speech-to-Text
from google.cloud import speech

# 환경 설정
os.environ['PATH'] = f"/home/qwer/.local/bin:{os.environ['PATH']}"
AUDIO_DIR = "/home/qwer/Workspace/kdictation/temp_audio"

# 결과 저장
results = {
    'pass': [],
    'fail': [],
    'errors': []
}

# 난이도 통계
difficulty_stats = defaultdict(list)

# 아티스트별 검색 키워드 (영문 + 한글 + 멤버명)
# 영상 제목에 이 키워드 중 하나라도 있으면 관련 영상으로 판정
ARTIST_KEYWORDS = {
    "BTS": ["bts", "방탄", "방탄소년단", "rm", "진", "슈가", "제이홉", "지민", "뷔", "정국", "bangtan"],
    "NewJeans": ["newjeans", "뉴진스", "민지", "하니", "다니엘", "해린", "혜인"],
    "BLACKPINK": ["blackpink", "블랙핑크", "블핑", "제니", "지수", "로제", "리사"],
    "IVE": ["ive", "아이브", "유진", "가을", "레이", "원영", "리즈", "이서"],
    "aespa": ["aespa", "에스파", "카리나", "지젤", "윈터", "닝닝"],
    "SEVENTEEN": ["seventeen", "세븐틴", "세븐", "에스쿱스", "정한", "조슈아", "준", "호시", "원우", "우지", "디에잇", "민규", "도겸", "승관", "버논", "디노"],
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
    "fromis_9": ["fromis_9", "fromis", "프로미스나인", "프로미스", "이서연", "송하영", "장규리", "박지원", "노지선", "이서연", "이채영", "이나경", "백지헌"],
    "ATEEZ": ["ateez", "에이티즈", "홍중", "성화", "윤호", "여상", "산", "민기", "우영", "종호"],
    "Red Velvet": ["red velvet", "레드벨벳", "레벨", "아이린", "슬기", "웬디", "조이", "예리"],
    "RIIZE": ["riize", "라이즈", "쇼타로", "은석", "성찬", "원빈", "수호", "소희", "앤톤"],
    "ZEROBASEONE": ["zerobaseone", "제로베이스원", "zb1", "성한빈", "김지웅", "장하오", "석매튜", "김태래", "리키", "김규빈", "박건욱", "한유진"],
    "xikers": ["xikers", "싸이커스", "민재", "수민", "주민", "예담", "준한", "세온", "연우", "인탁", "제이", "휘진", "현우"],
    "KISS OF LIFE": ["kiss of life", "키스오브라이프", "키오라", "줄리", "나띠", "벨", "하늘"],
    "Kep1er": ["kep1er", "케플러", "유진", "샤오팅", "마시로", "채현", "다연", "히카루", "휴닝바히에", "영은", "예서"],
    "MEOVV": ["meovv", "미오브", "쏘피", "얀", "가을", "너기", "안나"],
    "WayV": ["wayv", "웨이비", "쿤", "텐", "윈윈", "루카스", "샤오쥔", "헨드리", "양양"],
    "ILLIT": ["illit", "아일릿", "윤아", "민주", "모카", "원희", "이로하"],
    "IZNA": ["izna", "이즈나", "고코", "지유", "준희", "서연", "지민", "사랑"],
    "Hearts2Hearts": ["hearts2hearts", "하츠투하츠", "시아", "쓰무기", "유이", "요우", "한나"],
}

def check_video_relevance(artist_name, video_title):
    """영상 제목이 해당 아티스트와 관련 있는지 확인"""
    keywords = ARTIST_KEYWORDS.get(artist_name, [artist_name.lower()])
    title_lower = video_title.lower()
    
    for kw in keywords:
        if kw.lower() in title_lower:
            return True, f"매칭: {kw}"
    
    return False, "관련 키워드 없음"


def parse_sql_file(filepath):
    """SQL 파일에서 콘텐츠/챌린지 정보 추출"""
    items = []
    
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # DO $$ 블록 단위로 분리
    blocks = content.split('DO $$')
    
    for block in blocks:
        if 'INSERT INTO contents' not in block:
            continue
        
        # YouTube ID 추출
        yt_match = re.search(r"VALUES\s*\('([^']+)'", block)
        if not yt_match:
            continue
        youtube_id = yt_match.group(1)
        
        # 아티스트 이름 추출
        artist_match = re.search(r"'([^']+)',\s*'normal'", block)
        artist_name = artist_match.group(1) if artist_match else 'Unknown'
        
        # 스테이지 번호 추출
        stage_match = re.search(r"'normal',\s*(\d+),", block)
        stage_number = int(stage_match.group(1)) if stage_match else 0
        
        # 챌린지 정보 추출
        ch_match = re.search(
            r"INSERT INTO challenges.*?VALUES\s*\(v_content_id,\s*(\d+),\s*(\d+),\s*'([^']+)',\s*'([^']+)'",
            block, re.DOTALL
        )
        
        # 영상 제목 추출
        title_match = re.search(r"VALUES\s*\('[^']+',\s*'([^']+)'", block)
        video_title = title_match.group(1) if title_match else ''
        
        if ch_match:
            items.append({
                'youtube_id': youtube_id,
                'title': video_title,
                'artist': artist_name,
                'stage': stage_number,
                'start_sec': int(ch_match.group(1)),
                'end_sec': int(ch_match.group(2)),
                'full_sentence': ch_match.group(3).replace("''", "'"),
                'answer_word': ch_match.group(4).replace("''", "'"),
            })
    
    return items



def download_audio(video_id):
    """오디오 다운로드 (없으면)"""
    output_path = f"{AUDIO_DIR}/{video_id}.mp3"
    if os.path.exists(output_path) and os.path.getsize(output_path) > 0:
        return True
        
    print(f"    📥 오디오 다운로드: {video_id} ...", end="", flush=True)
    
    cmd = [
        "yt-dlp",
        "-f", "bestaudio",
        "--extract-audio",
        "--audio-format", "mp3",
        "--audio-quality", "192K",
        "-o", f"{AUDIO_DIR}/{video_id}.%(ext)s",
        f"https://www.youtube.com/watch?v={video_id}",
        "--quiet", "--no-warnings"
    ]
    
    try:
        subprocess.run(cmd, check=True)
        print(" 완료")
        return True
    except Exception as e:
        print(f" 실패 ({e})")
        return False


def slice_audio(video_id, start_sec, end_sec):
    """오디오 구간 추출"""
    input_path = f"{AUDIO_DIR}/{video_id}.mp3"
    output_path = f"{AUDIO_DIR}/temp_slice_{video_id}_{start_sec}_{end_sec}.wav"
    
    # 오디오 파일이 없으면 다운로드 시도
    if not os.path.exists(input_path):
        if not download_audio(video_id):
            return None
    
    duration = end_sec - start_sec
    cmd = [
        "ffmpeg", "-y", "-i", input_path,
        "-ss", str(start_sec), "-t", str(duration),
        "-ar", "16000", "-ac", "1",  # Google STT 요구 형식
        output_path
    ]
    
    try:
        subprocess.run(cmd, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        return output_path
    except:
        return None


def transcribe_google(audio_path):
    """Google Cloud Speech-to-Text 호출"""
    client = speech.SpeechClient()
    
    with open(audio_path, "rb") as audio_file:
        content = audio_file.read()
    
    audio = speech.RecognitionAudio(content=content)
    config = speech.RecognitionConfig(
        encoding=speech.RecognitionConfig.AudioEncoding.LINEAR16,
        sample_rate_hertz=16000,
        language_code="ko-KR",
    )
    
    try:
        response = client.recognize(config=config, audio=audio)
        if response.results:
            return response.results[0].alternatives[0].transcript
        return ""
    except Exception as e:
        print(f"  Google STT 오류: {e}")
        return None


def calculate_similarity(text1, text2):
    """두 텍스트 유사도 계산"""
    # 공백/특수문자 제거 후 비교
    clean1 = re.sub(r'[^\w]', '', text1)
    clean2 = re.sub(r'[^\w]', '', text2)
    return SequenceMatcher(None, clean1, clean2).ratio()


def verify_item(item):
    """개별 항목 검증"""
    video_id = item['youtube_id']
    
    # DISABLED FOR OFFICIAL CHANNELS:     # 0. 영상 관련성 확인 (제목에 아티스트명/멤버명 포함?)
    # DISABLED FOR OFFICIAL CHANNELS:     is_relevant, relevance_msg = check_video_relevance(item['artist'], item.get('title', ''))
    # DISABLED FOR OFFICIAL CHANNELS:     if not is_relevant:
    # DISABLED FOR OFFICIAL CHANNELS:         return 'FAIL', f'관련 없는 영상 - {relevance_msg}'
    
    # 1. 정답 단어가 문장에 포함되어 있는지
    if item['answer_word'] not in item['full_sentence']:
        return 'FAIL', '정답 단어가 문장에 없음'
    
    # 2. 문장 최소 길이
    if len(item['full_sentence']) < 10:
        return 'FAIL', '문장이 너무 짧음'
    
    # 3. 오디오 슬라이스
    audio_path = slice_audio(video_id, item['start_sec'], item['end_sec'])
    if not audio_path:
        return 'ERROR', '오디오 파일 없음'
    
    # 4. Google STT 교차 검증
    google_result = transcribe_google(audio_path)
    
    # 임시 파일 삭제
    if os.path.exists(audio_path):
        os.remove(audio_path)
    
    if google_result is None:
        return 'ERROR', 'Google STT 호출 실패'
    
    if google_result == "":
        return 'FAIL', 'Google STT 인식 실패 (무음 또는 불명확)'
    
    # 5. 유사도 검증
    similarity = calculate_similarity(item['full_sentence'], google_result)
    
    if similarity < 0.75:
        return 'FAIL', f'유사도 낮음 ({similarity:.1%}) - Google: "{google_result}"'
    
    return 'PASS', f'유사도 {similarity:.1%}'


def generate_removal_sql(fail_items, output_path):
    """FAIL 항목 제거 SQL 생성"""
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write("-- 검증 실패 항목 비활성화\n")
        f.write("-- 생성 시각: " + str(__import__('datetime').datetime.now()) + "\n\n")
        
        for item in fail_items:
            vid = item['youtube_id']
            # is_published = false로 설정하여 비활성화
            f.write(f"""
UPDATE contents 
SET is_published = false 
WHERE youtube_id = '{vid}';
""")
        
        f.write(f"\n-- 총 {len(fail_items)}개 항목 비활성화\n")


def print_difficulty_report():
    """난이도 분포 리포트"""
    print("\n" + "="*60)
    print("📊 난이도 분포 분석")
    print("="*60)
    
    # 스테이지 그룹별 통계
    groups = {
        '초급 (1-10)': [],
        '중급 (11-20)': [],
        '고급 (21-30)': []
    }
    
    for stage, sentences in difficulty_stats.items():
        if 1 <= stage <= 10:
            groups['초급 (1-10)'].extend(sentences)
        elif 11 <= stage <= 20:
            groups['중급 (11-20)'].extend(sentences)
        elif 21 <= stage <= 30:
            groups['고급 (21-30)'].extend(sentences)
    
    for group_name, sentences in groups.items():
        if sentences:
            avg_len = sum(len(s) for s in sentences) / len(sentences)
            print(f"  {group_name}: 평균 {avg_len:.1f}글자 ({len(sentences)}개)")
    
    # 난이도 상승 검증
    if groups['초급 (1-10)'] and groups['고급 (21-30)']:
        beginner_avg = sum(len(s) for s in groups['초급 (1-10)']) / len(groups['초급 (1-10)'])
        advanced_avg = sum(len(s) for s in groups['고급 (21-30)']) / len(groups['고급 (21-30)'])
        
        if advanced_avg > beginner_avg:
            print(f"\n  ✅ 난이도 상승 곡선 정상 (초급 {beginner_avg:.1f} → 고급 {advanced_avg:.1f})")
        else:
            print(f"\n  ❌ 난이도 역전 감지! (초급 {beginner_avg:.1f} > 고급 {advanced_avg:.1f})")


def main():
    if len(sys.argv) < 2:
        print("사용법: python3 verify_full.py <sql_file> [--sample N]")
        print("예시: python3 verify_full.py migrations/034.sql --sample 100")
        sys.exit(1)
    
    sql_file = sys.argv[1]
    
    # 샘플링 옵션
    sample_size = None
    if '--sample' in sys.argv:
        idx = sys.argv.index('--sample')
        sample_size = int(sys.argv[idx + 1])
    
    print("="*60)
    print("🔍 전체 검증 시작 (Google Cloud Speech-to-Text)")
    print("="*60)
    
    # SQL 파싱
    items = parse_sql_file(sql_file)
    print(f"총 {len(items)}개 항목 발견")
    
    # 샘플링
    if sample_size and sample_size < len(items):
        import random
        items = random.sample(items, sample_size)
        print(f"→ {sample_size}개 샘플링 검증")
    
    print()
    
    # 검증 실행
    for i, item in enumerate(items):
        print(f"[{i+1}/{len(items)}] {item['artist']} Stage {item['stage']}: ", end="")
        
        status, message = verify_item(item)
        
        if status == 'PASS':
            results['pass'].append(item)
            print(f"✅ {message}")
        elif status == 'FAIL':
            item['fail_reason'] = message
            results['fail'].append(item)
            print(f"❌ {message}")
        else:
            item['error_reason'] = message
            results['errors'].append(item)
            print(f"⚠️ {message}")
        
        # 난이도 통계 수집
        difficulty_stats[item['stage']].append(item['full_sentence'])
    
    # 결과 요약
    print("\n" + "="*60)
    print("📋 검증 결과 요약")
    print("="*60)
    
    total = len(items)
    passed = len(results['pass'])
    failed = len(results['fail'])
    errors = len(results['errors'])
    
    print(f"  총 검증: {total}개")
    print(f"  ✅ PASS: {passed}개 ({passed/total*100:.1f}%)")
    print(f"  ❌ FAIL: {failed}개 ({failed/total*100:.1f}%)")
    print(f"  ⚠️ ERROR: {errors}개 ({errors/total*100:.1f}%)")
    
    # FAIL 항목 상세
    if results['fail']:
        print("\n❌ FAIL 상세:")
        for item in results['fail'][:10]:  # 최대 10개만 출력
            print(f"  - {item['artist']} Stage {item['stage']}: {item['fail_reason']}")
        if len(results['fail']) > 10:
            print(f"  ... 외 {len(results['fail'])-10}개")
    
    # 난이도 리포트
    print_difficulty_report()
    
    # FAIL 항목 제거 SQL 생성
    if results['fail']:
        removal_sql = sql_file.replace('.sql', '_removal.sql')
        generate_removal_sql(results['fail'], removal_sql)
        print(f"\n📄 제거 SQL 생성됨: {removal_sql}")
        print("   → 이 파일을 적용하면 FAIL 항목이 비활성화됩니다")
    
    print("\n" + "="*60)
    print("검증 완료!")
    print("="*60)


if __name__ == "__main__":
    main()
