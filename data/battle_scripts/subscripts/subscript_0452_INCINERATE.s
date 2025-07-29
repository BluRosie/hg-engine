.include "asm/include/battle_commands.inc"

.data

_000:
    TryIncinerate _023
    // {0}’ {1} was burned up!
    PrintMessage 1570, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    RemoveItem BATTLER_CATEGORY_DEFENDER
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 0, _023
    CallFromVar BSCRIPT_VAR_TEMP_DATA

_023:
    End 
