.nds
.thumb

.include "armips/include/battlescriptcmd.s"

// fairy_aura message printing battle script

.create "build/move/move_seq/1_301", 0x0

a001_298:
    printmessage 1291, 0xB, BATTLER_WORK, BATTLER_x15, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close