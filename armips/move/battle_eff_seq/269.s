.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_269", 0

a030_269:
    abilitycheck 0x1, BATTLER_ATTACKER, ABILITY_RECKLESS, _0024
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xC
_0024:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000008A
    critcalc
    damagecalc
    endscript

.close
