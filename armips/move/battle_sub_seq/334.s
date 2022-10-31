.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_334", 0

ZygardePresenceMessage equ 1360
ZygardeTransformedMessage equ 1361
//TODO at some point make a custom animation for this transformation

ZygardePowerConstructFormChange:
    ifmonstat IF_NOTMASK, BATTLER_xFF, MON_DATA_STATUS_2, 0x1000000, _0044
    setstatus2effect BATTLER_xFF, 0xF
    waitmessage
    cmd_C4 BATTLER_xFF
    waitmessage
    setstatus2effect BATTLER_xFF, 0x10
    waitmessage
_0044:
    printmessage ZygardePresenceMessage, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x4E
    playse BATTLER_xFF, 0x7BC
    mosaic BATTLER_xFF, 0x8, 0x1
    waitmessage
    changeform BATTLER_xFF
    playse BATTLER_xFF, 0x7C0
    mosaic BATTLER_xFF, 0x0, 0x1
    waitmessage
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    waitmessage
    printmessage ZygardeTransformedMessage, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x4E
    ifmonstat IF_NOTMASK, BATTLER_xFF, MON_DATA_STATUS_2, 0x1000000, _00EC
    setstatus2effect BATTLER_xFF, 0xF
    waitmessage
    swaptosubstitutesprite BATTLER_xFF
    waitmessage
    setstatus2effect BATTLER_xFF, 0x10
    waitmessage
_00EC:
    endscript

.close
