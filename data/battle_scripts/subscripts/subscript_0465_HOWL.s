.include "asm/include/battle_commands.inc"

.data

_Start:
    PrintAttackMessage
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STAT_CHANGE_ATK, 12, _StageMaxMessage
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_STAT_BOOST
    Wait 
    UpdateMonData OPCODE_ADD, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STAT_CHANGE_ATK, 1
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MESSAGE, STAT_ATTACK
    // {0}'s {1} rose!
    PrintMessage 750, TAG_NICKNAME_STAT, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    GoTo _CheckAlly

_StageMaxMessage:
    Wait 
    WaitButtonABTime 30
    // {0}'s stats won't go any higher!
    PrintMessage 768, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30

_CheckAlly:
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_DOUBLES, _Cleanup
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER_PARTNER, BMON_DATA_HP, 0, _Cleanup
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER_PARTNER, BMON_DATA_ABILITY, ABILITY_SOUNDPROOF, _SoundproofMessage_Ally
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER_PARTNER, BMON_DATA_STAT_CHANGE_ATK, 12, _StageMaxMessage_Ally
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER_PARTNER, BATTLE_ANIMATION_STAT_BOOST
    Wait 
    UpdateMonData OPCODE_ADD, BATTLER_CATEGORY_ATTACKER_PARTNER, BMON_DATA_STAT_CHANGE_ATK, 1
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MESSAGE, STAT_ATTACK
    // {0}'s {1} rose!
    PrintMessage 750, TAG_NICKNAME_STAT, BATTLER_CATEGORY_ATTACKER_PARTNER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    GoTo _Cleanup

_StageMaxMessage_Ally:
    WaitButtonABTime 30
    // {0}'s stats won't go any higher!
    PrintMessage 768, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER_PARTNER
    Wait 
    WaitButtonABTime 30
    GoTo _Cleanup

_SoundproofMessage_Ally:
    Wait 
    WaitButtonABTime 15
    // {0}'s {1} blocks {2}!
    PrintMessage 689, TAG_NICKNAME_ABILITY_MOVE, BATTLER_CATEGORY_ATTACKER_PARTNER, BATTLER_CATEGORY_ATTACKER_PARTNER, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30

_Cleanup:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK
    End
