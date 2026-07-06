# Deployment Note — Multigame v5

1. Unzip the package.
2. Upload the full unzipped folder contents to the GitHub repo root.
3. Vercel should redeploy automatically.
4. Supabase SQL only needs to be run if the `dragon_squadron_games` table does not already exist.

This version uses the same Supabase table as previous multigame builds: `dragon_squadron_games`.
