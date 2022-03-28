.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_026", 0

a030_026:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x1000, _0040
    if IF_MASK, VAR_06, 0x200, _0040
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x4000003F
    endscript
_0040:
    changevar VAR_OP_SETMASK, VAR_06, 0x1
    endscript

.close
