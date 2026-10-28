# One distinct patient per player

The server now enforces the fixed one-to-one assignment on joining, reconnecting and saved-room access:

- Player 1: patient Bea Well
- Player 2: patient Justin Case
- Player 3: patient Will B. Better
- Player 4: patient Anita Refill

Saved duplicated names are corrected to match the player slot without changing balances, progress, or the player token. DOB, ZIP and medication questions stay linked to the same player slot.

Each online device also has a persistent "You / Your patient" label. The turn display distinguishes that assignment from the other player whose turn the group is currently watching.

Upload engine.mjs, test.mjs, public/client.js, public/index.html and public/style.css, or the full package, then redeploy Render. Refresh every player device. Each person should join with their own player session on their own device; sharing one saved player session reconnects to that same player.
