.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_330", 0

a001_262:
    ifmonstat IF_NOTMASK, BATTLER_xFF, MON_DATA_STATUS_2, 0x1000000, _0044
    setstatus2effect BATTLER_xFF, 0xF
    waitmessage
    cmd_C4 BATTLER_xFF
    waitmessage
    setstatus2effect BATTLER_xFF, 0x10
    waitmessage
_0044:
    playse BATTLER_xFF, 0x7BC
    mosaic BATTLER_xFF, 0x8, 0x1
    waitmessage
    changeform BATTLER_xFF

    hpgaugeslidein BATTLER_xFF

    playse BATTLER_xFF, 0x7C0
    mosaic BATTLER_xFF, 0x0, 0x1
    waitmessage
    printmessage 1348, TAG_NICK, BATTLER_WORK, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    ifmonstat IF_NOTMASK, BATTLER_xFF, MON_DATA_STATUS_2, 0x1000000, _00EC
    setstatus2effect BATTLER_xFF, 0xF
    waitmessage
    cmd_D6 BATTLER_xFF
    waitmessage
    setstatus2effect BATTLER_xFF, 0x10
    waitmessage
_00EC:
    endscript

.close
