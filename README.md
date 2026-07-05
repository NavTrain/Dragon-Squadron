# Dragon Squadron SURFEX — Multi-Game Build

This is a GitHub/Vercel-ready static web app for Dragon Squadron SURFEX.

This build changes the multiplayer structure from one fixed shared game row to a proper multi-game lobby:

- Create New Game
- Join Game from a visible list
- My Games / Continue Game on the same device
- Optional game PIN shown by a lock icon
- 2–5 Peacock-class ships per game
- All ship slots must be claimed before the first turn can resolve
- Players may claim a ship and prepare/submit orders before every slot is filled
- Once all players have submitted orders, the turn resolves by 3 minutes

## Required Supabase setup

Before using this build, run `supabase.sql` once in the Supabase SQL Editor.

The app uses one table:

`dragon_squadron_games`

Each row is one game instance. The full game state is stored as JSONB in that row. This is deliberate: for playtesting, it keeps the database simple and avoids problems caused by one permanent shared state row.

## Deployment

Upload all files in this folder to the root of the GitHub repository used by Vercel.

Do not upload the folder itself unless Vercel is configured to serve from that folder. The root should contain:

- `index.html`
- `chart_map.png`
- ship token PNGs
- event art PNGs
- `title_bg.png`
- `supabase.sql`
- `README.md`
- `DEPLOYMENT_NOTE.md`
- `.nojekyll`

