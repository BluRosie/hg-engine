.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_303", 0

// Fillet Away
a030_303:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, ADD_STATUS_FILLET_AWAY | ADD_STATUS_ATTACKER
    endscript

.close