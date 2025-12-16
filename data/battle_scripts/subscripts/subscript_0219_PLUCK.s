.include "asm/include/battle_commands.inc"

.data

 _Start:
    CheckSubstitute BATTLER_CATEGORY_DEFENDER, _End // Not really needed here, since TryPluck checks Substitute too.
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_CUSTAP_FLAG, 0, _End
    TryPluck _End, _End
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 0, _End
    CallFromVar BSCRIPT_VAR_TEMP_DATA

_End:
    End
    