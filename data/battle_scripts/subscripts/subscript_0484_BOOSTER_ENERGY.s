#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_Start:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_LINK, _SkipWasUsedUpMessage
    // The {0} was used up...
    PrintMessage 1679, TAG_ITEM, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    WaitButtonABTime 30

_SkipWasUsedUpMessage:
    RemoveItem BATTLER_CATEGORY_MSG_BATTLER_TEMP
    TryActivateSymbiosis _fail
    Call BATTLE_SUBSCRIPT_SYMBIOSIS
    RestoreBoosterEnergyBattler
_fail:
    AbilityPopup BATTLER_CATEGORY_MSG_BATTLER_TEMP
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_MSG_BATTLER_TEMP, ABILITY_QUARK_DRIVE, _quark_drive
_protosynthesis:
    // {0} used its {2} to activate {1}!
    PrintMessage 1680, TAG_NICKNAME_ABILITY_ITEM, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    GoTo _continue
_quark_drive:
    // {0} used its {2} to activate its {1}!
    PrintMessage 1808, TAG_NICKNAME_ABILITY_ITEM, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
_continue:
    Wait
    WaitButtonABTime 30
    // {0}'s {1} was heightened!
    PrintMessage 1689, TAG_NICKNAME_STAT, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitButtonABTime 30
    End
