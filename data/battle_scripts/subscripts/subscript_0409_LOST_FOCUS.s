.include "asm/include/battle_commands.inc"

.data

// Called by Focus Punch.
_Start:
    // {0} lost its focus and couldn’t move!
    PrintMessage 600, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End
