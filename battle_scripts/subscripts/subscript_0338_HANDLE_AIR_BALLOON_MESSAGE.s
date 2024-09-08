.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_TARGET, BSCRIPT_VAR_MSG_BATTLER_TEMP
    // {0} floats in the air with its {1}!
    PrintMessage 1370, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 
