.include "asm/include/battle_commands.inc"

.data

// Called by Earthquake.
_Start:
    // Allows the move to hit buried targets.
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_HIT_DIG
    // Default multiplier for move power.
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 10
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_DEFENDER, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_DIG, _CalcDamage
    // Doubled multiplier against a buried target.
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 20

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
