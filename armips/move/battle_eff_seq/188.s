.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// knock off script

.create "build/move/battle_eff_seq/0_188", 0

a030_188:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000036
    canapplyknockoffdamageboost _hasNoItem // jumps if can not apply knock off damage boost
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 15 // 1.5x boost
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000036
_hasNoItem:
    critcalc
    damagecalc
    endscript


.close
