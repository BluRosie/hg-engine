.nds
.thumb

.include "armips/include/battlescriptcmd.s"

// innards out message printing battle script

.create "build/move/battle_sub_seq/1_305", 0x0

a001_298:
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    gotosubscript 2
    printmessage 1303, 0xB, BATTLER_WORK, BATTLER_x15, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close