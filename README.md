# Dragon Squadron SURFEX — Mobile v2

Mobile-only test package for GitHub/Vercel.

Changes in this build:
- Replaced the over-detailed ship crests with simplified round bird identity tokens.
- Fixed the Stations panel so it no longer traps the screen.
- Stations now open as a bottom sheet with a close button.
- Tapping Radar, Lookout, or 76mm closes the sheet and arms contact selection on the chart.
- Added an on-chart prompt such as “Select radar contact on the chart”.
- Once a contact is assigned, the panel closes and the game returns to the chart.
- Added protected Menu admin options: End / Restart Serial and Full Reset.
- Admin options require master PIN 1945.
- Uses a new local save key for cleaner local testing.

Upload the full unzipped contents to the repository root. Do not upload only index.html.
