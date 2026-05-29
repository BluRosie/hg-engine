.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage
    Wait
    WaitButtonABTime 30
    AbilityPopup BATTLER_CATEGORY_MSG_TEMP
    // {0}’s stats were not lowered!
    PrintMessage 1499, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitButtonABTime 30
    End
