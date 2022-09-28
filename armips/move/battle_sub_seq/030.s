.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_030", 0

a001_030:
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, 0x34, 0x20
    printmessage 0x75, 0xA, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_ATTACKER, 0x0
    wait 0x1E
    endscript

.close
