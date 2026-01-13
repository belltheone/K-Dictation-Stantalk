#!/usr/bin/env python3
"""
확장된 197개 패턴으로 실패한 영상만 재분석 (증분 저장 + 오류 처리)
"""
import os
import json
import sys

os.environ['PATH'] = f"/home/qwer/.local/bin:{os.environ['PATH']}"
sys.path.insert(0, '/home/qwer/Workspace/kdictation/scripts')

from patterns_expanded import find_learning_sentences
import whisper

BASE_DIR = "/home/qwer/Workspace/kdictation"
AUDIO_DIR = f"{BASE_DIR}/temp_audio"
PROGRESS_FILE = f"{BASE_DIR}/whisper_progress.json"
REANALYSIS_FILE = f"{BASE_DIR}/whisper_reanalysis_results.json"

# 진행 상황 로드
with open(PROGRESS_FILE, 'r') as f:
    progress = json.load(f)

failed_ids = progress['failed']
print(f"실패한 영상 {len(failed_ids)}개 재분석 (197개 확장 패턴)")
print("="*60)

# 결과 저장용 리스트 (기존 파일이 있으면 로드)
if os.path.exists(REANALYSIS_FILE):
    with open(REANALYSIS_FILE, 'r') as f:
        saved_data = json.load(f)
        new_results = saved_data.get('new_results', [])
        still_failed = saved_data.get('still_failed', [])
        no_audio = saved_data.get('no_audio', [])
else:
    new_results = []
    still_failed = []
    no_audio = []

# 이미 처리된 ID
processed_ids = set(r['video_id'] for r in new_results) | set(still_failed) | set(no_audio)

print("Whisper 모델 로딩 중...")
model = whisper.load_model("base")

for i, vid in enumerate(failed_ids):
    if vid in processed_ids:
        continue
        
    print(f"\n[{i+1}/{len(failed_ids)}] {vid}")
    
    audio_path = f"{AUDIO_DIR}/{vid}.mp3"
    if not os.path.exists(audio_path):
        # webm 파일 확인
        audio_path = f"{AUDIO_DIR}/{vid}.webm"
        if not os.path.exists(audio_path):
            print("  ✗ 오디오 없음 (다운로드 실패)")
            no_audio.append(vid)
            # 저장
            with open(REANALYSIS_FILE, 'w', encoding='utf-8') as f:
                json.dump({'new_results': new_results, 'still_failed': still_failed, 'no_audio': no_audio}, f, ensure_ascii=False, indent=2)
            continue
    
    try:
        result = model.transcribe(audio_path, language="ko")
        segments = result.get('segments', [])
        print(f"  {len(segments)}개 세그먼트")
        
        challenges = find_learning_sentences(segments, max_results=3)
        
        if challenges:
            print(f"  ✓ {len(challenges)}개 매칭!")
            for c in challenges[:2]:
                print(f"    [{c['start_sec']}s] {c['answer_word']}")
            new_results.append({
                'video_id': vid,
                'challenges': challenges
            })
        else:
            print("  ✗ 여전히 매칭 없음")
            still_failed.append(vid)
            
    except Exception as e:
        print(f"  오류: {e}")
        still_failed.append(vid)
        
    # 매 반복마다 저장
    with open(REANALYSIS_FILE, 'w', encoding='utf-8') as f:
        json.dump({
            'new_results': new_results,
            'still_failed': still_failed,
            'no_audio': no_audio
        }, f, ensure_ascii=False, indent=2)

print("\n" + "="*60)
print("재분석 결과")
print("="*60)
print(f"  새로 성공: {len(new_results)}개")
print(f"  여전히 실패: {len(still_failed)}개")
print(f"  오디오 없음: {len(no_audio)}개")
