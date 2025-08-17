.include "asm/include/battle_commands.inc"

.data

_000:
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // Grass type was added to {0}!
    PrintMessage 1579, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER // Sadly, there is no TAG_NICKNAME_MOVETYPE.
    Wait 
    WaitButtonABTime 30
    End 
