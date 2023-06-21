.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_231", 0

a030_231:
    getmoveparameter 0x2
    changevar2 VAR_OP_SET, VAR_ABILITY_TEMP, VAR_CALCULATION_WORK
    if IF_EQUAL, VAR_ASSURANCE_DAMAGE_AGAINST_DEFENDER, 0x0, _004C
    changevar2 VAR_OP_SET, VAR_ABILITY_TEMP, VAR_CALCULATION_WORK
    changevar VAR_OP_MUL, VAR_ABILITY_TEMP, 0x2
_004C:
    critcalc
    damagecalc
    endscript

.close
