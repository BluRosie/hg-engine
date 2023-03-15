.nds
.thumb

.open "base/arm9.bin", 0x02000000

// update the limiters

.org 0x02074270

.word NUM_OF_MONS+1


.org 0x02074404

.word NUM_OF_MONS+1
.word gIconPalTable

.close
