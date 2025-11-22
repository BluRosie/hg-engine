.include "asm/include/battle_commands.inc"

.data

// Called by Flame Charge, Trailblaze and Aqua Step.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SUBSCRIPT_PTR_SPEED_UP_1_STAGE
    CalcCrit 
    CalcDamage 
    End 
