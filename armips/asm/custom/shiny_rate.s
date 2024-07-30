.nds
.thumb

// Aurora Crystal specific change
// Edits shiny rate from 8 in 65536 to 128 in 65536 (aka 1 in 512)

.open "base/arm9.bin", 0x02000000

.org 0x02070080
.byte 128

.close