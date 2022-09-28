.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_289", 0

a001_289:
    setstatusicon BATTLER_ATTACKER, 0x0
    wait 0x1E
    changemondatabyvalue VAR_OP_SET, BATTLER_ATTACKER, 0x34, 0x0
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, 0x35, 0x7
    jumptosubseq 267

.close
