.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    GetCurrentMoveData MOVEATTRIBUTE_RANGE
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, RANGE_ADJACENT_OPPONENTS, Avoided
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, RANGE_ALL_ADJACENT, Avoided
    // {0}’s attack missed!
    PrintMessage 12, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoTo Continue

Avoided:
    // {0} avoided the attack!
    PrintMessage 24, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER

Continue:
    Wait 
    WaitButtonABTime 30
    End