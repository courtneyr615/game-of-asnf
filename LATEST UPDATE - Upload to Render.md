# Latest update — October 27, 2026

This is the complete current multiplayer package, including:

- 32 spaces: 27 multiple-choice / yes-no questions and 5 STOP event cards (no questions on STOPs).
- Eight spinner sectors: 1, 2, 3, 4 repeated twice. Every intermediate space is completed in order.
- Correct-answer rewards and incorrect-answer penalties.
- Patient names prefixed with "patient", each with the supplied date of birth.
- Latest wording for spaces 4, 7, 9 and 10 and the updated first two questions.
- Original STOP failures, $50 / $150 / $250 / $250 bonus choices, and personalized success pop-ups. Welcome Letter has no failure option.
- Six random one-on-one PATIENT SEARCH CHALLENGE questions. First correct server-received answer wins $500 once. Challenge 3 option A is Otezla; Repatha remains correct. Challenge 6 option A is "They held commercial insurance"; the income/FPL answer remains correct.
- Player-facing rules do not reveal failure outcomes or assigned destinations.
- Improved waiting-screen text and host Start game button.

## Update the existing deployment

1. Unzip the download and open its Game of Life Multiplayer folder.
2. Upload the contents to the root of the existing GitHub repository. Preserve the public folder and its files. Do not upload only the ZIP.
3. Commit the update. Render should redeploy automatically if auto-deploy is enabled; otherwise choose Manual Deploy → Deploy latest commit.
4. Wait for the deployment to be live, then have all players refresh. Use a new room for the first test of this version.

Keep your existing persistent disk and DATA_FILE setting. Do not delete saved room data. There is no need to create a new Render service. Existing 40-space rooms are mapped to the 32-space route when accessed; balances and patient assignments remain.

This download does not automatically update the published website.
