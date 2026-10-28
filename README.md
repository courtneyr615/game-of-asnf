# Deploy on Render

Start with **START HERE - Render.md**. The included `render.yaml` hosts the entire game on Render with persistent room storage.

# Game of Life / ASNF — Multiplayer with room codes

This package contains your board artwork, spinner, current 32 spaces with 27 quiz questions and 5 STOP event cards, patient names, bonus rules, and personal pop-up cards. It is prepared for hosting; it is not a deployed website.

## Play

The host opens the hosted game, enters a name, and chooses Create a room. Share the website address and the 8-character room code. Other players open the same address on their own devices and choose Join room. The host starts after everyone joins.

Two to four people can play; use four for all assigned routes. Join order assigns:

1. Bea Well — continues to the lodge.
2. Justin Case — finishes at the Park after Case Enrollment.
3. Will B. Better — continues to the lodge.
4. Anita Refill — finishes at the Lake after space 21.

Only the current player receives the landed instructions and action buttons. Every device shares positions, turn status, money, Life points, and the activity log. The eight-section spinner reads 1, 2, 3, 4, 1, 2, 3, 4. A spin earns 1–4 Life points and queues up to that many consecutive space cards. Every card must be completed in order within the same turn. STOP bonuses resume the remaining movement; returning to Start cancels it. Assigned detours and retirement end movement. Payday cards must be acknowledged. STOP failure choices and bonus success pop-ups are preserved: Eligibility $50, Case Enrollment $150, Signed Forms $250, Prescription Verified $250. Welcome Letter has no failure choice.

Keep the same browser and device to use Reconnect to saved player. Its private player token is saved in browser storage. Clearing storage or using a new device loses that player's access; this version has no account-based recovery. Use separate browser profiles when testing multiple people on one computer.

## Option A — One Node.js host

Install Node.js 20 or newer. From this folder run:

```sh
npm start
```

Open http://localhost:3000. No npm dependencies are required. For public hosting, deploy this folder as one Node.js web service using `npm start`. The host can set PORT. The health check is `/healthz`.

Use one server instance and persistent storage. Set DATA_FILE to a private persistent location such as `/data/rooms.json`. The default is `data/rooms.json`. That file contains game state, cards and private player tokens; do not put it in public, publish it, or share its contents. Back it up privately. Restarting the same server restores rooms from this file. Do not scale this file-based server to multiple instances.

## Option B — Keep the page on Netlify, run the server on Render

1. Deploy this folder as a Node web service on Render, with start command `npm start` and health check `/healthz`.
2. Choose a service with a persistent disk mounted at `/data`. Set DATA_FILE to `/data/rooms.json`. Render's free services do not support persistent disks; the file-based version needs a paid service with a disk for saved rooms.
3. Set PUBLIC_ORIGIN on the backend to the exact Netlify origin, such as `https://your-game.netlify.app`, with no trailing slash. Use the custom domain instead if players use that domain. This allows form actions proxied from that game page.
4. Copy `netlify.toml.example` to `netlify.toml`, replace YOUR-BACKEND with your backend hostname, and deploy through Netlify's repository/CLI workflow with publish directory `public`. Deploy configuration must include the API proxy rule.
5. Share the Netlify address with players. The frontend calls `/api/...`; Netlify forwards these requests to the backend. Player tokens stay in Authorization headers, not share links.

Keep both services on HTTPS. Do not expose private data files through Netlify. No CORS changes are needed with the same-origin proxy. If using direct browser-to-backend requests instead, additional CORS configuration is required and is not enabled here.

## Another option — Netlify Functions plus a database

Netlify Functions can run game requests without a continuously running Node server. This package would need a database adapter and function endpoints in place of the current server and local state file. Static HTML upload alone cannot synchronize rooms. Do not deploy this file-based Node server as a serverless function and expect rooms to persist.

## Tests

```sh
npm test
```

The tests cover room setup, private cards, separate turns, server-generated spins, bonus costs, success messages, duplicate request rejection and all assigned routes. Additional development checks used four isolated client sessions. A visual browser check and a four-device play test on the chosen hosting environment are still needed before a hosted event.

## Operational limits

This version is intended for small groups. It has no room deletion dashboard, host removal of players, account recovery, or reconnection from a different device. Rooms persist until an administrator removes their stored data. The server uses short polling rather than WebSockets. Only fictional training patients are included. Game bonuses are fictional payments and do not represent real patient fees or approval determinations.

## PATIENT SEARCH CHALLENGE

Random ordinary spaces can trigger a one-on-one quiz race. The active player selects one opponent. Only those two players receive the same multiple-choice question; the first correct server-received answer wins $500 once. Six supplied case-search questions are included. Wrong answers cost 1 Life point or $50 if none remain. After the challenger continues, the ordinary landing question resumes. See UPDATE - Patient Search Challenges.md.
