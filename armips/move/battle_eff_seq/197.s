.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Secret Power

.create "build/move/battle_eff_seq/0_197", 0

a030_197:
    iffirsthitofparentalbond SkipEffect
    critcalc
    damagecalc
    dosecretpower
    endscript
SkipEffect:
    critcalc
    damagecalc
    endscript

.close
