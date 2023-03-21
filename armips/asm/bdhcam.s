//Mikelan98, Trifindo: Dynamic Cameras (pokehacking.com/r/20110901)

.nds
.thumb

.include "armips/asm/offset.s"

.open "base/arm9.bin", 0x02000000

.notice  "FUN_GDMI: 0x" + toHex(FUN_GDMI, 8)
.notice  "FUN_RHDtaArc: 0x" + toHex(FUN_RHDtaArc, 8)
.notice  "FUN_ReadEntryDataArc: 0x" + toHex(FUN_ReadEntryDataArc, 8)


.org 0x02023174
    bl FUN_GDMI

.close

.open "base/overlay/overlay_0001.bin", 0x021E5900

.org 0x21FB04C
    .byte 0x00, 0x4B, 0x18, 0x47
    .word FUN_RHDtaArc

.org 0x21FB164
    .byte 0x00, 0x4B, 0x18, 0x47
    .word FUN_ReadEntryDataArc

.close