.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_047", 0

a030_047:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x100000, _002C
    changevar VAR_OP_SETMASK, VAR_ADD_STATUS1, 0x40000046
    endscript
_002C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
