.include "asm/include/battle_commands.inc"

.data

_000:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CRIT_MULTIPLIER, 1, _052
    // A critical hit!
    PrintMessage 774, TAG_NONE
    Wait 
    WaitButtonABTime 30

_052:
    End 
