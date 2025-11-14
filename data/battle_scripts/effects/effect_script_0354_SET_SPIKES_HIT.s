.include "asm/include/battle_commands.inc"

.data

// Called by Ceaseless Edge.
_Start:
    TrySpikes _CalcDamage
    AddEntryHazardToQueue BATTLER_CATEGORY_DEFENDER, HAZARD_IDX_SPIKES
    // Spikes were scattered all around your team's feet!
    BufferMessage 427, TAG_NONE_SIDE, BATTLER_CATEGORY_ATTACKER_ENEMY
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_PRINT_MESSAGE_AND_PLAY_ANIMATION

_CalcDamage:
    CalcCrit
    CalcDamage
    End 
