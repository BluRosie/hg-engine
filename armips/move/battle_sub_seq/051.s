.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_051", 0

a001_051:
    changevar VAR_OP_SET, VAR_05, 0x4
    gotosubscript 37
    ifmonstat IF_NOTMASK, BATTLER_ADDL_EFFECT, MON_DATA_STATUS_2, 0x7, _004C
    printmessage 0x152, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_004C:
    endscript

.close
