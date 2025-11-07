.include "asm/include/battle_commands.inc"

.data

_CheckNaturalCure:
    // Modernise to Gen 8+: Natural Cure no longer heals status conditions upon completing a battle.
    // TryRestoreStatusOnSwitch BATTLER_CATEGORY_PLAYER_SLOT_1, _CheckNaturalCureSlot2
    // UpdateMonData OPCODE_SET, BATTLER_CATEGORY_PLAYER_SLOT_1, BMON_DATA_STATUS, STATUS_NONE

_CheckNaturalCureSlot2:
    // Also bugfix: Avoids double Regeneration activation
    // TryRestoreStatusOnSwitch BATTLER_CATEGORY_PLAYER_SLOT_2, _Start
    // UpdateMonData OPCODE_SET, BATTLER_CATEGORY_PLAYER_SLOT_2, BMON_DATA_STATUS, STATUS_NONE

_Start:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_TRAINER, _CheckBonusRewards
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_FRONTIER|BATTLE_TYPE_MULTI|BATTLE_TYPE_LINK|BATTLE_TYPE_DOUBLES|BATTLE_TYPE_TRAINER, _TrainerMultiMessageLink
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_LINK, _LinkWin
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_MULTI, _TrainerMultiMessage
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_TAG, _TrainerMultiMessage

_Trainer1v1Message:
    // Player defeated {0} {1}!
    PrintMessage 839, TAG_TRCLASS_TRNAME, BATTLER_CATEGORY_ENEMY_SLOT_1, BATTLER_CATEGORY_ENEMY_SLOT_1
    Wait
    WaitButtonABTime 15
    TrainerSlideIn BATTLER_CATEGORY_ENEMY_SLOT_1, BATTLER_TYPE_SOLO_ENEMY
    Wait 
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_DOUBLES, _Trainer2v2Message
    PrintTrainerMessage BATTLER_CATEGORY_ENEMY_SLOT_1, TRAINER_MESSAGE_LOSE
    Wait
    WaitButtonABTime 60
    GoTo _CheckPrizeMoney

_Trainer2v2Message:
    PrintTrainerMessage BATTLER_CATEGORY_ENEMY_SLOT_1, TRAINER_MESSAGE_LOSE_1
    Wait
    WaitButtonABTime 60
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_FRONTIER, _CheckPrizeMoney
    PrintTrainerMessage BATTLER_CATEGORY_ENEMY_SLOT_1, TRAINER_MESSAGE_LOSE_2
    Wait
    WaitButtonABTime 60
    GoTo _CheckPrizeMoney

_TrainerMultiMessageLink:
    PlayBGM BATTLER_CATEGORY_PLAYER_SLOT_1, 1128

_TrainerMultiMessage:
    // Player beat {0} {1} and {2} {3}!
    PrintMessage 953, TAG_TRCLASS_TRNAME_TRCLASS_TRNAME, BATTLER_CATEGORY_ENEMY_SLOT_1, BATTLER_CATEGORY_ENEMY_SLOT_1, BATTLER_CATEGORY_ENEMY_SLOT_2, BATTLER_CATEGORY_ENEMY_SLOT_2
    Wait
    WaitButtonABTime 15
    TrainerSlideIn BATTLER_CATEGORY_ENEMY_SLOT_1, BATTLER_TYPE_SOLO_ENEMY
    Wait
    PrintTrainerMessage BATTLER_CATEGORY_ENEMY_SLOT_1, TRAINER_MESSAGE_LOSE
    Wait
    WaitButtonABTime 30
    TrainerSlideOut BATTLER_CATEGORY_ENEMY_SLOT_1
    Wait
    TrainerSlideIn BATTLER_CATEGORY_ENEMY_SLOT_2, BATTLER_TYPE_SOLO_ENEMY
    Wait
    PrintTrainerMessage BATTLER_CATEGORY_ENEMY_SLOT_2, TRAINER_MESSAGE_LOSE
    Wait
    WaitButtonABTime 60
    SetLinkBattleResult

_CheckPrizeMoney:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_FRONTIER, _Cleanup
    PayPrizeMoney
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 1, _SentToMomMessage
    // {0} got ${1} for winning!
    PrintMessage 33, TAG_TRNAME_NUM, BATTLER_CATEGORY_PLAYER, BATTLER_CATEGORY_MSG_TEMP
    GoTo ContinueScript

_SentToMomMessage:
    // {0} got ${1} for winning! Sent some to Mom!
    PrintMessage 1275, TAG_TRNAME_NUM, BATTLER_CATEGORY_PLAYER, BATTLER_CATEGORY_MSG_TEMP

_ContinueScript:
    Wait 
    WaitButtonABTime 60

_CheckBonusRewards:
    GenerateEndOfBattleItem 
    AddPayDayMoney 
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 0, _Cleanup
    // {0} picked up ${1}!
    PrintMessage 341, TAG_TRNAME_NUM, BATTLER_CATEGORY_PLAYER, BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitButtonABTime 60

_Cleanup:
    FadeOutBattle 
    Wait 
    End 

_LinkWin:
    Call BATTLE_SUBSCRIPT_LINK_WIN_LOSE
    End
