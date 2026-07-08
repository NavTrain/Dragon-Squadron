# Dragon Squadron SURFEX — Multigame v18

Mobile-first browser game for Dragon Squadron SURFEX.

This build preserves the working multigame, VHF, PWA, practice-game and turn-flow features from the previous version and applies gameplay/mechanics fixes from the latest playtest.

## v18 changes

- Opened up the tactical map with fewer islands and more manoeuvring water.
- Updated the visible chart image and land polygons so radar masking/grounding align with the map.
- Practice mode now starts with a smaller civilian traffic set and places the AI Peacock within a more playable search radius.
- Practice mode skips the full commit-order summary to keep single-player turns fast.
- Radar plot no longer visually classifies a contact as neutral/green. Unknown contacts remain yellow unless visually identified by lookout.
- Radar plot still provides course, speed, track history and size.
- Known radar size persists after radar is moved, but does not reveal the vessel type.
- Lookout reports now include contact identity, course and speed.
- Lookout is the mechanism that positively identifies contact type.
- Radar plot is lost if the target is masked by land or outside radar range at turn resolution.
- Radar assignment boxes no longer continue to display over contacts that are currently masked/out of sight.

## Deployment

Upload the full unzipped folder contents to the GitHub repository root and let Vercel redeploy.

No Supabase SQL change is required if the existing `dragon_squadron_games` table is already present.
