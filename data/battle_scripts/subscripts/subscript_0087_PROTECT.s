.include "asm/include/battle_commands.inc"

.data

_Start:
    TryProtection _MoveFailed
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    Call BATTLE_SUBSCRIPT_SHOW_PREPARED_MESSAGE
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
