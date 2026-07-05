# Deployment Note

1. Run `supabase.sql` in Supabase SQL Editor.
2. Unzip this package.
3. Upload the contents of the unzipped folder to the root of the GitHub repository.
4. Wait for Vercel to redeploy.
5. Open the Vercel app.
6. Use Create New Game to start a fresh serial.

This build does not use a fixed row such as `main_mobile_v12`. It uses the `dragon_squadron_games` table and creates one row per game.

Old broken game rows from previous builds do not affect this build.
