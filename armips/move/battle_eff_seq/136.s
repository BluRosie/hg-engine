.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_136", 0

// Rain Dance

a030_136:
    printattackmessage
    waitmessage
    wait 0x1E
    gotosubscript 362
    endscript

.close
