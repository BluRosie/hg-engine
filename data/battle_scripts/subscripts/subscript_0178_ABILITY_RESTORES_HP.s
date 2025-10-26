.include "asm/include/battle_commands.inc"

.data

_000:
    PrintAttackMessage 
    Wait 
    WaitButtonABTime 15
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_MAXHP, BSCRIPT_VAR_CALC_TEMP
    CompareMonDataToVar OPCODE_EQU, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_HP, BSCRIPT_VAR_CALC_TEMP, _033
    //this overwrites the target/defence_client
    //UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_TARGET
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // TODO: Change to "{0} had its HP restored.
    // {0} restored HP using its {1}!
    PrintMessage 635, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait 
    WaitButtonABTime 30
    End 

_033:
    // TODO: Change to "It doesn’t affect {0}..."
    // {0}’s {1} made {2} useless!
    PrintMessage 638, TAG_NICKNAME_ABILITY_MOVE, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    End 
