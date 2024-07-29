.nds
.thumb

// Aurora Crystal specific change
// Sets Hidden Power to a permanent 60 BP

.open "base/overlay/overlay_0012.bin", 0x022378C0

// Hidden Power calculation to replace
.org 0x022424DC

// Replace "1E 30" with "3C 20", changing +30 to =60
.halfword 0x203C

.close
