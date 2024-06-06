.include "asm/include/battle_commands.inc"

.data

_000:
    Call BATTLE_SUBSCRIPT_RECOIL_1_3
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_SECONDARY_EFFECT, _008
    Call BATTLE_SUBSCRIPT_PARALYZE

_008:
    End 
