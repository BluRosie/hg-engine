.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 15
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STAT_CHANGE_ATK, 12, _032
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_STAT_BOOST
    Wait 
    UpdateMonData OPCODE_ADD, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_STAT_CHANGE_ATK, 1
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MESSAGE, 1
    // {0}’s {1} raised its {2}!
    PrintMessage 622, TAG_NICKNAME_ABILITY_STAT, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 

_032:
    // {0}’s {1} made {2} useless!
    PrintMessage 638, TAG_NICKNAME_ABILITY_MOVE, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
    End 
