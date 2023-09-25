.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_259", 0

a001_259:
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x1000
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x200
    endscript

.close
