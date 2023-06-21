.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_330", 0

illusionSubscript:
    // set up animation
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, MOVE_TRANSFORM // set temporary move to be 470, which is the move the setstatus2effect will treat as "mega"

    ifmonstat IF_NOTMASK, BATTLER_xFF, MON_DATA_STATUS_2, 0x1000000, _0044

    // set appearance
    setstatus2effect BATTLER_xFF, 0xF
    waitmessage
    cmd_C4 BATTLER_xFF
    waitmessage
    setstatus2effect BATTLER_xFF, 0x10
    waitmessage
    // clear doubles flag?
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_xFF, MON_DATA_STATUS_2, 0x1000000

//    playse BATTLER_xFF, 0x7BC
//    mosaic BATTLER_xFF, 0x8, 0x1
//    waitmessage

    playanimation2 BATTLER_xFF, BATTLER_x15, BATTLER_xFF

    wait 15
    changeform BATTLER_xFF
    hpgaugeslidein BATTLER_xFF

//// change animation
//    playse BATTLER_xFF, 0x7C0
//    mosaic BATTLER_xFF, 0x0, 0x1

    // change form
    waitmessage
    printmessage 1348, TAG_NICK, BATTLER_WORK, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    // restore doubles flag
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_xFF, MON_DATA_STATUS_2, 0x1000000
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x0
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x4000
    ifmonstat IF_NOTMASK, BATTLER_xFF, MON_DATA_STATUS_2, 0x1000000, _00EC
    setstatus2effect BATTLER_xFF, 0xF
    waitmessage
    swaptosubstitutesprite BATTLER_xFF
    waitmessage
    setstatus2effect BATTLER_xFF, 0x10
    waitmessage
    endscript

_0044:
//    playse BATTLER_xFF, 0x7BC
//    mosaic BATTLER_xFF, 0x8, 0x1
//    waitmessage


    // queue up transform animation
    playanimation2 BATTLER_xFF, BATTLER_x15, BATTLER_xFF

    wait 15
    changeform BATTLER_xFF
    hpgaugeslidein BATTLER_xFF

//// change animation
//    playse BATTLER_xFF, 0x7C0
//    mosaic BATTLER_xFF, 0x0, 0x1
    
    
    waitmessage
    printmessage 1348, TAG_NICK, BATTLER_WORK, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
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
