.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_295", 0

// Overworld Trick Room

a001_295:
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, MOVE_TRICK_ROOM
    playanimation BATTLER_xFF
    waitmessage
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x0
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x4000
    printmessage 0x4F3, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, FIELD_CONDITION_TRICK_ROOM_INIT
    endscript

.close
