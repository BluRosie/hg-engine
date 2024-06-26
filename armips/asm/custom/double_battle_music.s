.nds
.thumb

// Aurora Crystal specific change
// Allows special music to play in double battles (at the cost of some other battle transitions)

.open "base/arm9.bin", 0x02000000

.org 0x02051779
.byte 0xE0

.close