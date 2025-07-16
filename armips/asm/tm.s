.nds
.thumb

.open "base/arm9.bin", 0x02000000

// Stop TM quantity dropping on use
.org 0x020825A7

.if REUSABLE_TMS == 1
.byte 0xE0
.else
.byte 0xD1
.endif

.close

.open "base/overlay/overlay_0015.bin", 0x021F9380

// Don't show quantity for TMs
.org 0x021FF5B9
.if REUSABLE_TMS == 1
.byte 0xE0
.else
.byte 0xD3
.endif

// TODO zebben this is not fine and it breaks the Key Item register icons in the UI
// these should be safe but I don't yet know exactly what they are for
//   both of these were hardcoded to 0x10 which was previously unused downstream.
//   set to 0x25 now to match new function param
.org 0x021FF626
mov r2, #0x5F
.org 0x021FF608
mov r2, #0x25

// replaces add r4,r2,#0x0
// 0x10 is the only val vanilla passes here so we can hardcode it
.org 0x021FE9B8
mov r4, #0x10

// replaces mov r1,#0x25
// 0x25 is hardcoded here in vanilla but we are now passing in r2
//   so we can load custom sprites
.org 0x021FE99A
mov r1, r2


.close