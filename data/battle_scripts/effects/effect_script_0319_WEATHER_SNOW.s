.include "asm/include/battle_commands.inc"

.data

// Called by Snowscape.
_Start:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    Call BATTLE_SUBSCRIPT_HANDLE_SNOW_TEMPORARY
    End 
