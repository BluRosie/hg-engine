.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_176", 0

a030_176:
    tryhelpinghand _0040
    preparemessage 0x1F7, 0x9, 0x1, 0xFF, "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005A
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x8001C
    endscript
_0040:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
