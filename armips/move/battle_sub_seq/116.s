.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// break free of bind
// called from rapid spin script command, funnily enough

.create "build/move/battle_sub_seq/1_116", 0

a001_116:
    printmessage 0x1CB, 0x1F, 0x1, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
