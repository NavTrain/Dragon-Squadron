# Dragon Squadron SURFEX – Mobile v6

Mobile-first stabilisation build.

Changes from v5:
- Rebuilt the five ship identity tokens as separate PNG assets with simple circular bird tokens, not cropped RN crests.
- Removed the hidden top submit control from the mobile game screen.
- Orders panel is now a smaller compact bottom sheet so the chart remains visible while adjusting movement.
- Lookout and 76mm tasking now show distinct map markers, separate from radar plotter markers.
- Removed native browser alert/confirm/prompt dialogues from core gameplay and replaced them with in-game styled modal panels.
- Turn submission is blocked until all selected player slots are claimed.
- Turn timer only starts once the serial is fully manned and a player submits orders.
- New Supabase row ID: main_mobile_v6.

Upload all files in this folder to the GitHub/Vercel project root.
