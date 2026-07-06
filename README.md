# Dragon Squadron SURFEX - Multigame v4

Mobile-first asynchronous multiplayer prototype.

This build keeps the working multi-game Supabase structure from v1-v3 and focuses on the tactical-screen usability issues reported during testing.

## v4 changes

- Opening splash screen restored using the Dragon Squadron SURFEX title artwork.
- Tactical map now starts zoomed in around the player's own ship rather than fully zoomed out.
- Map pan limits now include edge padding, so ships near chart boundaries can still be centred.
- Waiting-for-players message is now a compact top overlay and should no longer obscure the own ship at the bottom of the chart.
- First-time game entry now shows a Commanding Officer's Orders / scenario briefing before entering the tactical display.
- Admin / Testing Control added to the dashboard, protected by master PIN `1945`, with delete-game and delete-all-test-games options.
- Existing multigame table is reused: `dragon_squadron_games`.

## Deployment

Upload the full unzipped folder contents to the GitHub repository root. Do not upload the zip file itself.

If you already ran the multigame SQL setup, you do not need to run it again for v4.
