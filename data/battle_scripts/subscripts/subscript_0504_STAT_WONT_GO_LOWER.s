.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage
    Wait
    WaitButtonABTime 30
    // Pending Champions modernization
    // {0}’s stats won’t go any lower!
    PrintMessage 771, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait
    WaitButtonABTime 30
    End
