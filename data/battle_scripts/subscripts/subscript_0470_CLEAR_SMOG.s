.include "asm/include/battle_commands.inc"

.data


 _000:
    ClearSmog
    // All stat changes were eliminated!
    PrintMessage 817, TAG_NONE
    Wait 
    WaitButtonABTime 30
    End
