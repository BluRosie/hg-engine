.include "asm/include/battle_commands.inc"

.data

// Called by (the move) Hail.
_Start:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_EXTREMELY_HARSH_SUNLIGHT, _PreventChangingWeather
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_HEAVY_RAIN, _PreventChangingWeather
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_STRONG_WINDS, _PreventChangingWeather
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_HAIL_ALL, _TrySettingHail
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 

_TrySettingHail:
    Call BATTLE_SUBSCRIPT_HANDLE_HAIL_TEMPORARY
    End 

_PreventChangingWeather:
    Call BATTLE_SUBSCRIPT_PREVENT_CHANGING_WEATHER
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
