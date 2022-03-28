.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_139", 0

a001_139:
    printattackmessage
    waitmessage
    wait 0xF
    printmessage 0x23E, 0xA, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    trymagiccoat2
    changevar VAR_OP_CLEARMASK, VAR_06, 0x4000
    endscript

.close
