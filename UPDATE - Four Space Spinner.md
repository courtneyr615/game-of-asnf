# Update the published Render game

The spinner now has eight equal sections: 1, 2, 3, 4, 1, 2, 3, 4. Each spin awards the displayed number of Life points and moves up to that many spaces, revealing every card along the way in order. The current player keeps the turn until all cards from that spin are complete. Payday effects are applied once per visited square. A paid STOP bonus resumes the remaining cards after its success pop-up. Returning to Start cancels remaining movement. The Park, Lake and lodge end the route as before.

## Publish this update

Upload these updated files to the matching paths in the existing `game-of-asnf` GitHub repository:

- engine.mjs
- test.mjs
- public/client.js
- public/index.html
- public/style.css

Commit the update. If automatic deployment is enabled, Render will deploy the new commit; otherwise choose Manual Deploy → Deploy latest commit in Render. Wait for deployment to finish, then have every player refresh their browser. Test a new room before the event.

Do not remove or replace your persistent disk or rooms data file. Existing saved games retain balances and positions. An old pending card without queued movement completes normally, and the next spin uses the new 1–4 rules.

These files are prepared locally; the published Render website has not been updated by this package alone.
