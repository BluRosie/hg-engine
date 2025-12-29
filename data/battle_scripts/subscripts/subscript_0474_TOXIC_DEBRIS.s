.include "asm/include/battle_commands.inc"

.data

_000:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLE_ANIMATION_TOXIC_SPIKES
    Wait 
    AddEntryHazardToQueue BATTLER_CATEGORY_MSG_BATTLER_TEMP, HAZARD_IDX_TOXIC_SPIKES
    // Poison spikes were scattered all around your team’s feet!
    PrintMessage 1063, TAG_NONE_SIDE, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait 
    WaitButtonABTime 30
    End 
