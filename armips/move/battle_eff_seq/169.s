.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_169", 0

a030_169:
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0xD8, _0028
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14
_0028:
    critcalc
    damagecalc
    endscript

.close
