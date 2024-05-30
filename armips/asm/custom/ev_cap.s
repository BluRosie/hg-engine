.nds
.thumb

// Aurora Crystal specific change
// Changes the EV cap for each stat to 252 like newer gens
// Thanks MeroMero

.open "base/arm9.bin", 0x02000000

.org 0x0204B948
.byte 252

.org 0x0204B94C
.byte 252

.close

.open "base/overlay/overlay_0012.bin", 0x022378C0

.org 0x0224655C
.byte 252

.org 0x02246560
.byte 252

.close
