# Dragon Squadron SURFEX Online v1

Open `index.html` for local testing.

For online play:

1. Run `supabase.sql` in Supabase.
2. Paste the Supabase Project URL and anon/public key into `index.html`.
3. Deploy the folder to Vercel or another static host.

Files:

- `index.html` — game app, online-ready
- `supabase.sql` — database table and policies
- `ONLINE_SETUP.md` — setup steps
- `assets/` — local image assets

This version keeps the current game state in Supabase so all three players see the same dashboard, turn submissions, logs and scoreboard.
