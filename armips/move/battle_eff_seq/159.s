.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_159", 0

a030_159:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x70, _0028
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000000A
_0028:
    critcalc
    damagecalc
    endscript

.close
