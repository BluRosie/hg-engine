.include "asm/include/battle_commands.inc"

.data

_000:
    AbilityPopup BATTLER_CATEGORY_ATTACKER
    // {0} couldn’t fully protect itself and got hurt!
    PrintMessage 1765, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 
