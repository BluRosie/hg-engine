.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_156", 0

// Gravity Start

a001_156:
    printmessage 0x3E5, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, FIELD_CONDITION_GRAVITY_INIT
    changevar VAR_OP_SET, VAR_CLIENT_NO_AGI, 0x0
_0038:
    orderbattlersbyspeed 0x14
    ifmonstat IF_EQUAL, BATTLER_xFF, MON_DATA_HP, 0x0, _0158
    ifmonstat IF_NOTEQUAL, BATTLER_xFF, MON_DATA_79, 0x0, _0108
    ifmonstat IF_MASK, BATTLER_xFF, MON_DATA_MOVE_STATE, 0x40, _0124
    ifmonstat IF_MASK, BATTLER_xFF, MON_DATA_MOVE_STATE, 0x200000, _0158
    ifmonstat IF_MASK, BATTLER_xFF, MON_DATA_MOVE_STATE, 0x400, _0158
    ifmonstat IF_EQUAL, BATTLER_xFF, MON_DATA_ABILITY, 0x1A, _013C
    ifmonstat IF_EQUAL, BATTLER_xFF, MON_DATA_TYPE_1, 0x2, _013C
    ifmonstat IF_EQUAL, BATTLER_xFF, MON_DATA_TYPE_2, 0x2, _013C
    goto _0158
_0108:
    changemondatabyvalue VAR_OP_SET, BATTLER_xFF, 0x4F, 0x0
    goto _013C
_0124:
    clearsomeflag BATTLER_xFF
    togglevanish BATTLER_xFF, 0x0
    waitmessage
_013C:
    printmessage 0x3E6, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_0158:
    changevar VAR_OP_ADD, VAR_CLIENT_NO_AGI, 0x1
    jumpifvarisvalidbattler 0x27, _0038
    endscript

.close
