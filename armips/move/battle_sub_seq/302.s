.nds
.thumb

.include "armips/include/battlescriptcmd.s"

// aura_break message printing battle script

.create "build/move/battle_sub_seq/1_302", 0x0

a001_298:
    printmessage 1294, 0xB, BATTLER_WORK, BATTLER_x15, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close