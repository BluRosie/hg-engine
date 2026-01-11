.include "asm/include/battle_commands.inc"

.data

_000:
    PlayBattleAnimationOnMons BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_TOXIC_SPIKES
    Wait 
    AddEntryHazardToQueue BATTLER_CATEGORY_ATTACKER, HAZARD_IDX_TOXIC_SPIKES
    // Poison spikes were scattered all around your team’s feet!
    PrintMessage 1063, TAG_NONE_SIDE, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
