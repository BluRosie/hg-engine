.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _BufferedMessage
    PrintAttackMessage 
    Wait 
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 

_BufferedMessage:
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    End 
