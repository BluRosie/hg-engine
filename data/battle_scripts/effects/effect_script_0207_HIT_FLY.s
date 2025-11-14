.include "asm/include/battle_commands.inc"

.data

// Called by Sky Uppercut.
_Start:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_HIT_FLY
    CalcCrit 
    CalcDamage 
    End 
