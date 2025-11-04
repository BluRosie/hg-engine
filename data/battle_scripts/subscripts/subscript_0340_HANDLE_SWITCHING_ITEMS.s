.include "asm/include/battle_commands.inc"

.data

// Called by Red Card and Eject Button.
_Start:
    // Don't bother with this script if we've fainted after being hit.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HP, 0, _End
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HELD_ITEM, ITEM_RED_CARD, _HandleRedCard
    // TODO: Eject Button text.
    RemoveItem BATTLER_CATEGORY_MSG_TEMP
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_SHADOW_FORCE
    Call BATTLE_SUBSCRIPT_ATTACK_THEN_SWITCH_OUT
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_SHADOW_FORCE
    End

_HandleRedCard:
    // TODO: Red Card text.
    Call BATTLE_SUBSCRIPT_FORCE_TARGET_TO_SWITCH_OR_FLEE

_End:
    End 
