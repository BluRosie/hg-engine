.include "asm/include/battle_commands.inc"

.data

// Called by Focus Energy.
_Start:
    // Make sure Focus Energy is not already active.
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS2, STATUS2_FOCUS_ENERGY, _MoveFailed
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SUBSCRIPT_PTR_FOCUS_ENERGY
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
