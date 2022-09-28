.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_190", 0

a001_190:
    changemondatabyvalue VAR_OP_SET, BATTLER_xFF, 0x34, 0x0
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x35, 0x8000000
    printmessage 0x2CD, 0x29, 0xFF, 0x15, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_xFF, 0x0
    wait 0x1E
    endscript

.close
