.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_297", 0

// Population Bomb
a030_297:
    // has accuracy check per hit
    setmultihit 0xA, 0xDD
    changevar VAR_OP_SET, VAR_SUCCESSIVE_HIT, 0x1
    critcalc
    damagecalc
    endscript

.close
