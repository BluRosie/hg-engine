.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_FRONTIER, _FrontierRecallEnemySlot1
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_LINK, _LinkLoss
    // You have no more Pokémon that can fight!
    PrintMessage 36, TAG_TRNAME, BATTLER_CATEGORY_PLAYER
    Wait 
    WaitButtonABTime 30
    COMMAND_DE 10, 20
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_MESSAGE, 0, _RecallEnemySlot1
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_MULTI, _CheckIfLoseMoney
    COMMAND_DE 12, 20
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_MESSAGE, 0, _RecallEnemySlot1

_CheckIfLoseMoney:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_CAN_LOSE, _EndWithNoWhiteOut
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_FRONTIER, _DotsMessage
    PayPrizeMoney 
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 0, _DotsMessage
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_TRAINER, _GiveMoneyMessage

_DropMoneyMessage:
    // You panicked and dropped ${0}...
    PrintMessage 34, TAG_TRNAME_NUM, BATTLER_CATEGORY_PLAYER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    GoTo _DotsMessage

_GiveMoneyMessage:
    // You gave ${1} to the winner...
    PrintMessage 35, TAG_TRNAME_NUM, BATTLER_CATEGORY_PLAYER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_DotsMessage:
    // ... ... ... ...
    // No longer in SV
    // PrintMessage 38, TAG_NONE
    // Wait 
    // WaitButtonABTime 30
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_AI|BATTLE_TYPE_MULTI|BATTLE_TYPE_DOUBLES|BATTLE_TYPE_TRAINER, _WhiteOut
    HealthbarSlideOut BATTLER_CATEGORY_PLAYER_SLOT_2

_WhiteOut:
    COMMAND_DF 0
    Wait 
    // You were overwhelmed by your defeat!
    PrintMessage 37, TAG_NONE
    Wait 
    WaitButtonABTime 30
    COMMAND_DF 1
    Wait 
    End 

_EndWithNoWhiteOut:
    FadeOutBattle 
    Wait 
    End 

_RecallEnemySlot1:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ENEMY_SLOT_1, BMON_DATA_HP, 0, _RecallEnemySlot2
    RecallPokemon BATTLER_CATEGORY_ENEMY_SLOT_1

_RecallEnemySlot2:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_DOUBLES, _SlideOutEnemyHealth
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ENEMY_SLOT_2, BMON_DATA_HP, 0, _SlideOutEnemyHealth
    RecallPokemon BATTLER_CATEGORY_ENEMY_SLOT_2

_SlideOutEnemyHealth:
    Wait 
    HealthbarSlideOut BATTLER_CATEGORY_ENEMY
    Wait 
    COMMAND_DE 10, 20
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 0, _148
    // Enemy victory/taunt message. Unlike the Frontier, this only happens sometimes.
    TrainerSlideIn BATTLER_CATEGORY_ENEMY_SLOT_1, BATTLER_TYPE_SOLO_ENEMY
    Wait 
    PrintTrainerMessage BATTLER_CATEGORY_ENEMY_SLOT_1, TRAINER_MESSAGE_20
    Wait 
    WaitButtonABTime 30

_148:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_MULTI, _CheckIfLoseMoney
    COMMAND_DE 12, 20
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MESSAGE, 0, _CheckIfLoseMoney
    COMMAND_DE 10, 20
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_MESSAGE, 0, _SlideOutEnemy1

_SlideInEnemy2:
    TrainerSlideIn BATTLER_CATEGORY_ENEMY_SLOT_2, BATTLER_TYPE_SOLO_ENEMY
    Wait 
    PrintTrainerMessage BATTLER_CATEGORY_ENEMY_SLOT_2, TRAINER_MESSAGE_20
    Wait 
    WaitButtonABTime 60
    GoTo _CheckIfLoseMoney

_SlideOutEnemy1:
    TrainerSlideOut BATTLER_CATEGORY_ENEMY_SLOT_1
    Wait 
    GoTo _SlideInEnemy2

_LinkLoss:
    Call BATTLE_SUBSCRIPT_LINK_WIN_LOSE
    End 

_FrontierRecallEnemySlot1:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ENEMY_SLOT_1, BMON_DATA_HP, 0, _FrontierRecallEnemySlot2
    RecallPokemon BATTLER_CATEGORY_ENEMY_SLOT_1

_FrontierRecallEnemySlot2:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_DOUBLES, _FrontierTauntMessages
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ENEMY_SLOT_2, BMON_DATA_HP, 0, _FrontierTauntMessages
    RecallPokemon BATTLER_CATEGORY_ENEMY_SLOT_2

_FrontierTauntMessages:
    Wait 
    HealthbarSlideOut BATTLER_CATEGORY_ENEMY
    Wait 
    TrainerSlideIn BATTLER_CATEGORY_ENEMY_SLOT_1, BATTLER_TYPE_SOLO_ENEMY
    Wait 
    PrintTrainerMessage BATTLER_CATEGORY_ENEMY_SLOT_1, TRAINER_MESSAGE_WIN
    Wait 
    WaitButtonABTime 30
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_MULTI, _IntoFrontierEnd
    TrainerSlideOut BATTLER_CATEGORY_ENEMY_SLOT_1
    Wait 
    TrainerSlideIn BATTLER_CATEGORY_ENEMY_SLOT_2, BATTLER_TYPE_SOLO_ENEMY
    Wait 
    PrintTrainerMessage BATTLER_CATEGORY_ENEMY_SLOT_2, TRAINER_MESSAGE_WIN
    Wait 
    WaitButtonABTime 60
    GoTo _FrontierEndScript

_IntoFrontierEnd:
    WaitButtonABTime 30

_FrontierEndScript:
    SetLinkBattleResult 
    FadeOutBattle 
    Wait 
    End 
