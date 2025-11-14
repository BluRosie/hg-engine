.include "asm/include/battle_commands.inc"

.data

// Called by Acupressure.
_Start:
    CheckSubstitute BATTLER_CATEGORY_DEFENDER, _MoveFailed
    BoostRandomStatBy2 _MoveFailed
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
