# Deployment note — Multigame v8

This update adds the official Dragon Squadron app icon and PWA metadata.

Upload the full unzipped folder contents to the GitHub repo root and let Vercel redeploy.

No Supabase SQL update is required if `dragon_squadron_games` already exists.

For iPhone testing, remove the old Home Screen shortcut first, then open the live site in Safari and choose Share → Add to Home Screen. iOS caches Home Screen icons, so re-adding the shortcut is required.


V8 update: revised first-entry Commanding Officer briefing to a shorter 1980s Hong Kong Squadron exercise brief and set new-game exercise start time to 0800.


## v11
Upload the full unzipped v11 folder contents. Supabase SQL does not need to be rerun if `dragon_squadron_games` already exists.


## v11
Small UI-only change: strengthened the tactical chart frame and added a dedicated border around the actual 25 × 25 NM chart image, including the bottom edge. Gameplay, lobby, VHF, reports, PWA icons and Supabase structure are unchanged.


V13 update: claimed ships belonging to another player now show as Claimed, while only the local player’s own ship shows Re-enter. VHF DF bearing cones now deliberately offset the centreline so the transmitting ship is inside the cone but not normally centred on it.
