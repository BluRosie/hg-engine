.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_259", 0

// Trick Room

a030_259:
    if IF_MASK, VAR_FIELD_EFFECT, FIELD_STATUS_TRICK_ROOM, _003C
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, FIELD_CONDITION_TRICK_ROOM_INIT
    preparemessage 0x42E, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _005C
_003C:
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, FIELD_STATUS_TRICK_ROOM
    preparemessage 0x431, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
_005C:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005A
    trickroom
    endscript
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
