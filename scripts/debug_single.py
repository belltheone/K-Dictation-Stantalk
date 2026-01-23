import requests

url = "https://kdictationstantalk.vercel.app/ko/learn/hearts2hearts/content-1"
headers = {
    "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36"
}

try:
    r = requests.get(url, headers=headers)
    print(f"Status: {r.status_code}")
    print(f"URL: {r.url}")
    print(f"Headers: {dict(list(r.headers.items())[:3])}")
    print(f"Content Length: {len(r.text)}")
    
    if "This page could not be found" in r.text:
        print("❌ 'This page could not be found' DETECTED")
    else:
        print("✅ 'This page could not be found' NOT DETECTED")
        
    print(f"Sample Text: {r.text[:500]}")
    
except Exception as e:
    print(f"Error: {e}")
