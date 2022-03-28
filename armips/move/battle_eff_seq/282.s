.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_282", 0

a030_282:
    changevar VAR_OP_SET, VAR_WAS_MOVE_CRITICAL, 0x2
    damagecalc
    endscript
.close