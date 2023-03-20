//Mikelan98, Trifindo: Dynamic Cameras (pokehacking.com/r/20110901)

.nds
.thumb

.open "base/arm9.bin", 0x02000000

.org 0x02023174
    .byte 0xB6, 0xF3, 0x2E, 0xFA

.close

.open "base/overlay/overlay_0001.bin", 0x021E5900

bdhcam_routine equ 0x023D0074

.org 0x21FB04C
    .byte 0x00, 0x4B, 0x18, 0x47
    .word (bdhcam_routine + 0x691)
    .notice  "Message"

.org 0x21FB164
    .byte 0x00, 0x4B, 0x18, 0x47
    .word (bdhcam_routine + 0x651)

.close