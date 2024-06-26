.include "asm/include/battle_commands.inc"

.data

_000:
    CheckSubstitute BATTLER_CATEGORY_DEFENDER, _020
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_QUICK_CLAW_FLAG, 0, _020
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_CUSTAP_FLAG, 0, _020
    TryKnockOff _020
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30

_020:
    End 
