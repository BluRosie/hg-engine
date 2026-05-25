.include "asm/include/battle_commands.inc"

.data

_000:
    AbilityPopup BATTLER_CATEGORY_MSG_BATTLER_TEMP    

    // {0} drank down all the matcha that {1} made!
    PrintMessage 1723, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait 
    WaitButtonABTime 30
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_STAT_CHANGE
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    End 
