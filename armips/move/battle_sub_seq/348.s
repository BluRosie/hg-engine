.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"
.include "armips/include/constants.s"

// set move fail

.create "build/move/battle_sub_seq/1_348", 0

a001_348:
    printattackmessage
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    printmessage 796, TAG_NONE, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // But it failed!
    waitmessage
    wait 0x1E
    endscript

.close
