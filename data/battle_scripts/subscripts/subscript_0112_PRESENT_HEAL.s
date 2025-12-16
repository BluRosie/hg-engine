.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_DID_NOT_HIT, _End
    PrintAttackMessage 
    Wait 
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HEAL_BLOCK_TURNS, 0, _PreventHealing
    Call BATTLE_SUBSCRIPT_RECOVER_HP

_End:
    End 

// This move actually still works as it did in Generation 4 even with modern Heal Block restrictions.
_PreventHealing:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_HEAL_BLOCK
    // {0} was prevented from healing due to {1}!
    PrintMessage 1054, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    End 
