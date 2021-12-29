.nds
.arm

.open "base/arm9.bin", 0x02000000

// patch out arm9 decompression by feeding MIi_UncompressBackward a 0 instead of the compressed size so that nothing happens

.org 0x02000BB4

.word 0

.pool

.close
