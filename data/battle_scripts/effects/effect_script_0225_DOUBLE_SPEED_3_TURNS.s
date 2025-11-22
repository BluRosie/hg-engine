.include "asm/include/battle_commands.inc"

.data

// Called by Tailwind.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_TAILWIND_START
    End 
