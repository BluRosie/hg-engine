.include "asm/include/battle_commands.inc"

.data


 _000:
    CheckSubstitute BATTLER_CATEGORY_DEFENDER, _noitemlost
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_CUSTAP_FLAG, 0, _noitemlost
    TryIncinerate _noitemlost
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30

_noitemlost:
    End 
