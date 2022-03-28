.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_048", 0

a001_048:
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2B, VAR_09
    changevar VAR_OP_MUL, VAR_09, 0x5
    checkbattlersequal BATTLER_ATTACKER, BATTLER_OPPONENT, _0044
    changevar2 VAR_OP_ADD, VAR_MONEY, VAR_09
_0044:
    printmessage 0x332, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
