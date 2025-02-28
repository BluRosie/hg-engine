.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    // {0} is not affected by {1} thanks to its Safety Goggles!
    PrintMessage 1487, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_ATTACKER
    Wait
    WaitButtonABTime 30
    End
