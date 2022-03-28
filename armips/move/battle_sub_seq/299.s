.nds
.thumb

.include "armips/include/battlescriptcmd.s"

// protean message printing battle script

.create "build/move/battle_sub_seq/1_299", 0x0

a001_298:
    printmessage 1285, 0x28, BATTLER_WORK, BATTLER_ATTACKER, BATTLER_WORK, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close