.include "asm/include/battle_commands.inc"

.data

_000:
    AbilityPopup BATTLER_CATEGORY_ATTACKER
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF|BATTLE_STATUS_NO_ATTACK_MESSAGE
    GoBackToBeforeMove
    End
