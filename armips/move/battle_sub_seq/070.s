.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_070", 0

a001_070:
    if IF_MASK, VAR_10, 0x10001, _0048
    trydisable _0048
    gotosubscript 76
    printmessage 0x16E, 0xA, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0048:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
