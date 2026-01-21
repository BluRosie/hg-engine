.include "asm/include/battle_commands.inc"

.data

// Called by Shift Gear.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SUBSCRIPT_PTR_SHIFT_GEAR
    End 
