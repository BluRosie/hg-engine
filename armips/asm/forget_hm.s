.nds
.thumb

// Allows HMs to be forgotten
// This also makes their quantity reduce, but the infinite TM change prevents this

.open "base/arm9.bin", 0x02000000

.org 0x02078034

.if REUSABLE_TMS == 1

.if DELETABLE_HMS == 1
.byte 0
.else
.byte 0x01
.endif

.else
.byte 0x01
.endif

.close
