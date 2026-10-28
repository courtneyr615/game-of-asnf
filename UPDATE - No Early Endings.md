# All patients continue to the cabin lodge

Players 2 and 4 no longer finish at the Park or Lake. Every player continues through the same 32-space route to the cabin lodge. The STOP event cards still offer their original paid-bonus-to-pass or return-to-Start choices. Spins still reveal all intermediate spaces in order.

Update engine.mjs, test.mjs, public/client.js, public/index.html and public/style.css in the existing repository, then let Render deploy. Keep the persistent disk. Existing saved Park/Lake finishers are reopened at their current positions on the next server request; balances and points remain. Players who already finished at the lodge stay finished. Have every device refresh after deployment.
