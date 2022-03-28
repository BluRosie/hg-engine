.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_035", 0

a001_035:
    gotosubscript 76
    setsomeflag BATTLER_ATTACKER
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, 0x200
    changevar VAR_OP_SET, VAR_DAMAGE_BACKUP, 0x0
    endscript

.close
