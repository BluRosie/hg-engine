.include "asm/include/battle_commands.inc"

.data

// Called by Confuse Ray, Supersonic, Sweet Kiss and Teeter Dance.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_DEFENDER|MOVE_SUBSCRIPT_PTR_CONFUSE
    End 
