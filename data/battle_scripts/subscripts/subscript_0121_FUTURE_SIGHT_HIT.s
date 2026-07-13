.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_ATTACK_MESSAGE
    PrintBufferedMessage
    Wait
    WaitButtonABTime 30
    End
