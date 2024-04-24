.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_115", 0

// Sandstorm

a030_115:
    printattackmessage
    waitmessage
    wait 0x1E
    gotosubscript 363
    endscript

.close
