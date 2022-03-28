.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_319", 0

// v-create move effect

a001_305:
    changevar VAR_OP_SETMASK, VAR_60, 0x80
    //spe down
    changevar VAR_OP_SET, VAR_34, SPEED_DOWN
    gotosubscript 12
    //def down
    changevar VAR_OP_SET, VAR_34, DEFENSE_DOWN
    gotosubscript 12
    //sp def down
    changevar VAR_OP_SET, VAR_34, SPDEF_DOWN
    gotosubscript 12
    changevar VAR_OP_CLEARMASK, VAR_60, 0x2
    changevar VAR_OP_CLEARMASK, VAR_60, 0x80
    endscript

.close