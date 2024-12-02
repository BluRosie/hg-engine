.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} is anchored in place with its suction cups!
    BufferMessage 659, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_MSG_TEMP
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    End
