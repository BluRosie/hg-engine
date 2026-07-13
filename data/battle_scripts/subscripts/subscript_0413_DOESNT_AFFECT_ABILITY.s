.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30

    AbilityPopup BATTLER_CATEGORY_MSG_TEMP

    // It doesn’t affect {0}...
    PrintMessage 27, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End
