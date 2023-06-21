.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_194", 0

a030_194:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_MOVE_STATE, 0x4000, _0050
    changemondatabyvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x3B, 0x4000
    preparemessage 0x235, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005A
    endscript
_0050:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
