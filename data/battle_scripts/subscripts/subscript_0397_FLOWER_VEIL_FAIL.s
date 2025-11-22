.include "asm/include/battle_commands.inc"

.data

_Start:
    PrintAttackMessage
    Wait
    WaitButtonABTime 30

    // Ability popup?

    // {0} surrounded itself with a veil of petals!
    PrintMessage 1511, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitButtonABTime 30
    End
