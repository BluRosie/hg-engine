.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_164", 0

// Hail

a030_164:
    printattackmessage
    waitmessage
    wait 0x1E
    gotosubscript 360
    endscript

.close
