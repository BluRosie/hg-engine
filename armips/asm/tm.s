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

.open "base/overlay/overlay_0015.bin", 0x021F9380  ; correct base

// Don't show quantity for TMs
.org 0x021FF5B9
.if REUSABLE_TMS == 1
.byte 0xE0
.else
.byte 0xD3
.endif


//.org 0x021fe922
//lsl r0,r0,#0x3

.org 0x021FE926
    bl 0x23dd048
    nop
.close