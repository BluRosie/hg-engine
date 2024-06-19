.include "asm/include/battle_commands.inc"

.data

_000:
    // Your team’s Lucky Chant wore off!
    PrintMessage 1085, TAG_NONE_SIDE, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
