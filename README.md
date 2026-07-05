# Dragon Squadron SURFEX — Online UI v2 Full Package

This is the full upload package for GitHub Pages.

Upload **all files in this folder** to the root of the GitHub repository. Do not upload the zip itself, and do not upload the enclosing folder.

The main images are embedded directly into `index.html`, so no separate image asset folder is required for the title/chart graphics.

## Files

- `index.html` — the complete game app
- `supabase.sql` — database setup script, only needed if creating a new Supabase project
- `ONLINE_SETUP.md` — Supabase/GitHub Pages setup notes
- `DEPLOYMENT_NOTE.md` — quick GitHub upload instructions
- `.nojekyll` — prevents GitHub Pages from applying Jekyll processing

## GitHub Pages requirement

At the top level of the repository you should see:

- `index.html`
- `README.md`
- `supabase.sql`
- `ONLINE_SETUP.md`
- `DEPLOYMENT_NOTE.md`
- `.nojekyll`

If `index.html` is inside a folder, GitHub Pages may show a 404 or broken page.
