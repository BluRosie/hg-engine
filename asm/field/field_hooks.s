//Mikelan98, Trifindo: Dynamic Cameras (pokehacking.com/r/20110901)

.include "include/config.h"

.text
.align 2
.thumb

.include "offset_def.s"

//todo yeah I get the feeling that what happened here is I forgot I wasn't using armips...
.global bdhcam_routine
bdhcam_routine:
    .if BDHCAM_IMPLEMENTED == 1
        .incbin "asm/field/ipke_cam.bin", 0, 0x50
        bl 0x02022f84 //0x50
        .incbin "asm/field/ipke_cam.bin", 0x54, 0x24E
        blx 0x020f2998 //0x2A2
        .incbin "asm/field/ipke_cam.bin", 0x2A6, 0x1E
        blx 0x020f2948 //0x2C4
        .incbin "asm/field/ipke_cam.bin", 0x2C8, 0x12
        blx 0x020f2948 //0x2DA
        .incbin "asm/field/ipke_cam.bin", 0x2DE, 0x88
        blx 0x020f2998 //0x362
        .incbin "asm/field/ipke_cam.bin", 0x366, 0x1E
        blx 0x020f2948 //0x384
        .incbin "asm/field/ipke_cam.bin", 0x388, 0x12
        blx 0x020f2948 //0x39A
        .incbin "asm/field/ipke_cam.bin", 0x39E, 0x114
        blx 0x020f2998 //0x4B2
        .incbin "asm/field/ipke_cam.bin", 0x4B6, 0x1E6
        blx 0x020d47ec //0x69C
        .incbin "asm/field/ipke_cam.bin", 0x6A0, 0x6
        bl 0x020078d8 //0x6A6
        .incbin "asm/field/ipke_cam.bin", 0x6AA, 0x6
        bl 0x020078d8 //0x6B0
        .incbin "asm/field/ipke_cam.bin", 0x6B4, 0x6
        bl 0x020078d8 //0x6BA
        .incbin "asm/field/ipke_cam.bin", 0x6BE, 0x8
        bl 0x020078d8 //0x6C6
        .incbin "asm/field/ipke_cam.bin", 0x6CA, 0x8
        bl 0x020078d8 //0x6D2
        .incbin "asm/field/ipke_cam.bin", 0x6D6, 0x8
        bl 0x020078d8 //0x6DE
        .incbin "asm/field/ipke_cam.bin", 0x6E2, 0x8
        bl 0x020078d8 //0x6EA
        .incbin "asm/field/ipke_cam.bin", 0x6EE
    .endif
