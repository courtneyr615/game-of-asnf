# One or two failed checks per patient

Each patient receives a random private plan with one or two different failures among Eligibility Screening, Case Enrollment, Signed Forms and Prescription Verified. Other STOP checks pass without a bonus charge. Welcome Letter never fails.

A failed check requires its existing paid bonus or return-to-Start decision. A failure is recorded when encountered and will not repeat after returning to Start. Plans and seen-failure history are stored with the game and restored after a restart. The plan is not sent to multiplayer clients or shown in player rules.

Upload engine.mjs, test.mjs and the public folder to the existing GitHub repository; redeploy Render, then refresh all devices. Start a new room for a clean game with the guaranteed one-or-two-failure distribution. Older versions did not track prior failed checks, so past failures in an existing room cannot all be reconstructed.
