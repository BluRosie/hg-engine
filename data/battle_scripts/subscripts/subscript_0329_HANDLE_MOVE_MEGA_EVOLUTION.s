.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_EFFECT_CHANCE, 1
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_470
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_WILD_MON, _019

_printOriginalMessage:
    // {0}’s fervent wish has reached {1}!
    PrintMessage 1345, TAG_TRNAME_NICKNAME, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    GoTo _023

_019:
    // if the battler is not on the enemy side, then still print the original message
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MSG_BATTLER_TEMP, 0x1, _printOriginalMessage
    // still use the initial message index so that the entry adjustment for TAG_NICKNAME gives the following message instead
    // The wild {0} set its Awakening Emera on its Looplet!
    PrintMessage 1345, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    GoTo _printOriginalMessage

_023:
    Wait
    WaitButtonABTime 30
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_SUBSTITUTE, _096
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_SUB_OUT
    Wait
    RestoreSprite BATTLER_CATEGORY_MSG_TEMP
    Wait
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_SUB_IN
    Wait
    UpdateMonData OPCODE_FLAG_OFF, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_SUBSTITUTE
    PlayMoveAnimationOnMons BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_TEMP
    WaitButtonABTime 126
    WaitButtonABTime 366
    Wait
    // {0} has Mega Evolved into Mega {1}!
    PrintMessage 1279, TAG_NICKNAME_POKE, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    WaitButtonABTime 30
    UpdateMonData OPCODE_FLAG_ON, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_SUBSTITUTE
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_EFFECT_CHANCE, 0
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STATUS2, STATUS2_SUBSTITUTE, _121
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_SUB_OUT
    Wait
    RefreshSprite BATTLER_CATEGORY_MSG_TEMP
    Wait
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_SUB_IN
    Wait
    End

_096:
    PlayMoveAnimationOnMons BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_TEMP
    WaitButtonABTime 126
    WaitButtonABTime 366
    Wait
    // {0} has Mega Evolved into Mega {1}!
    PrintMessage 1279, TAG_NICKNAME_POKE, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_EFFECT_CHANCE, 0
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF

_121:
    End
