# Dragon Squadron SURFEX — Online Setup

This package is the first online-ready version. It can still run locally, but if you add Supabase details it will share the game state between devices.

## 1. Create Supabase project

Create a new Supabase project.

Open the SQL Editor and run `supabase.sql` from this folder.

## 2. Copy Supabase details

In Supabase, open Project Settings > API.

Copy:

- Project URL
- anon/public key

## 3. Add details to the app

Open `index.html` in a text editor and find:

```js
const SUPABASE_URL='';
const SUPABASE_ANON_KEY='';
```

Paste your details between the quotes.

Do not paste the service-role key. Use only the anon/public key.

## 4. Test locally

Open `index.html` in three browser windows, or on three devices after deployment.

Player PINs are set on first entry to a new scenario.

## 5. Deploy

Upload this folder to GitHub and import it into Vercel, or deploy the folder as a static site.

The game is still a static front end; Supabase holds the shared state.

## Current limitation

This first online version uses a single shared state row in Supabase. It is good enough for testing with friends, but it is not yet hardened against two players pressing the final submit at exactly the same second. Later we can move turn resolution into a Supabase Edge Function for a stronger lock.


Configured version note:
This package already includes the Supabase URL and publishable key supplied in chat. Do not paste the secret key into the app.
