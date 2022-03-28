.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_124", 0

a001_124:
    printattackmessage
    waitmessage
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_STOCKPILE_COUNT, 0x3, _0138
    seteffectprimary BATTLER_ATTACKER
    waitmessage
    changevar VAR_OP_SETMASK, VAR_06, 0x4000
    changevartomonvalue VAR_OP_ADD, BATTLER_ATTACKER, 0x45, 0x1
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x45, VAR_22
    printmessage 0x13D, 0x11, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_60, 0x80
    changevar VAR_OP_SET, VAR_34, 0x10
    gotosubscript 12
    if IF_MASK, VAR_06, 0x20000, _00D4
    changevartomonvalue VAR_OP_ADD, BATTLER_ATTACKER, 0x46, 0x1
_00D4:
    changevar VAR_OP_SET, VAR_34, 0x13
    gotosubscript 12
    if IF_MASK, VAR_06, 0x20000, _0114
    changevartomonvalue VAR_OP_ADD, BATTLER_ATTACKER, 0x47, 0x1
_0114:
    changevar VAR_OP_CLEARMASK, VAR_60, 0x2
    changevar VAR_OP_CLEARMASK, VAR_60, 0x80
    endscript
_0138:
    wait 0x1E
    printmessage 0x140, 0x11, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript

.close
