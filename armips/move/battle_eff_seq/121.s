.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_121", 0

a030_121:
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2C, VAR_ABILITY_TEMP
    changevar VAR_OP_MUL, VAR_ABILITY_TEMP, 0xA
    changevar VAR_OP_DIV, VAR_ABILITY_TEMP, 0x19
    critcalc
    damagecalc
    endscript

.close
