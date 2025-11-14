.include "asm/include/battle_commands.inc"

.data

// Called by Recover, Soft-Boiled, Milk Drink, Slack Off and Heal Order.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_RECOVER_HALF_MAX_HP
    End 
