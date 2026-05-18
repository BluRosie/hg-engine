.include "asm/include/battle_commands.inc"

.data

_Start:
    PrintAttackMessage
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_DEFENDER
    Call BATTLE_SUBSCRIPT_UPDATE_STAT_STAGE