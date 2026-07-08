# Dragon Squadron SURFEX — Multigame v16

PWA-ready mobile browser game for asynchronous Dragon Squadron SURFEX play.

This version preserves the v15 gameplay and adds two focused fixes:

- All player-facing tasking labels now use the public chart track number only.
- Lookout, radar plot, 76mm, contact cards, confirmation panels and turn reports should now all refer to the same number the player sees on the chart.
- The app no longer exposes internal IDs such as `C1009` in player-facing tasking/report text.
- From Turn 2 onward, once all ships are claimed, the first submitted order starts a 30-minute turn deadline.
- If all players submit before the deadline, the turn resolves immediately.
- If the 30-minute deadline expires, the turn resolves when the app is next opened/refreshed, with non-submitters continuing on standing orders.
- Dashboard/My Games status now shows the countdown when a turn deadline is active.

No Supabase SQL change is required if the `dragon_squadron_games` table already exists.
