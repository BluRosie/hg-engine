.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_137", 0

// Sunny Day

a030_137:
    printattackmessage
    waitmessage
    wait 0x1E
    gotosubscript 361
    endscript

.close
