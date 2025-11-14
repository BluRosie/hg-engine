.include "asm/include/battle_commands.inc"

.data

// Called by Snore.
_Start:
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_SLEEP, _MoveFailed
    // Check if Sleep Talk invoked Snore; if it did, we don't need to play the sleeping animation again.
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_TEMP, MOVE_SLEEP_TALK, _CalcDamage
    Call BATTLE_SUBSCRIPT_SLEEPING

_CalcDamage:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_FLINCH
    CalcCrit 
    CalcDamage 
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
