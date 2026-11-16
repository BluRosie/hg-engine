#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    Call BATTLE_SUBSCRIPT_SEND_OUT_PENDING_SWITCHES
    GoToSubscript BATTLE_SUBSCRIPT_SWITCH_IN_ABILITY_CHECK
    End 
