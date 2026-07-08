# Dragon Squadron Multigame v17

Upload the full contents of this folder to the GitHub repository root and allow Vercel to redeploy.

No Supabase SQL change is required if `dragon_squadron_games` already exists.

v17 changes:
- Fixes the mismatch between chart track numbers and tasking/status labels.
- Player-facing labels now show the public track number only, not internal IDs.
- Adds a 30-minute timed turn rule from Turn 2 onward, once all ships are claimed.
- The first player to submit starts the 30-minute deadline.
- The turn resolves immediately if everyone submits, or after the deadline with standing orders for non-submitters.
- Dashboard/My Games status shows the active countdown where applicable.


## v17 Practice Game

Adds a local single-player Practice Game against one automated Peacock-class patrol craft, with Training, Standard and Aggressive difficulty. Practice is stored locally on the device and does not create Supabase game rows.
