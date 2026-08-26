#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    TryReplaceFaintedMon BATTLER_CATEGORY_ATTACKER, TRUE, _008
    TryHealingWish _008
    End 

_008:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
