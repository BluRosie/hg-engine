.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_106", 0

a001_106:
    moldbreakerabilitycheck 0x0, BATTLER_ADDL_EFFECT, ABILITY_OBLIVIOUS, _00E0
    if IF_MASK, VAR_MOVE_STATUS, 0x10001, _01B4
    tryattract _01B4
    gotosubscript 76
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _0078
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x5, _0098
    printmessage 0xA2, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _00C0
_0078:
    printmessage 0x2C3, 0x24, 0xFF, 0x15, 0x7, "NaN", "NaN", "NaN"
    goto _00C0
_0098:
    setstatus2effect BATTLER_xFF, 0xA
    waitmessage
    printmessage 0x47E, 0x2B, 0xFF, 0x15, 0x7, "NaN", "NaN", "NaN"
_00C0:
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_ACTIVE_BATTLER_STATUS, 0x4
    endscript
_00E0:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _014C
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x5, _018C
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x287, 0xB, 0x7, 0x7, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
    endscript
_014C:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _01D8
    printmessage 0x2D7, 0x35, 0x7, 0x7, 0xFF, 0x15, "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_018C:
    printmessage 0x47B, 0x26, 0x7, 0x7, 0x15, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_01B4:
    if IF_EQUAL, VAR_ADD_EFFECT_TYPE, 0x3, _01D8
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
_01D8:
    endscript

.close
