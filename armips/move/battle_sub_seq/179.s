.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_179", 0

a001_179:
    printattackmessage
    waitmessage
    wait 0xF
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_73, 0x0, _0060
    printmessage 0x290, 0xB, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x49, 0x1
    endscript
_0060:
    printmessage 0x2CA, 0x25, 0x2, 0x2, 0x1, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
