.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// handle cursed body - disable without the disabling part

.create "build/move/battle_sub_seq/1_327", 0

a001_327:
    //if IF_MASK, VAR_MOVE_STATUS, 0x10001, _0048
    //trydisable _0048
    //gotosubscript 76
    printmessage 1339, 0xA, BATTLER_ATTACKER, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
//_0048:
//    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
//    endscript

.close
