.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_228", 0

a030_228:
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x0, CheckParentalBond
Continue:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000085
SkipEffect:
    critcalc
    damagecalc
    endscript

CheckParentalBond:
    iffirsthitofparentalbond SkipEffect
    goto Continue

.close
