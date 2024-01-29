.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"
.include "armips/include/constants.s"

.create "build/move/battle_eff_seq/0_300", 0

// Psyblade
a030_300:
    ifterrainoverlayistype ELECTRIC_TERRAIN, IncreaseBasePower
    goto Continue
// If the user is on Electric Terrain, its base power is increased to 120.
IncreaseBasePower:
    changevar VAR_OP_ADD, VAR_ABILITY_TEMP, 40
Continue:
    critcalc
    damagecalc
    endscript

.close
