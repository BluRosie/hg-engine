.include "asm/include/battle_commands.inc"

.data

// Called by Hex.
_Start:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS, STATUS_NONE, _TargetHasStatus
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_ABILITY, ABILITY_COMATOSE, _TargetHasStatus
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 10
    GoTo _CalcDamage

_TargetHasStatus:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 20

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
