.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_003", 0

a001_003:
    trynaturalcure BATTLER_PLAYER_LEFT, _0020
    changevartomonvalue VAR_OP_SET, BATTLER_PLAYER_LEFT, 0x34, 0x0
_0020:
    trynaturalcure BATTLER_PLAYER_RIGHT, _0040
    changevartomonvalue VAR_OP_SET, BATTLER_PLAYER_RIGHT, 0x34, 0x0
_0040:
    playse BATTLER_ATTACKER, 0x6FF
    if IF_MASK, VAR_BATTLE_TYPE, 0x80, _0108
    if IF_MASK, VAR_BATTLE_TYPE, 0x4, _0134
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_RUN_AWAY, _00B0
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x3F, _00CC
    printmessage 0x30D, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _00E0
_00B0:
    printmessage 0x30F, 0xB, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    goto _00E0
_00CC:
    printmessage 0x30E, 0xF, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
_00E0:
    waitmessage
    wait 0x1E
    fadeout
    waitmessage
    changevar VAR_OP_SETMASK, VAR_BATTLE_RESULT, 0x5
    endscript
_0108:
    giveupmessage
    waitmessage
    wait 0x1E
    fadeout
    waitmessage
    changevar VAR_OP_CLEARMASK, VAR_BATTLE_RESULT, 0x40
    endscript
_0134:
    runawaymessage
    waitmessage
    wait 0x1E
    fadeout
    waitmessage
    changevar VAR_OP_CLEARMASK, VAR_BATTLE_RESULT, 0x40
    endscript

.close
