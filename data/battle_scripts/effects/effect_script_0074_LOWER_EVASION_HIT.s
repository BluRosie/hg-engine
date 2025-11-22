.include "asm/include/battle_commands.inc"

.data

// Will be called by G-Max Tartness, if/when Gigantamax is implemented.
_Start:
    CalcCrit 
    CalcDamage
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_EVASION_DOWN_1_STAGE
    End 
