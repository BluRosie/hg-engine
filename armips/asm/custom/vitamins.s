.nds
.thumb

// Aurora Crystal specific change
// Removes 100 EV cap from vitamins
// Thanks MeroMero

.open "base/arm9.bin", 0x02000000

/* Individual Vitamin Checks */
/* HP */
.org 0x02090034
.byte 252

/* Attack */
.org 0x020900A0
.byte 252

/* Defense */
.org 0x0209010C
.byte 252

/* Speed */
.org 0x0209017A
.byte 252

/* Sp. Atk */
.org 0x020901E8
.byte 252

/* Sp. Def */
.org 0x02090254
.byte 252

/* General Checks */
.org 0x02090A96
.byte 252

.org 0x02090ABC
.byte 252

.org 0x02090AC0
.byte 252

.close