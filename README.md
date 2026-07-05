# Dragon Squadron SURFEX - Multigame v2

Mobile-first asynchronous multiplayer tactical game.

This version keeps the working multigame lobby structure from v1 and focuses on interface/turn-report fixes:

- Create New Game / Join Game / My Games flow retained.
- One Supabase table: `dragon_squadron_games`.
- Course compass is now drag-controlled. The plus/minus course buttons have been removed.
- Tactical map supports pinch-to-zoom and drag-to-pan on mobile.
- A Centre button recentres the chart on the player’s own ship.
- Submitting orders always locks the player out and returns them to the dashboard.
- If the final player submits and the turn resolves, that player is also returned to the dashboard.
- Each player receives only their own ship's turn report when they re-enter the game.
- Event art remains available for later use but is not used as the chart background.

## Deployment

Run `supabase.sql` once in Supabase SQL Editor if the table does not already exist.

Upload the unzipped folder contents to the GitHub repository root. Do not upload the zip file itself.
