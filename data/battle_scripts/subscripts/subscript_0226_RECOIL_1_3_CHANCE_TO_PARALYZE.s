.include "asm/include/battle_commands.inc"

.data

// Called by Volt Tackle.
_Start:
    Call BATTLE_SUBSCRIPT_RECOIL_1_3
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_SECONDARY_EFFECT, _End
    Call BATTLE_SUBSCRIPT_PARALYZE

_End:
    End 
