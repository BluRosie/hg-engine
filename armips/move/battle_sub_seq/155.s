.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_155", 0

a001_155:
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x0, _0054
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_DEFENDER, 0x34, 0x7
    printmessage 0x12E, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_DEFENDER, 0x0
    wait 0x1E
_0054:
    endscript

.close
