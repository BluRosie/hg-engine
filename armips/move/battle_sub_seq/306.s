.nds
.thumb

.include "armips/include/battlescriptcmd.s"

// mummy message printing battle script

.create "build/move/battle_sub_seq/1_306", 0x0

a001_298:
    printmessage 1306, 0xB, BATTLER_WORK, BATTLER_x15, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close