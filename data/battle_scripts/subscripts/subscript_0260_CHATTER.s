#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    CheckChatterActivation _003
    Call BATTLE_SUBSCRIPT_CONFUSE

_003:
    End 
