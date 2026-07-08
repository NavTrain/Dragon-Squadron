const CACHE_NAME = 'dragon-squadron-v17';
self.addEventListener('install', event => { self.skipWaiting(); });
self.addEventListener('activate', event => { event.waitUntil(self.clients.claim()); });
self.addEventListener('fetch', event => { /* network-first for live Supabase-backed game */ });
