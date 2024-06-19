.include "asm/include/battle_commands.inc"

.data

_000:
    CheckSubstitute BATTLER_CATEGORY_SIDE_EFFECT_MON, _018
    SetBindingTurns _018
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_BIND_TARGET, BSCRIPT_VAR_BATTLER_ATTACKER
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_BINDING_MOVE_NO, BSCRIPT_VAR_MOVE_NO_CUR

_018:
    End 
