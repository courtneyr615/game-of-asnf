# Put Game of Life / ASNF on Render

This is the complete multiplayer game. The same Render service serves the game page and shared room-code server. You do not need Netlify for this setup.

## 1. Create your accounts

Create a GitHub account at https://github.com/signup and a Render account at https://dashboard.render.com/register. You can use GitHub to sign in to Render.

## 2. Upload the game to GitHub

1. Download and unzip `Game of Life Render Ready.zip`.
2. On GitHub, create a new repository named `game-of-asnf`. A private repository is fine.
3. In that repository, choose **uploading an existing file** (or **Add file → Upload files**).
4. Open the extracted `Game of Life Multiplayer` folder. Upload its CONTENTS, including the `public` folder, to the repository root. Do not upload just the ZIP or put everything under another enclosing folder.
5. Commit the upload. At the top level of the repository you should see `render.yaml`, `package.json`, `server.mjs`, `engine.mjs`, `content.mjs`, `test.mjs`, and `public`.

## 3. Create the Render service

1. In Render, choose **New → Blueprint**.
2. Connect GitHub and select the `game-of-asnf` repository. Give Render access to that repository.
3. Use the `render.yaml` file in the repository root.
4. Review the service and disk charges shown by Render. This configuration uses a paid 0.5 CPU / 512 MB service and a 1 GB persistent disk; it does not use the free plan.
5. Create/deploy the Blueprint. Render runs the game tests, then starts the server.
6. Wait for the web service to show that it is live. Open the HTTPS address shown for the service. Use Render's actual returned address, not a guessed hostname.

## 4. Test with players

1. Open the game address, enter your name, and select **Create a room**.
2. Share that address and the room code with three other players.
3. Each person joins from their own device. Join order assigns Bea Well, Justin Case, Will B. Better, and Anita Refill.
4. After all four names appear, the host selects **Start game**.
5. Check that only the current player can spin, their card opens on their own device, and the other devices show the updated position and score.
6. Test a paid STOP bonus, its success pop-up, and **Continue playing**. Close/reopen a browser and use **Reconnect to saved player**.

## Important setup details

- Choose a **Web Service**, not a Static Site, if setting this up manually.
- Runtime: Node. Build command: `npm test`. Start command: `npm start`.
- Keep exactly one service instance.
- Health check: `/healthz`.
- Disk mount: `/var/data`; environment variable `DATA_FILE=/var/data/rooms.json`.
- `PUBLIC_ORIGIN` should be unset for this all-on-Render setup. The server automatically checks requests against its own public origin.
- The private room data file contains player session tokens. It must stay outside `public` and out of GitHub uploads.
- Rooms are saved on the disk and restored after a restart. Each player's reconnect token stays in their browser. Clearing browser storage loses access for that player.
- Players can join before the host starts. New players cannot join a game already in progress.
- The `netlify.toml.example` file is an unused example from the alternate hosting setup. Leave it unchanged; it is not needed by Render.

## What is ready and what remains

The room-code engine, four independent client sessions, server requests, and restart persistence have passed local automated checks. This package has not been uploaded or deployed into your account. A visual browser check and a four-device play test on the final Render address remain necessary before using it for an event.

Official references: https://render.com/docs/blueprint-spec and https://render.com/docs/disks
