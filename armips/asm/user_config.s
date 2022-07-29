.nds
.thumb

// included by armips/global.s

.open "base/arm9.bin", 0x02000000

.if BATTLE_MODE_FORCE_SET

.org 0x0202AD90

getSetMode:
    mov r0, #1
    bx lr


.org 0x0202AD98 // location of battle mon switching rule set routine - this makes it so player can not change selection from "set"

battleStyleSelectionCallback:
    ldrh r2, [r0]
    mov r1, #0x40
    orr r1, r2
    strh r1, [r0]
    bx lr

.endif

.close
