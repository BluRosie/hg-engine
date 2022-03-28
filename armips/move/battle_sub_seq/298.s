.nds
.thumb

.include "armips/include/battlescriptcmd.s"

// unnerve message printing battle script

.create "build/move/battle_sub_seq/1_298", 0x0

a001_298:
    printmessage 1282, 0xB, 0xFF, 0x15, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 30
    endscript

.close