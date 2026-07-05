# Deployment Note - Multigame v2

This package uses the same Supabase table as multigame v1:

`dragon_squadron_games`

If you already ran the v1 SQL setup, you do not need to run it again.

For a clean deployment:

1. Unzip this folder.
2. Upload the contents of the folder to the GitHub repository root.
3. Let Vercel redeploy from GitHub.
4. Test with two devices:
   - create a game on device one;
   - join it on device two;
   - submit orders on device one;
   - confirm device one returns to dashboard;
   - submit orders on device two;
   - confirm device two returns to dashboard;
   - re-enter separately on each device and confirm each sees only its own ship report.
