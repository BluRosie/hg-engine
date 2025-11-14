.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_TAUNTED_TURNS, 0, _MoveFailed
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_SEMI_INVULNERABLE|MOVE_STATUS_MISSED, _MoveFailed
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    // TODO: Modernize Taunt duration.
    // Generation V: The duration is now 3 turns if the user acts before the target, or 4 turns otherwise.
    Random 2, 3
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_TAUNTED_TURNS, BSCRIPT_VAR_CALC_TEMP
    // {0} fell for the taunt!
    PrintMessage 500, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
