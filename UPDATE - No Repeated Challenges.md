# No repeated patient challenges

Each game room now has one shuffled six-question deck shared by all players. A question is removed from the deck when the opponent is selected. It cannot repeat later for another pair. The deck and used-question history are saved with the room, survive server restarts, and never refill during that game. Once all six are used, ordinary play continues with no further patient challenge events.

Upload engine.mjs, test.mjs and public/client.js (or the full current package) to GitHub and redeploy Render. Refresh every player's browser. Start a new room for a clean no-repeat game: older versions did not save the completed question history, so earlier questions in an existing room cannot all be reconstructed. Any currently displayed question is excluded when initializing a legacy room's deck.
