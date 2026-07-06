# Deployment Note - Dragon Squadron Multigame v4

1. Unzip the package.
2. Upload the contents of the unzipped folder to the GitHub repo root.
3. Vercel should redeploy automatically.
4. The app uses the existing Supabase table `dragon_squadron_games`.
5. Run `supabase.sql` only if that table does not already exist.
6. Use Admin / Testing Control with master PIN `1945` to delete old test games during testing.

This package is intended to replace the previous files in the repo root.
