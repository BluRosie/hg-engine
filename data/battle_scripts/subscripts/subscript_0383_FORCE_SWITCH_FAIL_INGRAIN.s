.include "asm/include/battle_commands.inc"

.data

_000:
    // {0} is anchored in place with its roots!
    BufferMessage 542, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK
    End
