.nds
.thumb

.open "base/arm9.bin", 0x2000000

// need to replace pbr/pokegra.narc with a004 and have it be interpreted correctly
.org 0x02009D2A
    nop
    nop

.close
