.include "asm/include/battle_commands.inc"

.data

// Called by Sonic Boom.
_Start:
    // Fixed-damage moves are banned in Little Cup regulation mode.
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_REGULATION_FLAG, 1, _MoveFailed
    // Still adheres to type immunity, but otherwise ignores the type chart.
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_IGNORE_TYPE_EFFECTIVENESS
    UpdateVar OPCODE_SET, BSCRIPT_VAR_DAMAGE, -20
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
