# Dragon Squadron SURFEX — Multigame v15

PWA-ready mobile browser game for asynchronous Dragon Squadron SURFEX play.

This version preserves the v14 multigame flow and applies chart-display/gameplay concealment fixes:

- All visible vessels share the same randomly assigned track number pool.
- Other Peacock-class patrol craft are no longer identifiable by special low/900-series track numbers.
- Track labels are numeric only and slightly smaller.
- Own-ship projected movement uses a thinner chart-work style arrow with 3/6/9 minute cross-ticks.
- Radar trails are muted rather than bright dot chains.

No Supabase SQL change is required if the `dragon_squadron_games` table already exists.
