.include "asm/include/battle_commands.inc"

.data

_Start:
    PrintAttackMessage
    Wait
    WaitButtonABTime 30
    // TODO: Ability popup.
    // {0} can’t fall asleep due to a veil of sweetness!
    PrintMessage 1594, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitButtonABTime 30
    End
