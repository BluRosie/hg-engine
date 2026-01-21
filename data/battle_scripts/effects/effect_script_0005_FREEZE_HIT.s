.include "asm/include/battle_commands.inc"

.data

// Called by Ice Punch, Freeze-Dry, Freezing Glare, Ice Beam and Powder Snow.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_FREEZE
    CalcCrit 
    CalcDamage 
    End 
