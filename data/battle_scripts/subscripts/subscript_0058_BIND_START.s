.include "asm/include/battle_commands.inc"

.data

// Called by Bind, Wrap, Fire Spin, Clamp, Sand Tomb and Magma Storm.
_Start:
    CheckSubstitute BATTLER_CATEGORY_SIDE_EFFECT_MON, _End
    SetBindingTurns _End
    PrintBufferedMessage 
    Wait 
    WaitButtonABTime 30
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_BIND_TARGET, BSCRIPT_VAR_BATTLER_ATTACKER
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_BINDING_MOVE_NO, BSCRIPT_VAR_MOVE_NO_CUR

_End:
    End 
