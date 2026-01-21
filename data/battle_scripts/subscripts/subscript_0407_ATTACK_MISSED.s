.include "asm/include/battle_commands.inc"

.data

_Start:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 30
    GetCurrentMoveData MOVEATTRIBUTE_RANGE
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, RANGE_ADJACENT_OPPONENTS, _AvoidedMessage
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, RANGE_ALL_ADJACENT, _AvoidedMessage
    // {0}’s attack missed!
    PrintMessage 12, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    GoTo _Cleanup

_AvoidedMessage:
    // {0} avoided the attack!
    PrintMessage 24, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP

_Cleanup:
    Wait 
    WaitButtonABTime 30
    // Now handle crash damage.
    Call BATTLE_SUBSCRIPT_CRASH_ON_MISS
    // Now handle moves needing to be cancelled (Rollout, Thrash, etc.)
    UnlockMoveChoice BATTLER_CATEGORY_ATTACKER
    End
