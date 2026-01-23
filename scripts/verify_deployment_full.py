import subprocess
import concurrent.futures
import time
import sys

BASE_URL = "https://kdictationstantalk.vercel.app"

KNOWN_ARTISTS = [
    "bts", "newjeans", "ive", "aespa", "seventeen", "stray-kids", "nct-127", "nct-dream", "txt", "enhypen",
    "le-sserafim", "itzy", "twice", "nmixx", "boynextdoor", "tws", "fromis_9", "ateez", "red-velvet", "riize", 
    "zerobaseone", "xikers", "kiss-of-life", "kep1er", "wayv", "illit", "qwer",
    "g-idle", "babymonster", "meovv", "izna", "hearts2hearts"
]

def get_artists():
    print(f"✅ Using known list of {len(KNOWN_ARTISTS)} artists.")
    return KNOWN_ARTISTS

def check_stage_status(artist_id, stage_id):
    url = f"{BASE_URL}/ko/learn/{artist_id}/{stage_id}"
    try:
        # Use curl to bypass python-requests block
        # -I: Head request
        # -s: Silent
        # -o /dev/null: Discard output
        # -w "%{http_code}": Print status code
        result = subprocess.run(
            ["curl", "-I", "-s", "-o", "/dev/null", "-w", "%{http_code}", url],
            capture_output=True,
            text=True,
            timeout=10
        )
        
        status_code = result.stdout.strip()
        
        if status_code == "200":
            return True, url
        else:
            return False, f"{url} (Status {status_code})"
    except Exception as e:
        return False, f"{url} (Error {e})"

def verify_all():
    print("🚀 Starting Full Deployment Verification (Brute Force Mode - Curl)...")
    
    artists = get_artists()
    all_tasks = []
    
    # Prepare all checks
    for a in artists:
        for i in range(1, 61): # Check 1 to 60
            all_tasks.append((a, f"content-{i}"))
            
    print(f"📊 Scanning {len(all_tasks)} potential stages...")
    
    artist_counts = {a: 0 for a in artists}
    
    # Use concurrent.futures.ThreadPoolExecutor explicitly
    with concurrent.futures.ThreadPoolExecutor(max_workers=20) as executor:
        futures = {executor.submit(check_stage_status, a, s): (a, s) for a, s in all_tasks}
        
        processed = 0
        for future in concurrent.futures.as_completed(futures):
            a, s = futures[future]
            processed += 1
            if processed % 100 == 0:
                print(f"   Progress: {processed}/{len(all_tasks)}")
                
            success, msg = future.result()
            if success:
                artist_counts[a] += 1
    
    print(f"\n==========================================")
    print(f"📊 Final Stage Counts per Artist (Target >= 30)")
    print(f"==========================================")
    
    pass_count = 0
    for a in artists:
        count = artist_counts[a]
        status = "✅" if count >= 30 else "❌"
        print(f"{status} {a:<20}: {count} stages")
        if count >= 30:
            pass_count += 1
        else:
            print(f"   ⚠️ FAIL: Less than 30 stages!")
            
    print(f"\nSuccess Rate: {pass_count}/{len(artists)} Artists Passed")

if __name__ == "__main__":
    verify_all()
