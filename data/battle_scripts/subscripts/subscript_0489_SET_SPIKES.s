.include "asm/include/battle_commands.inc"

.data

_000:
    TrySpikes _010
    AddEntryHazardToQueue BATTLER_CATEGORY_DEFENDER, HAZARD_IDX_SPIKES
    // Spikes were scattered all around your team’s feet!
    PrintMessage 427, TAG_NONE_SIDE, BATTLER_CATEGORY_ATTACKER_ENEMY
    End 

_010:
    End 
