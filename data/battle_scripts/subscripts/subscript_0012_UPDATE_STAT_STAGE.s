.include "asm/include/battle_commands.inc"

.data

_Start:
    // Address 1 if no change, Address 2 if effect was blocked, Address 3 if blocked by Substitute.
    ChangeStatStage _PrimaryEffectStageMinMax, _CheckIfDefiantOrCompetitive, _EndWithFailFlag
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _StageChangeAnim

_PrimaryEffect:
    PrintAttackMessage 
    Wait
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 

_StageChangeAnim:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_UPDATE_STAT_STAGES, _StageChangeMessage
    PlayBattleAnimationFromVar BATTLER_CATEGORY_SIDE_EFFECT_MON, BSCRIPT_VAR_TEMP_DATA
    Wait 
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_STAT_STAGE_CHANGE_SHOWN, _StageChangeMessage
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_UPDATE_STAT_STAGES

_StageChangeMessage:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_SHADOW_FORCE, _CheckIfDefiantOrCompetitive
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30

_CheckIfDefiantOrCompetitive:
    CheckCanActivateDefiantOrCompetitive _End, _HandleDefiant, _HandleCompetitive

_HandleDefiant:
    Call BATTLE_SUBSCRIPT_HANDLE_DEFIANT
    GoTo _End

_HandleCompetitive:
    Call BATTLE_SUBSCRIPT_HANDLE_COMPETITIVE

_End:
    End 

_PrimaryEffectStageMinMax:
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _StageMinMaxMessage
    PrintAttackMessage 
    Wait 

_StageMinMaxMessage:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MESSAGES_OFF, _CheckIfDefiantOrCompetitive
    WaitButtonABTime 30
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    GoTo _CheckIfDefiantOrCompetitive

_EndWithFailFlag:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
