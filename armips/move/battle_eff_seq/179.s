.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_179", 0

a030_179:
    trywish _000C
    endscript
_000C:
    changevar VAR_OP_SET, VAR_10, 0x40
    endscript

.close
