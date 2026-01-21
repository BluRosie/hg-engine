.include "asm/include/battle_commands.inc"

.data

// Called by Splash, Celebrate and Hold Hands.
_Start:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_SPLASH
    End 
