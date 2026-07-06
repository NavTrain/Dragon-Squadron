# Dragon Squadron SURFEX — Multigame v6

Mobile-first asynchronous multiplayer surface exercise.

This version keeps the working multigame lobby and turn loop from v5 and adds:

- Optional VHF Broadcast order, max 200 characters.
- Broadcast message can be edited before committing orders.
- Other ships receive the VHF message in their next turn report without the transmitting ship name.
- Receiving ships get a rough VHF direction-finding bearing on the tactical map, with an approximate ±15 degree uncertainty sector.
- Own ship label now shows the ship name rather than track 1001.

Database table required: `dragon_squadron_games`.

If you already ran the SQL for the first multigame version, no further Supabase SQL setup should be required.
