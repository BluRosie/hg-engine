.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Thief, Covet

.create "build/move/battle_eff_seq/0_105", 0

a030_105:
    iffirsthitofparentalbond SkipEffect
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x8100001F
SkipEffect:
    critcalc
    damagecalc
    endscript

.close
