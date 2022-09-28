.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_130", 0

a001_130:
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x0, _0054
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_DEFENDER, 0x34, 0x40
    printmessage 0x88, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_DEFENDER, 0x0
    wait 0x1E
_0054:
    endscript

.close
