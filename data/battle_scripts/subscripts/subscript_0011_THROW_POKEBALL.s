.include "asm/include/battle_commands.inc"

.data

_Start:
    // {0} used one {1}!
    PrintMessage 857, TAG_TRNAME_ITEM, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    StartCatchMonTask CAPTURE_NORMAL
    WaitCatchMonTask 
    UpdateVarFromVar OPCODE_GET, BSCRIPT_VAR_BATTLE_OUTCOME, BSCRIPT_VAR_TEMP_DATA
    UpdateVar OPCODE_BITWISE_AND, BSCRIPT_VAR_TEMP_DATA, 255
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_TEMP_DATA, 4, _CheckIfBugContestEnd
    TryRestoreStatusOnSwitch BATTLER_CATEGORY_PLAYER, _CheckIfBugContestEnd
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_PLAYER, BMON_DATA_STATUS, STATUS_NONE

_CheckIfBugContestEnd:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_BUG_CONTEST, _End
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_OUTCOME, BATTLE_RESULT_CAPTURED_MON, _End
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SAFARI_BALL_CNT, 0, _End
    PlaySound BATTLER_CATEGORY_ATTACKER, 1521
    // Announcer: You’re out of {0}s! Game over!
    PrintMessage 1269, TAG_ITEM, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait 
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_OUTCOME, BATTLE_RESULT_PLAYER_FLED

_End:
    End 
