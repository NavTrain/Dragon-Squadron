# Dragon Squadron SURFEX — Multigame v8

Mobile-first asynchronous multiplayer tactical naval game.

This version keeps the v6 gameplay and adds full PWA/Home Screen icon support.

## Deployment

Upload the complete contents of this folder to the GitHub repository root. Do not upload the zip file itself.

If the `dragon_squadron_games` table already exists in Supabase, no SQL change is required for this icon/PWA update.

## PWA icon files included

- manifest.json
- sw.js
- favicon.ico
- favicon-16.png
- favicon-32.png
- apple-touch-icon.png
- apple-touch-icon-120.png
- apple-touch-icon-152.png
- apple-touch-icon-167.png
- icon-72.png
- icon-96.png
- icon-128.png
- icon-144.png
- icon-152.png
- icon-180.png
- icon-192.png
- icon-384.png
- icon-512.png
- maskable-icon-192.png
- maskable-icon-512.png

After Vercel redeploys, delete the old iPhone Home Screen shortcut and add the site to Home Screen again from Safari.


V8 update: revised first-entry Commanding Officer briefing to a shorter 1980s Hong Kong Squadron exercise brief and set new-game exercise start time to 0800.


## v11 chart frame polish
- Removed duplicate title text overlays so the background title artwork carries the branding.
- Removed map zoom plus/minus buttons; pinch zoom remains.
- Kept a smaller Centre button.
- Shortened and repositioned the waiting notice.
- Strengthened the tactical chart frame.


## v11
Small UI-only change: strengthened the tactical chart frame and added a dedicated border around the actual 25 × 25 NM chart image, including the bottom edge. Gameplay, lobby, VHF, reports, PWA icons and Supabase structure are unchanged.
