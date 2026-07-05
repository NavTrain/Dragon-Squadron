# Dragon Squadron SURFEX — Mobile v4 Recovery Build

Mobile-only test build.

Key changes from v3:

- New clean circular ship identity tokens for Peacock, Plover, Starling, Swallow and Swift. These are fresh assets, not cropped Royal Navy crests.
- Removed the separate Stations tab. Tasking now sits inside Orders.
- Course and speed changes no longer imply turn submission. Movement changes only update the vector.
- Added a separate Submit button in the game header and a separate Finalise Turn section in Orders.
- Submit now warns if lookout, radar or 76mm tasking is not assigned.
- Submitted players are locked out until the turn resolves.
- Radar plotter now gives delayed value after turn resolution: radar label, trail, target vector and course/speed/size data.
- Radar contacts are limited to detected contacts within 12 nm unless previously identified/tracked.
- Merchant traffic speed capped at 20 kts, with some dynamic course changes.
- Mission briefing restored as a longer 1980s-style signal/order.
- Supabase row changed to `main_mobile_v4` to avoid inherited v3 test state.

Upload the full unzipped contents to GitHub/Vercel. Do not upload only index.html.
