.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_092", 0

a030_092:
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0x7, _0050
    if IF_EQUAL, VAR_MOVE_TEMP, 0xD6, _0034
    gotosubscript 20
_0034:
    changevar VAR_OP_SETMASK, VAR_ADD_STATUS2, 0x80000008
    critcalc
    damagecalc
    endscript
_0050:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
