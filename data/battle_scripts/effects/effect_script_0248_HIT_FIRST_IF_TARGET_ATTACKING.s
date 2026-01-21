.include "asm/include/battle_commands.inc"

.data

// Called by Sucker Punch and Thunderclap.
_Start:
    TrySuckerPunch _MoveFailed
    CalcCrit 
    CalcDamage 
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
