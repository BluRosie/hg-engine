.nds
.thumb

.include "armips/asm/offset.s"

.open "base/arm9.bin", 0x02000000

// update the limiters

.org 0x02074270

.word NUM_OF_MONS+1


.org 0x02074364
push {r3,lr}
bl PokeIconPalNumGet
ldr r1, =gIconPalTable
ldrb r0, [r1,r0]
pop {r3,pc}
.pool


.org 0x02074404

.word NUM_OF_MONS+1
.word gIconPalTable

.close
