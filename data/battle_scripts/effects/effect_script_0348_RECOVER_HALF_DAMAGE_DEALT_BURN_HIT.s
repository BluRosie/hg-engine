.include "asm/include/battle_commands.inc"

.data

// Called by Matcha Gotcha.
_Start:
	UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_BURN_AND_DRAIN_HEALTH
    CalcCrit 
    CalcDamage 
    End
