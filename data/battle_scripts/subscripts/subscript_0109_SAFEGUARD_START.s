#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    TrySafeguard _003
    Call BATTLE_SUBSCRIPT_ANIMATION_PREPARED_MESSAGE

_003:
    End 
