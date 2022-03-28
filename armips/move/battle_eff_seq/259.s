.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_259", 0

a030_259:
    if IF_MASK, VAR_FIELD_EFFECT, 0x70000, _003C
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, 0x50000
    preparemessage 0x42E, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _005C
_003C:
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, 0x70000
    preparemessage 0x431, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
_005C:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005A
    dotrickroom
    endscript
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
