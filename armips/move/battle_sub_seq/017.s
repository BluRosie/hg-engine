.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_017", 0

a001_017:
    if IF_MASK, VAR_SERVER_STATUS1, 0x10000, _0030
    printmessage 0x2E, 0x6, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_0030:
    endscript

.close
