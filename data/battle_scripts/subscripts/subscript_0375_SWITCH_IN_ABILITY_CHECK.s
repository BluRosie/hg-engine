.include "asm/include/battle_commands.inc"

.data

_Start:
    SwitchInAbilityCheck _End
    CallFromVar BSCRIPT_VAR_TEMP_DATA
    GoTo _Start

_End:
    End 

