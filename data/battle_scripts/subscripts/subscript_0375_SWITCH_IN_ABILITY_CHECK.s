.include "asm/include/battle_commands.inc"

.data

Begin:
    SwitchInAbilityCheck LoopEnd
    CallFromVar BSCRIPT_VAR_TEMP_DATA
    GoTo Begin

LoopEnd:
    End 

