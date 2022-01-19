.nds
.thumb

.include "armips/include/battlescriptcmd.s"

// teravolt message printing battle script

.create "build/move/move_seq/1_304", 0x0

a001_298:
    printmessage 1300, 0xB, BATTLER_WORK, BATTLER_x15, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close