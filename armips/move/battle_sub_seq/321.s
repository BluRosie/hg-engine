.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// harvest battle script.  based on recycle, berries are checked for in the c code that calls this.

HarvestMsg equ 1333

.create "build/move/battle_sub_seq/1_321", 0
    
a030_321:
    printmessage HarvestMsg, 0xF, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN" // try this out really quickly
    waitmessage
    wait 0x1E
    endscript

.close
