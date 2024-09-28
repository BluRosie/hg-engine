.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SUN
    // The harsh sunlight faded.
    PrintMessage 809, TAG_NONE
    Wait 
    WaitButtonABTime 30
    Call BATTLE_SUBSCRIPT_SWITCH_IN_ABILITY_CHECK
    End 
