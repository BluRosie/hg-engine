.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_119", 0

a001_119:
    changevar VAR_OP_SETMASK, VAR_60, 0x80
    changevar VAR_OP_SET, VAR_34, 0xF
    gotosubscript 12
    changevar VAR_OP_SET, VAR_34, 0x10
    gotosubscript 12
    changevar VAR_OP_SET, VAR_34, 0x11
    gotosubscript 12
    changevar VAR_OP_SET, VAR_34, 0x12
    gotosubscript 12
    changevar VAR_OP_SET, VAR_34, 0x13
    gotosubscript 12
    changevar VAR_OP_CLEARMASK, VAR_60, 0x2
    changevar VAR_OP_CLEARMASK, VAR_60, 0x80
    endscript

.close
