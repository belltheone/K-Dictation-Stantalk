#!/usr/bin/env python3
"""
Multi-Stage Extraction: 부족한 아티스트의 기존 영상에서 추가 문제 추출
- 30개 미만인 아티스트만 대상
- 이미 다운로드된 자막 파일 재활용
- 영상당 최대 10개 챌린지 추출
"""
import os
import sys
import re
from patterns_expanded import find_learning_sentences
from dredge_content_v4 import clean_subtitle_text, calculate_difficulty, parse_vtt_file

# Configuration
TARGET_STAGE_COUNT = 30
MAX_CHALLENGES_PER_VIDEO = 10
SUBTITLE_DIR = "/home/qwer/Workspace/kdictation/temp_subtitles"
OUTPUT_SQL = "supabase/migrations/044_stage_data_multi.sql"

# 아티스트별 현재 수집량과 영상 목록
# Full Scan 결과 기반 (30개 미만인 아티스트만)
SHORTAGE_ARTISTS = {
    # Part 1 (042)
    "aespa": {"current": 8, "videos": []},
    "Stray Kids": {"current": 10, "videos": []},
    "NCT 127": {"current": 11, "videos": []},
    "NCT DREAM": {"current": 13, "videos": []},
    # Part 2 (043)
    "ITZY": {"current": 5, "videos": []},
    "TWICE": {"current": 16, "videos": []},
    "NMIXX": {"current": 11, "videos": []},
    "ATEEZ": {"current": 11, "videos": []},
    "Red Velvet": {"current": 6, "videos": []},
    "RIIZE": {"current": 5, "videos": []},
    "ZEROBASEONE": {"current": 2, "videos": []},
    "xikers": {"current": 4, "videos": []},
    "KISS OF LIFE": {"current": 19, "videos": []},
    "Kep1er": {"current": 24, "videos": []},
    "ILLIT": {"current": 9, "videos": []},
    "QWER": {"current": 1, "videos": []},
    # 미처리 아티스트 (채널 문제/자막 없음)
    "G-IDLE": {"current": 0, "videos": []},
    "BABYMONSTER": {"current": 0, "videos": []},
    "MEOVV": {"current": 0, "videos": []},
    "IZNA": {"current": 0, "videos": []},
    "Hearts2Hearts": {"current": 0, "videos": []},
}

def parse_sql_for_videos(sql_path):
    """SQL 파일에서 아티스트별 video_id 추출"""
    if not os.path.exists(sql_path):
        return {}
    
    result = {}
    with open(sql_path, 'r') as f:
        content = f.read()
    
    # youtube_id와 artist_name 추출
    pattern = r"VALUES \('([a-zA-Z0-9_-]+)', '[^']*', '([^']+)'"
    matches = re.findall(pattern, content)
    
    for video_id, artist in matches:
        if artist not in result:
            result[artist] = []
        if video_id not in result[artist]:
            result[artist].append(video_id)
    
    return result

def get_cached_subtitles(video_id):
    """이미 다운로드된 자막 파일 찾기"""
    for ext in ['.ko.vtt', '.ko.srt', '.ko.json3']:
        path = f"{SUBTITLE_DIR}/{video_id}{ext}"
        if os.path.exists(path):
            return path
    return None

def extract_multi_challenges(artist_name, video_ids, current_count):
    """여러 영상에서 추가 챌린지 추출"""
    needed = TARGET_STAGE_COUNT - current_count
    print(f"\n{'='*60}")
    print(f"🔄 {artist_name}: {current_count}개 → 목표 {TARGET_STAGE_COUNT}개 (필요: {needed}개)")
    print(f"{'='*60}")
    
    all_challenges = []
    
    for vid in video_ids:
        if len(all_challenges) >= needed:
            break
            
        sub_path = get_cached_subtitles(vid)
        if not sub_path:
            print(f"  ⚠️ {vid}: 자막 없음")
            continue
            
        print(f"  📄 {vid} 분석 중...")
        segments = parse_vtt_file(sub_path)
        challenges = find_learning_sentences(segments, max_results=MAX_CHALLENGES_PER_VIDEO)
        
        for ch in challenges:
            if len(ch['full_sentence']) < 10:
                continue
            diff = calculate_difficulty(ch['full_sentence'], ch['end_sec'] - ch['start_sec'])
            if diff >= 999:
                continue
            
            all_challenges.append({
                'video_id': vid,
                'challenge': ch,
                'difficulty': diff
            })
            print(f"    💎 {ch['full_sentence'][:25]}...")
            
            if len(all_challenges) >= needed:
                break
    
    print(f"  ✅ 추가 추출: {len(all_challenges)}개")
    return all_challenges

def generate_sql(artist_name, challenges, start_stage):
    """SQL 생성 (기존 것에 이어서)"""
    sqls = []
    challenges.sort(key=lambda x: x['difficulty'])
    
    for i, item in enumerate(challenges):
        stage = start_stage + i + 1
        ch = item['challenge']
        is_locked = 'true'
        
        safe_full = ch['full_sentence'].replace("'", "''")
        safe_answer = ch['answer_word'].replace("'", "''")
        safe_base = (ch.get('base_form') or '').replace("'", "''")
        safe_hint = (ch.get('hint_en') or '').replace("'", "''")
        video_title = f"Multi-Stage {stage}"

        sql = f"""
DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('{item['video_id']}_{stage}', '{video_title}', '{artist_name}', 'normal', {stage}, {item['difficulty']}, {is_locked}, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = {stage}, difficulty_score = {item['difficulty']}, is_locked = {is_locked}, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, {ch['start_sec']}, {ch['end_sec']}, '{safe_full}', '{safe_answer}', '{safe_base}', '{safe_hint}');
END $$;
"""
        sqls.append(sql)
    return sqls

if __name__ == "__main__":
    print("🚀 Multi-Stage Extraction 시작")
    
    # 기존 SQL에서 영상 목록 추출
    videos_042 = parse_sql_for_videos("supabase/migrations/042_stage_data_fullscan.sql")
    videos_043 = parse_sql_for_videos("supabase/migrations/043_stage_data_fullscan_cont.sql")
    
    # 병합
    all_videos = {}
    for d in [videos_042, videos_043]:
        for artist, vids in d.items():
            if artist not in all_videos:
                all_videos[artist] = []
            all_videos[artist].extend(vids)
    
    # 출력 파일 초기화
    with open(OUTPUT_SQL, "w") as f:
        f.write("-- Multi-Stage Extraction Data\n\n")
    
    total_added = 0
    
    for artist, info in SHORTAGE_ARTISTS.items():
        if artist not in all_videos or not all_videos[artist]:
            print(f"\n⚠️ {artist}: 기존 영상 없음 (Extreme Mining 필요)")
            continue
            
        challenges = extract_multi_challenges(
            artist, 
            all_videos[artist], 
            info['current']
        )
        
        if challenges:
            sqls = generate_sql(artist, challenges, info['current'])
            with open(OUTPUT_SQL, "a") as f:
                f.write("\n".join(sqls) + "\n")
            total_added += len(sqls)
            print(f"💾 {artist}: {len(sqls)}개 추가 저장")
    
    print(f"\n{'='*60}")
    print(f"✅ 완료! 총 {total_added}개 추가 추출")
    print(f"📄 저장됨: {OUTPUT_SQL}")
