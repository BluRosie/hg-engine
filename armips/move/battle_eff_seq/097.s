.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_097", 0

a030_097:
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0x7, _0038
    gotosubscript 20
    trysleeptalk _0038
    gotosubscript 76
    jumptoeffectscript 0
_0038:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
