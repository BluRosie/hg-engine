.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_298", 0

// Triple Axel
a030_298:
    // has accuracy check per hit
    setmultihit 0x3, 0xDD
    changevar VAR_OP_SET, VAR_SUCCESSIVE_HIT, 0x1
    //  Its base power will increase by 20 with each successive strike
    changevar VAR_OP_ADD, VAR_ABILITY_TEMP, 20
    critcalc
    damagecalc
    endscript

.close
