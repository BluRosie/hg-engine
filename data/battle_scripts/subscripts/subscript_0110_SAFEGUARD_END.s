.include "asm/include/battle_commands.inc"

.data

_000:
    // Your team is no longer protected by Safeguard!
    PrintMessage 203, TAG_NONE_SIDE, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
