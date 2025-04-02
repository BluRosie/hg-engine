.include "asm/include/battle_commands.inc"

.data

_000:
    ChangeStatStage _051, _069, _070
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _010
    PrintAttackMessage 
    Wait 

_010:
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _023
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 

_023:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_UPDATE_STAT_STAGES, _041
    PlayBattleAnimationFromVar BATTLER_CATEGORY_SIDE_EFFECT_MON, BSCRIPT_VAR_TEMP_DATA
    Wait 
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_STAT_STAGE_CHANGE_SHOWN, _041
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_UPDATE_STAT_STAGES

_041:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_SHADOW_FORCE, _069
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    CheckCanActivateDefiantOrCompetitive _NoNeedHandle, _HandleDefiant, _HandleCompetitive
_HandleDefiant:
    Call BATTLE_SUBSCRIPT_HANDLE_DEFIANT
    GoTo _NoNeedHandle
_HandleCompetitive:
    Call BATTLE_SUBSCRIPT_HANDLE_COMPETITIVE
_NoNeedHandle:
    End 

_051:
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_DIRECT, _058
    PrintAttackMessage 
    Wait 

_058:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MESSAGES_OFF, _069
    WaitButtonABTime 30
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30

_069:
    CheckCanActivateDefiantOrCompetitive _NoNeedHandle2, _HandleDefiant2, _HandleCompetitive2
_HandleDefiant2:
    Call BATTLE_SUBSCRIPT_HANDLE_DEFIANT
    GoTo _NoNeedHandle
_HandleCompetitive2:
    Call BATTLE_SUBSCRIPT_HANDLE_COMPETITIVE
_NoNeedHandle2:
    End 

_070:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
