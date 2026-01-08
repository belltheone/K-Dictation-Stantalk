// K-Dictation Service Worker
// PWA 오프라인 기능 강화

const CACHE_NAME = "kdictation-v1";
const OFFLINE_URL = "/offline";

// 캐시할 정적 리소스
const STATIC_ASSETS = [
    "/",
    "/offline",
    "/manifest.json",
    "/icons/icon-192x192.png",
    "/icons/icon-512x512.png",
];

// API 캐시 패턴 (런타임 캐시)
const API_CACHE_PATTERNS = [
    /^https:\/\/img\.youtube\.com\//,
];

// 설치 이벤트 - 정적 리소스 캐시
self.addEventListener("install", (event) => {
    event.waitUntil(
        caches.open(CACHE_NAME).then((cache) => {
            console.log("[ServiceWorker] Pre-caching static assets");
            return cache.addAll(STATIC_ASSETS);
        })
    );
    self.skipWaiting();
});

// 활성화 이벤트 - 오래된 캐시 정리
self.addEventListener("activate", (event) => {
    event.waitUntil(
        caches.keys().then((cacheNames) => {
            return Promise.all(
                cacheNames
                    .filter((name) => name !== CACHE_NAME)
                    .map((name) => caches.delete(name))
            );
        })
    );
    self.clients.claim();
});

// Fetch 이벤트 - 캐시 우선 전략
self.addEventListener("fetch", (event) => {
    const { request } = event;
    const url = new URL(request.url);

    // API 요청은 네트워크 우선
    if (url.pathname.startsWith("/api/")) {
        event.respondWith(networkFirst(request));
        return;
    }

    // 이미지는 캐시 우선 (YouTube 썸네일 등)
    if (API_CACHE_PATTERNS.some((pattern) => pattern.test(request.url))) {
        event.respondWith(cacheFirst(request));
        return;
    }

    // HTML 페이지는 네트워크 우선, 실패 시 캐시
    if (request.mode === "navigate") {
        event.respondWith(
            fetch(request).catch(() => {
                return caches.match(OFFLINE_URL);
            })
        );
        return;
    }

    // 기타 리소스는 캐시 우선
    event.respondWith(cacheFirst(request));
});

// 캐시 우선 전략
async function cacheFirst(request) {
    const cachedResponse = await caches.match(request);
    if (cachedResponse) {
        return cachedResponse;
    }

    try {
        const networkResponse = await fetch(request);
        if (networkResponse.ok) {
            const cache = await caches.open(CACHE_NAME);
            cache.put(request, networkResponse.clone());
        }
        return networkResponse;
    } catch (error) {
        return new Response("Network error", { status: 503 });
    }
}

// 네트워크 우선 전략
async function networkFirst(request) {
    try {
        const networkResponse = await fetch(request);
        if (networkResponse.ok) {
            const cache = await caches.open(CACHE_NAME);
            cache.put(request, networkResponse.clone());
        }
        return networkResponse;
    } catch (error) {
        const cachedResponse = await caches.match(request);
        return cachedResponse || new Response("Network error", { status: 503 });
    }
}

// 푸시 알림 수신
self.addEventListener("push", (event) => {
    if (!event.data) return;

    const data = event.data.json();
    const options = {
        body: data.body || "새로운 알림이 있습니다!",
        icon: "/icons/icon-192x192.png",
        badge: "/icons/icon-72x72.png",
        vibrate: [100, 50, 100],
        data: {
            url: data.url || "/",
        },
    };

    event.waitUntil(
        self.registration.showNotification(data.title || "K-Dictation", options)
    );
});

// 알림 클릭 처리
self.addEventListener("notificationclick", (event) => {
    event.notification.close();

    const url = event.notification.data?.url || "/";
    event.waitUntil(
        clients.matchAll({ type: "window" }).then((clientList) => {
            for (const client of clientList) {
                if (client.url === url && "focus" in client) {
                    return client.focus();
                }
            }
            if (clients.openWindow) {
                return clients.openWindow(url);
            }
        })
    );
});
