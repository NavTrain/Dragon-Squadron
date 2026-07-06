const CACHE_NAME = 'dragon-squadron-multigame-v7';
const ASSETS = [
  './',
  './index.html',
  './manifest.json',
  './chart_map.png',
  './title_bg.png',
  './apple-touch-icon.png',
  './icon-192.png',
  './icon-512.png',
  './maskable-icon-192.png',
  './maskable-icon-512.png',
  './peacock_token.png',
  './plover_token.png',
  './starling_token.png',
  './swallow_token.png',
  './swift_token.png'
];
self.addEventListener('install', event => {
  event.waitUntil(caches.open(CACHE_NAME).then(cache => cache.addAll(ASSETS)).then(() => self.skipWaiting()));
});
self.addEventListener('activate', event => {
  event.waitUntil(caches.keys().then(keys => Promise.all(keys.filter(k => k !== CACHE_NAME).map(k => caches.delete(k)))).then(() => self.clients.claim()));
});
self.addEventListener('fetch', event => {
  if (event.request.method !== 'GET') return;
  event.respondWith(fetch(event.request).catch(() => caches.match(event.request)));
});
