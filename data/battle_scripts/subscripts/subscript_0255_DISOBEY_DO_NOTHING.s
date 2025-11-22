.include "asm/include/battle_commands.inc"

.data

_Start:
    WaitButtonABTime 15
    // Generate a random number between 0 and 3, then use it to print a message.
    Random 3, 0
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 1, _DisobeyMessage_1
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 2, _DisobeyMessage_2
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 3, _DisobeyMessage_3
    // If the number is 0, we get this one.
    // {0} is loafing around!
    PrintMessage 828, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoTo _Cleanup

_DisobeyMessage_1:
    // {0} won’t obey!
    PrintMessage 829, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoTo _Cleanup

_DisobeyMessage_2:
    // {0} turned away!
    PrintMessage 830, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoTo _Cleanup

_DisobeyMessage_3:
    // {0} pretended not to notice!
    PrintMessage 831, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoTo _Cleanup

_Cleanup:
    Wait 
    WaitButtonABTime 30
    End 
