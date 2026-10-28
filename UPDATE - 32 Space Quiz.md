# 32-space quiz update

The board now has 32 spaces. Four former spaces were removed between STOPs 1–2 (former spaces 6, 7, 8, 10), and four between STOPs 3–4 (former spaces 25, 26, 28, 30). Essential information was folded into the remaining lessons. The STOPs are now 5, 10, 20, 25, 32. Player 2 finishes after space 10 and Player 4 after space 21. Players 1 and 3 finish at space 32.

Every space has a multiple-choice or yes/no question. Each player also answers the Start question. Correct answers earn 1 Life point. Incorrect answers lose 1 Life point; with no Life points available, the game deducts $50 instead. Wrong answers show an explanation and can be retried. A correct answer unlocks the existing completion/effect choices. Paid STOP bonuses and personalized success messages remain.

A 1–4 spin awards its displayed Life points and reveals every intermediate question in order. No question is skipped. Returning to Start cancels remaining movement, and the assigned detours and lodge end movement.

Update these files in the existing GitHub repository, then wait for Render to deploy the commit (or manually deploy the latest commit):

- content.mjs
- engine.mjs
- server.mjs
- test.mjs
- public/client.js
- public/index.html
- public/style.css

Every player should refresh after deployment. Existing 40-space saved rooms are mapped to the corresponding 32-space positions on their next request, keeping money, Life points and patient assignments. Queued movement from an old room is cleared so the current question is completed first. Keep the existing persistent disk.

The one-on-one player challenge remains a separate game effect. A first-correct-answer challenge with a custom question is not included in this update; the custom question and answer have not been supplied yet.
