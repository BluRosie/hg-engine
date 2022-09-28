.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_220", 0

a001_220:
    if IF_EQUAL, VAR_FLING_SUBSCRIPT, 0x0, _0050
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x0, _0050
    checksubstitute BATTLER_DEFENDER, _0050
    changevar2 VAR_OP_SET, VAR_HP_TEMP, VAR_FLING_TEMP
    gotosubscript2 51
_0050:
    endscript

.close
