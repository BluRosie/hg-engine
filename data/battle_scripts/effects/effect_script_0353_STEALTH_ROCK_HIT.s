.include "asm/include/battle_commands.inc"

.data

// Called by Stone Axe.
// Will be called by G-Max Stonesurge, if/when Gigantamax is implemented.
_Start:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_SIDE_CONDITION_TARGET, SIDE_CONDITION_STEALTH_ROCKS, _CalcDamage
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_SIDE_CONDITION_TARGET, SIDE_CONDITION_STEALTH_ROCKS
    AddEntryHazardToQueue BATTLER_CATEGORY_DEFENDER, HAZARD_IDX_STEALTH_ROCK
    // Pointed stones float in the air around your team!
    BufferMessage 1077, TAG_NONE_SIDE, BATTLER_CATEGORY_ATTACKER_ENEMY
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_PRINT_MESSAGE_AND_PLAY_ANIMATION

_CalcDamage:
    CalcCrit
    CalcDamage
    End 
