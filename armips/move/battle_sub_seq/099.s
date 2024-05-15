.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_099", 0

// Hazards check

a001_099:
    abilitycheck 0x0, BATTLER_REPLACE, ABILITY_MAGIC_GUARD, _01A8
    if IF_MASK, VAR_FIELD_EFFECT, FIELD_STATUS_GRAVITY, _0098
    checkitemeffect 0x0, BATTLER_REPLACE, 0x6A, _0098
    abilitycheck 0x0, BATTLER_REPLACE, ABILITY_LEVITATE, _0158
    ifmonstat IF_EQUAL, BATTLER_REPLACE, MON_DATA_TYPE_1, 0x2, _0158
    ifmonstat IF_EQUAL, BATTLER_REPLACE, MON_DATA_TYPE_2, 0x2, _0158
    ifmonstat IF_MASK, BATTLER_REPLACE, MON_DATA_MOVE_STATE, 0x8000000, _0158
_0098:
    checktoxicspikes BATTLER_REPLACE, _0108
    if IF_EQUAL, VAR_CALCULATION_WORK, 0x2, _0100
    if IF_EQUAL, VAR_CALCULATION_WORK, 0x1, _00F0
    printmessage 0x429, 0x1, 0x6, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    goto _0108
_00F0:
    gotosubscript 22
    goto _0108
_0100:
    gotosubscript 47
_0108:
    checkspikes BATTLER_REPLACE, _0158
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_SWITCHED_BATTLER
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    gotosubscript 2
    printmessage 0x1AD, 0x2, 0x6, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_0158:
    checkstealthrock BATTLER_REPLACE, _01A8
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_SWITCHED_BATTLER
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    gotosubscript 2
    printmessage 0x437, 0x2, 0x6, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_01A8:
    endscript

.close
