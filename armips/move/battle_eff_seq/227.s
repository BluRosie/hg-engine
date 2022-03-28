.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_227", 0

a030_227:
    metalburstdamagecalc _001C
    changevar VAR_OP_SETMASK, VAR_06, 0x800
    endscript
_001C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
