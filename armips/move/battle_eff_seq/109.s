.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_109", 0

a030_109:
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_TYPE_1, 0x7, _0044
    ifmonstat IF_EQUAL, BATTLER_ATTACKER, MON_DATA_TYPE_2, 0x7, _0044
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x40000058
    endscript
_0044:
    if2 IF_NOTEQUAL, VAR_ATTACKER, 0x10, _0060
    cmd_D4 BATTLER_ATTACKER
_0060:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000059
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x1
    endscript

.close
