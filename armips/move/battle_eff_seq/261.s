.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_261", 0

a030_261:
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x10
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xA
    ifmonstat IF_NOTMASK, BATTLER_DEFENDER, MON_DATA_MOVE_STATE, 0x40000, _0048
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14
_0048:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x8200000D
    critcalc
    damagecalc
    endscript

.close
