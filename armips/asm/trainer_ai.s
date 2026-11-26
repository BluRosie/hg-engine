.nds
.thumb

// credits to bubble for the previous version of this file
// included by armips/global.s

.open "base/overlay/overlay_0012.bin", 0x022378C0

// we rewrite the branch to TrainerAI_Main to branch to the beginning of the overlay space that we have.
.org 0x0225E43E
bl 0x0221BE20

.close
