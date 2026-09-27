#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    ActivateHealingWish _noActivation
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    PlayBattleAnimation BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLE_ANIMATION_RESTORE_HP
    SetHealthbarStatus BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLE_ANIMATION_NONE
    Wait 
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    Call BATTLE_SUBSCRIPT_SHOW_PREPARED_MESSAGE


_noActivation:
    End 
