.include "asm/include/battle_commands.inc"

.data

_000:
    TrySuckerPunch _004
    CalcCrit 
    CalcDamage 
    End 

_004:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
