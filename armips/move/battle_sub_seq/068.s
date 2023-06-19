.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_068", 0

a001_068:
    checksubstitute BATTLER_DEFENDER, _00F4
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_TYPE_1, 0xC, _0108
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_TYPE_2, 0xC, _0108
    printattackmessage
    waitmessage
    ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_MOVE_STATE, 0x4, _00BC
    if IF_MASK, VAR_MOVE_STATUS, 0x10001, _00BC
    playanimation BATTLER_ATTACKER
    waitmessage
    changemondatabyvar VAR_OP_SETMASK, BATTLER_DEFENDER, 0x3B, VAR_ATTACKER
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x3B, 0x4
    printmessage 0x122, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _00E4
_00BC:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
    wait 0x1E
    printmessage 0x125, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
_00E4:
    waitmessage
    wait 0x1E
    endscript
_00F4:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript
_0108:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x8
    endscript

.close
