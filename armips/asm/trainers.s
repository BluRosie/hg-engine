.nds
.thumb

// mikelan98 originally found this offset, for trainer name length limiter

.open "base/arm9.bin", 0x02000000

.org 0x0207342E //location of 08 22 B3 F7 1A FB 30 1C B2 F7 A3 FF 00 98 01 9A, in other words the trainer name length limiter

.byte 0x0C //replacing 0x08 with 0x0C, changing limit from 8 to 12

.close


.open "base/overlay/overlay_0012.bin", 0x022378C0

// expand space for trainer mon data sys_AllocMemory

.org 0x0223FB40

lsl r1, r1, #2 // r1 = 0x1B0, higher than the needed 0x180
lsl r5, r2, #1
bl 0x201AA8C // sys_AllocMemory
ldr r4, [sp]


// optimize trailer palette loading to allow for double battles as well to load trainer pal

.org 0x0225A1AC
ldr r1, =0x1722
and r0, r1
cmp r0, #0
bne 0x0225A1E8
b 0x0225A23A

.pool

.close
