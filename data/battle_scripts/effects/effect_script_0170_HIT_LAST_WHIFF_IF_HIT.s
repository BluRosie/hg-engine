.include "asm/include/battle_commands.inc"

.data

// Called by Focus Punch.
_Start:
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_PHYSICAL_DAMAGE, 0, _LostFocus
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SPECIAL_DAMAGE, 0, _LostFocus
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_EFFECT_CHANCE, 1
    CalcCrit 
    CalcDamage 
    End 

_LostFocus:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_LOST_FOCUS
    // {0} lost its focus and couldn’t move!
    BufferMessage 600, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    End 
