.include "asm/include/battle_commands.inc"

.data

_Start:
    WaitButtonABTime 15
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_SPLASH, _CheckFocusItem
    // But nothing happened!
    PrintMessage 795, TAG_NONE
    GoTo _Cleanup

_CheckFocusItem:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_ENDURED_ITEM, _CheckEndure
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_ABILITY, ABILITY_STURDY, _End
    PlayBattleAnimation BATTLER_CATEGORY_DEFENDER, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    // {0} hung on using its {1}!
    PrintMessage 912, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_DEFENDER
    CheckItemHoldEffect CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_DEFENDER, HOLD_EFFECT_ENDURE, _AfterRemoveItem
    RemoveItem BATTLER_CATEGORY_DEFENDER

_AfterRemoveItem:
    Wait 
    WaitButtonABTime 30
    GoTo _CheckEffectiveness

_CheckEndure:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_ENDURED, _CheckOHKO
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, 1, _CheckOHKO
    // {0} endured the hit!
    PrintMessage 445, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    GoTo _CheckEffectiveness

_CheckOHKO:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_ONE_HIT_KO, _CheckEffectiveness
    // It’s a one-hit KO!
    PrintMessage 775, TAG_NONE
    GoTo _Cleanup

_CheckEffectiveness:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_IGNORE_TYPE_EFFECTIVENESS, _End
    CompareVarToValue OPCODE_AND, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NOT_VERY_EFFECTIVE|MOVE_STATUS_SUPER_EFFECTIVE, _End
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_SUPER_EFFECTIVE, _CheckIfNotVeryEffective
    // It’s super effective!
    PrintMessage 780, TAG_NONE
    GoTo _Cleanup

_CheckIfNotVeryEffective:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NOT_VERY_EFFECTIVE, _End
    // It’s not very effective...
    PrintMessage 779, TAG_NONE

_Cleanup:
    Wait 
    WaitButtonABTime 30

_End:
    End 
