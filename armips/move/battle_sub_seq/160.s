.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_160", 0

a001_160:
    if IF_MASK, VAR_SIDE_EFFECT_PLAYER, 0x300, _004C
    gotosubscript 76
    printmessage 0x4CE, 0x1, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_SIDE_EFFECT_PLAYER, 0x300
    endscript
_004C:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
