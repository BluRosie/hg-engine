.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_NO_CUR, MOVE_FEINT, _FeintMessage
    IfTurnFlag BATTLER_CATEGORY_DEFENDER, TURN_FLAG_PROTECTING, 0, _DisableProtect
    // It broke through {0}’s protection!
    PrintMessage 1243, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoTo _AfterMessage

_FeintMessage:
    // {0} fell for the feint!
    PrintMessage 1048, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER

_AfterMessage:
    Wait 
    WaitButtonABTime 30

_DisableProtect:
    SetTurnFlag BATTLER_CATEGORY_DEFENDER, TURN_FLAG_PROTECTING, 0
    End 
