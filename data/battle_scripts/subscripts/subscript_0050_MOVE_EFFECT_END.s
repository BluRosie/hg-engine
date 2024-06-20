.include "asm/include/battle_commands.inc"

.data

_000:
    // Your team’s {0} wore off!
    BufferLocalMessage BATTLER_CATEGORY_MSG_TEMP, 288, TAG_MOVE, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
