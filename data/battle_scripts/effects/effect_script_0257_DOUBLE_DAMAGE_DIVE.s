.include "asm/include/battle_commands.inc"

.data

// Called by Surf.
_Start:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_HIT_DIVE
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 10
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_DEFENDER, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_DIVE, _CalcDamage
    UpdateVar OPCODE_SET, BSCRIPT_VAR_POWER_MULTI, 20

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
