.nds
.thumb

.open "base/arm9.bin", 0x02000000

// Stop TM quantity dropping on use
.org 0x020825A7
.byte 0xE0

.close

.open "base/overlay/overlay_0015.bin", 0x022012F8

// Dont show quantity for TMs
.org 0x02207531
.byte 0xE0

.close