.include "asm/include/battle_commands.inc"

.data

_000:
    // Your team is no longer protected by mist!
    BufferLocalMessage BATTLER_CATEGORY_MSG_TEMP, 1525, TAG_NONE, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
