.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_075", 0

a030_075:
    abilitycheck 0x1, BATTLER_ATTACKER, ABILITY_RECKLESS, _0024
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xC
_0024:
    changevar VAR_OP_ADD, VAR_CRIT_CHANCE, 0x1
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x1000
    critcalc
    damagecalc
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x80000008
    endscript

.close