.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_270", 0

a030_270:
    tryswitchinmon BATTLER_ATTACKER, 0x1, _0024
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x2000008F
    endscript
_0024:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
