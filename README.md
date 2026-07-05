# Dragon Squadron SURFEX — Mobile v3

Mobile-only recovery build for GitHub/Vercel deployment.

## Key fixes in v3

- Rebuilt ship identity graphics as separate circular bird tokens.
- Replaced the incorrect unknown contact shape with a rounded four-lobed unknown surface symbol.
- Added chart-level touch handling for pinch zoom and pan.
- Added visible selected-contact highlighting.
- Added radar assignment label and radar trail dots for tracked contacts.
- Restored first-entry mission briefing from Officer Commanding Dragon Squadron.
- Added post-turn report popup when a player next enters their ship.
- Reworked order submission language to `Submit All Orders` and added order summary.
- Added 30-minute real-time order window after first player submits orders.
- Added `Advance Turn` after the timer expires, applying standing orders to non-submitters.
- Lockout now prevents submitted players from re-entering/changing orders before turn resolution.
- Dashboard/log overlay now has a visible sticky close button near the top.
- Uses a fresh Supabase row ID: `main_mobile_v3`.

## Upload instructions

Upload all files in this folder to the root of the GitHub repository. Do not upload only `index.html`, and do not upload the zip file itself.
