.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_102", 0

a001_102:
    printmessage 0x1B7, 0x11, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    ifmonstat IF_MASK, BATTLER_xFF, MON_DATA_MOVE_STATE, 0x20, _0040
    gotosubscript 2
_0040:
    endscript

.close
