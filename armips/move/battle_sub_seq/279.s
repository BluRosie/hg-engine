.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_279", 0

a001_279:
    changevar2 VAR_OP_GET_RESULT, VAR_ATTACKER, VAR_ATTACKER_TEMP2
    changevar2 VAR_OP_GET_RESULT, VAR_DEFENDER, VAR_DEFENDER_TEMP2
    endscript

.close
