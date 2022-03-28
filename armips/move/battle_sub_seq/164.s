.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_164", 0

a001_164:
    changevar VAR_OP_SET, VAR_09, 0x5000
    changevar2 VAR_OP_SETMASK, VAR_SIDE_EFFECT_PLAYER, VAR_09
    printmessage 0x4D9, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
