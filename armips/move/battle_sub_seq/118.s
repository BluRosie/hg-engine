.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_118", 0

a001_118:
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0x7, _0028
    gotosubscript 18
    goto _00A8
_0028:
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0x8, _0050
    gotosubscript 22
    goto _00A8
_0050:
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0x10, _0078
    gotosubscript 25
    goto _00A8
_0078:
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0x40, _00A0
    gotosubscript 31
    goto _00A8
_00A0:
    gotosubscript 47
_00A8:
    ifmonstat IF_NOTMASK, BATTLER_DEFENDER, MON_DATA_STATUS_1, 0xFF, _00E0
    setstatusicon BATTLER_ATTACKER, 0x0
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x34, 0x0
_00E0:
    endscript

.close
