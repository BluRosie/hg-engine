.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage
    Wait
    WaitButtonABTime 30
    // But {0} can’t use it the way it is now!
    PrintMessage 1492, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait
    WaitButtonABTime 30
    End
