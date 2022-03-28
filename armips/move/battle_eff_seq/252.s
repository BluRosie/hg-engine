.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_252", 0

a030_252:
    ifmonstat IF_NOTEQUAL, BATTLER_ATTACKER, MON_DATA_79, 0x0, _0090
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_LEVITATE, _0090
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_MOVE_STATE, 0x400, _0090
    changevartomonvalue VAR_OP_SETMASK, BATTLER_ATTACKER, 0x3B, 0x8000000
    changevartomonvalue VAR_OP_SET, BATTLER_ATTACKER, 0x4F, 0x5
    preparemessage 0x409, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x2000005A
    endscript
_0090:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
