.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} is anchored in place with its roots!
    BufferMessage 542, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    End
