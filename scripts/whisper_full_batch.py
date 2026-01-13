#!/usr/bin/env python3
"""
전체 320개 영상을 로컬 Whisper로 분석하여 정확한 타임스탬프 추출
진행 상황을 저장하여 중간에 끊겨도 이어서 처리 가능
"""

import os
import json
import subprocess
import sys
import time
from pathlib import Path

os.environ['PATH'] = f"/home/qwer/.local/bin:{os.environ['PATH']}"
sys.path.insert(0, '/home/qwer/Workspace/kdictation/scripts')

from patterns_expanded import find_learning_sentences

# 경로 설정
BASE_DIR = Path("/home/qwer/Workspace/kdictation")
AUDIO_DIR = BASE_DIR / "temp_audio"
PROGRESS_FILE = BASE_DIR / "whisper_progress.json"
RESULTS_FILE = BASE_DIR / "whisper_full_results.json"
SQL_FILE = BASE_DIR / "supabase/migrations/028_whisper_full_timestamps.sql"

# 이미 분석 완료된 video ID (Whisper로 정확한 타임스탬프 추출됨)
ALREADY_VERIFIED = {
    'OMVoxddjWmM', 'EnDBSEazby4', 'urNLPgalt6o', 'BPAryWcO6jI',
    'hownMyg3g3M', '9wI4ZQLmlhs', 'MQ9fqyO0Oc0', 'MbqitUOcMxw',
    '35kacj9xT9c', 'a0rMb-w4P_0', 'fd68xm_7BKk', '0nBGCaydqKo',
    'MZXdbnM8KZA', 'OAcxiqfwCdI', 'fzdoRd5ErPM',
}

def load_video_ids():
    """마이그레이션 파일에서 모든 video ID 추출"""
    cmd = """grep -oP "youtube_id = '[^']+'" supabase/migrations/018_fix_batch1_real_ids.sql supabase/migrations/019_fix_batch2_real_ids.sql supabase/migrations/020_fix_batch3_real_ids.sql supabase/migrations/021_fix_batch4_real_ids.sql supabase/migrations/022_fix_batch5_real_ids.sql supabase/migrations/023_fix_final_batch_real_ids.sql | awk -F"'" '{print $2}' | sort -u"""
    
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True, cwd=str(BASE_DIR))
    video_ids = [vid.strip() for vid in result.stdout.strip().split('\n') if vid.strip()]
    return video_ids

def load_progress():
    """진행 상황 로드"""
    if PROGRESS_FILE.exists():
        with open(PROGRESS_FILE, 'r') as f:
            return json.load(f)
    return {'processed': [], 'results': [], 'failed': []}

def save_progress(progress):
    """진행 상황 저장"""
    with open(PROGRESS_FILE, 'w') as f:
        json.dump(progress, f, ensure_ascii=False, indent=2)

def download_audio(video_id: str) -> str:
    """YouTube에서 오디오 다운로드 (처음 2분)"""
    AUDIO_DIR.mkdir(exist_ok=True)
    audio_path = AUDIO_DIR / f"{video_id}.mp3"
    
    if audio_path.exists():
        return str(audio_path)
    
    cmd = [
        "yt-dlp", "-x", "--audio-format", "mp3", "--audio-quality", "5",
        "-o", str(audio_path), "--download-sections", "*0:00-2:00",
        f"https://www.youtube.com/watch?v={video_id}"
    ]
    
    try:
        subprocess.run(cmd, capture_output=True, check=True, timeout=180)
        return str(audio_path) if audio_path.exists() else None
    except:
        return None

def transcribe(audio_path: str) -> tuple:
    """Whisper로 음성 인식"""
    import whisper
    
    model = whisper.load_model("base")
    result = model.transcribe(audio_path, language="ko")
    
    return result['text'], result.get('segments', [])

def generate_sql(results: list) -> str:
    """SQL UPDATE 문 생성"""
    lines = [
        "-- 로컬 Whisper AI를 사용한 전체 타임스탬프 수정",
        "-- 생성일: " + time.strftime("%Y-%m-%d %H:%M:%S"),
        ""
    ]
    
    for r in results:
        if not r.get('challenges'):
            continue
            
        video_id = r['video_id']
        c = r['challenges'][0]
        
        lines.append(f"-- Video: {video_id}")
        lines.append(f"""UPDATE challenges 
SET start_sec = {c['start_sec']},
    end_sec = {c['end_sec']},
    full_sentence = '{c['full_sentence'].replace("'", "''")}',
    answer_word = '{c['answer_word']}',
    base_form = {f"'{c['base_form']}'" if c['base_form'] else 'NULL'},
    hint_en = '{c['hint_en']}'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '{video_id}');
""")
    
    return "\n".join(lines)

def main():
    print("="*60)
    print("로컬 Whisper 전체 영상 분석")
    print("="*60)
    
    # Video ID 로드
    all_video_ids = load_video_ids()
    print(f"총 video ID: {len(all_video_ids)}개")
    
    # 진행 상황 로드
    progress = load_progress()
    processed_set = set(progress['processed'])
    
    # 이미 처리된 것과 검증된 것 제외
    to_process = [vid for vid in all_video_ids 
                  if vid not in processed_set and vid not in ALREADY_VERIFIED]
    
    print(f"이미 분석 완료: {len(ALREADY_VERIFIED)}개")
    print(f"이번 세션 처리 완료: {len(processed_set)}개")
    print(f"남은 처리 대상: {len(to_process)}개")
    print("="*60)
    
    success_count = 0
    fail_count = 0
    
    for i, video_id in enumerate(to_process):
        print(f"\n[{i+1}/{len(to_process)}] {video_id}")
        
        try:
            # 다운로드
            audio_path = download_audio(video_id)
            if not audio_path:
                print("  ✗ 다운로드 실패")
                progress['failed'].append(video_id)
                progress['processed'].append(video_id)
                fail_count += 1
                save_progress(progress)
                continue
            
            # 전사
            print("  전사 중...")
            transcript, segments = transcribe(audio_path)
            print(f"  {len(segments)}개 세그먼트 발견")
            
            # 학습 문장 추출
            challenges = find_learning_sentences(segments, max_results=3)
            
            if challenges:
                print(f"  ✓ {len(challenges)}개 문장 매칭!")
                for c in challenges[:2]:
                    print(f"    [{c['start_sec']}s] {c['answer_word']}")
                
                progress['results'].append({
                    'video_id': video_id,
                    'challenges': challenges
                })
                success_count += 1
            else:
                print("  ✗ 매칭 문장 없음")
                fail_count += 1
            
            progress['processed'].append(video_id)
            save_progress(progress)
            
            # 5개마다 SQL 파일 갱신
            if (i + 1) % 5 == 0:
                sql = generate_sql(progress['results'])
                with open(SQL_FILE, 'w', encoding='utf-8') as f:
                    f.write(sql)
                print(f"\n  [진행: {success_count} 성공, {fail_count} 실패]")
                
        except KeyboardInterrupt:
            print("\n\n중단됨. 진행 상황이 저장되었습니다.")
            break
        except Exception as e:
            print(f"  오류: {e}")
            progress['processed'].append(video_id)
            progress['failed'].append(video_id)
            fail_count += 1
            save_progress(progress)
    
    # 최종 SQL 저장
    sql = generate_sql(progress['results'])
    with open(SQL_FILE, 'w', encoding='utf-8') as f:
        f.write(sql)
    
    # 최종 결과 저장
    with open(RESULTS_FILE, 'w', encoding='utf-8') as f:
        json.dump(progress['results'], f, ensure_ascii=False, indent=2)
    
    print("\n" + "="*60)
    print("완료!")
    print(f"  성공: {success_count}개")
    print(f"  실패: {fail_count}개")
    print(f"  SQL 파일: {SQL_FILE}")
    print("="*60)

if __name__ == '__main__':
    main()
