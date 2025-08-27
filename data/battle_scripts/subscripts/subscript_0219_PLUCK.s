.include "asm/include/battle_commands.inc"

.data


 _000:
    CheckSubstitute BATTLER_CATEGORY_DEFENDER, _noitemlost //not really need here, since TryEatBerry checks Sub too
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_CUSTAP_FLAG, 0, _noitemlost
    TryPluck _noitemlost, _notused
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 0, _noitemlost
    CallFromVar BSCRIPT_VAR_TEMP_DATA

_noitemlost:
    End 

_notused:
    End
    