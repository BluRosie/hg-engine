.nds
.arm

.open "base/arm9.bin", 0x02000000

.org 0x02000300

patch_1:
    ldr r0, =0x0225F0A0
    ldr r1, [r0]
    ldr r2, =0xE0095D34
    cmp r1, r2
    moveq r1, #0x72
    streqb r1, [r0, #8]
    moveq r1, #0x8E
    streqb r1, [r0, #0xC4]
    bx lr

.pool

// end of MIi_UncompressBackward -- overlay 123 needs to be marked as compressed
.org 0x02000A18
    b patch_1

.close


.thumb

.open "base/overlay/overlay_0001.bin", 0x021E5900

.org 0x021E5B76
    b 0x021E5B8E

.close

.open "base/overarm9.bin", 0

.equ COMPRESSED, 0x01000000

.org 123 * 0x20 // make sure compression routine is still called for 123 so that the ap patch works

/* overlay 123 */ .word 123, 0x0225F020, filesize("base/overlay/overlay_0123.bin"), 0x00000020, 0x02260BDC, 0x02260BF4, 123, COMPRESSED | filesize("base/overlay/overlay_0123.bin")

.close
