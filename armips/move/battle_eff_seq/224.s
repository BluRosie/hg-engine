.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Bug Bite, Pluck

.create "build/move/battle_eff_seq/0_224", 0

a030_224:
    iffirsthitofparentalbond SkipEffect
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000087
SkipEffect:
    critcalc
    damagecalc
    endscript

.close
