# Deployment note

1. Unzip `dragon-squadron-mobile-v3-full.zip`.
2. Open the unzipped folder.
3. Select every file inside it.
4. Upload all files to the root of the GitHub repository.
5. Confirm these files are visible at the top level:
   - index.html
   - peacock_token.png
   - plover_token.png
   - starling_token.png
   - swallow_token.png
   - swift_token.png
   - README.md
   - DEPLOYMENT_NOTE.md
   - .nojekyll
6. Redeploy or wait for Vercel/GitHub Pages to update.

This version uses Supabase row ID `main_mobile_v3`, so it will start as a fresh serial rather than using the previous v2 test state.
