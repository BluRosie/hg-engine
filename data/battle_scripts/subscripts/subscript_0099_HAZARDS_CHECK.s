#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
_landingPad:
// convert this to use a sort of queue system
// TODO: sharp steel
    JumpToCurrentEntryHazard BATTLER_CATEGORY_SWITCHED_MON, _checkIfShouldDoSpikes, _checkIfShouldDoTSpikes, _checkIfShouldDoStealthRock, _checkIfShouldDoStickyWeb, _end

// anything that should be done after the hazards should go right here...  but we do most of it in JumpToCurrentEntryHazard
_end:
    // queue is done here, mon can faint now
    CompareVarToValue OPCODE_GT, BSCRIPT_VAR_BATTLER_FAINTED, BATTLER_ENEMY2, _noFaint
    UpdateVarFromVar OPCODE_FLAG_INDEX, BSCRIPT_VAR_TEMP_DATA, BSCRIPT_VAR_BATTLER_FAINTED
    UpdateVar OPCODE_LEFT_SHIFT, BSCRIPT_VAR_TEMP_DATA, 24
    CompareVarToVar OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_STATUS, BSCRIPT_VAR_TEMP_DATA, _noFaint
    Call BATTLE_SUBSCRIPT_FAINT_MON

_noFaint:
    End

_checkIfShouldDoSpikes:
    // Skip spikes damage if HDB, but still check TSpikes for grounded Poison types to clear it.
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _landingPad
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_MAGIC_GUARD, _landingPad
    GotoIfGrounded BATTLER_CATEGORY_SWITCHED_MON, _checkSpikes
    GoTo _landingPad

_checkSpikes:
    CheckSpikes BATTLER_CATEGORY_SWITCHED_MON, _landingPad
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_SWITCH
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // {0} is hurt by the spikes!
    PrintMessage 429, TAG_NICKNAME, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30
    // Emergency Exit needs the hazard damage in BSCRIPT_VAR_HP_CALC, Berry/Cheek Pouch would overwrite it
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_FLING_DATA, BSCRIPT_VAR_HP_CALC
    TryEatHpBerry BATTLER_CATEGORY_SWITCHED_MON, _noBerryFromSpikes
    CallFromVar BSCRIPT_VAR_TEMP_DATA
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_HP_CALC, BSCRIPT_VAR_FLING_DATA

_noBerryFromSpikes:
    TryActivateEmergencyExit BATTLER_CATEGORY_MSG_BATTLER_TEMP, _noWimpOutFromSpikes
    Call BATTLE_SUBSCRIPT_HANDLE_WIMP_OUT_EMERGENCY_EXIT
    End

_noWimpOutFromSpikes:
    GoTo _landingPad

_checkIfShouldDoTSpikes:
    // Skip spikes damage if HDB, but still check TSpikes for grounded Poison types to clear it.
    //CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _landingPad
    GotoIfGrounded BATTLER_CATEGORY_SWITCHED_MON, _checkToxicSpikes
    GoTo _landingPad

_checkToxicSpikes:
    CheckToxicSpikes BATTLER_CATEGORY_SWITCHED_MON, _landingPad
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000002, _badlyPoison
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000001, _regularPoison
    // The poison spikes disappeared from around your team’s feet!
    PrintMessage 1065, TAG_NONE_SIDE, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30
    RemoveEntryHazardFromQueue BATTLER_CATEGORY_SWITCHED_MON, HAZARD_IDX_TOXIC_SPIKES
    GoTo _landingPad

_regularPoison:
    // a mon with comatose can not be poisoned by toxic spikes
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_COMATOSE, _landingPad
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _landingPad
    Call BATTLE_SUBSCRIPT_POISON
    GoTo _landingPad

_badlyPoison:
    // a mon with comatose can not be poisoned by toxic spikes
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_COMATOSE, _landingPad
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _landingPad
    Call BATTLE_SUBSCRIPT_BADLY_POISON
    GoTo _landingPad

// TODO: G-Max Steelsurge Hazard should be here at some point

_checkIfShouldDoStickyWeb:
    // Heavy-Duty Boots ignores Sticky Web
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _landingPad
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_WHITE_SMOKE, _landingPad
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_CLEAR_BODY, _landingPad
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_FULL_METAL_BODY, _landingPad
    GotoIfGrounded BATTLER_CATEGORY_SWITCHED_MON, _checkStickyWeb
    GoTo _landingPad
    
_checkStickyWeb:
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_ATTACKER, BSCRIPT_VAR_BATTLER_SWITCH
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_SIDE_CONDITION_ATTACKER, SIDE_CONDITION_STICKY_WEB, _landingPad
    // {0} was caught in a sticky web!
    PrintMessage 1516, TAG_NICKNAME, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30
    // As of Gen 9: If Mirror Armor mon switches in, skip stat drop after displaying caught in webs message
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_MIRROR_ARMOR, _landingPad
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_STAT_CHANGE, BSCRIPT_VAR_BATTLER_SWITCH
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_PARAM, MOVE_SUBSCRIPT_PTR_SPEED_DOWN_1_STAGE
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_STICKY_WEB
    Call BATTLE_SUBSCRIPT_UPDATE_STAT_STAGE
    GoTo _landingPad

_checkIfShouldDoStealthRock:
    // Heavy-Duty Boots to ignore Stealth Rock when airborne
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _landingPad
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_MAGIC_GUARD, _landingPad

_checkStealthRock:
    CheckStealthRock BATTLER_CATEGORY_SWITCHED_MON, _landingPad
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_SWITCH
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // Pointed stones dug into {0}!
    PrintMessage 1079, TAG_NICKNAME, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30
    // EE needs the hazard damage in BSCRIPT_VAR_HP_CALC, but the berry (and Cheek Pouch) would overwrite it
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_FLING_DATA, BSCRIPT_VAR_HP_CALC
    TryEatHpBerry BATTLER_CATEGORY_SWITCHED_MON, _noBerryFromRocks
    CallFromVar BSCRIPT_VAR_TEMP_DATA
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_HP_CALC, BSCRIPT_VAR_FLING_DATA

_noBerryFromRocks:
    TryActivateEmergencyExit BATTLER_CATEGORY_MSG_BATTLER_TEMP, _noWimpOutFromRocks
    Call BATTLE_SUBSCRIPT_HANDLE_WIMP_OUT_EMERGENCY_EXIT
    End

_noWimpOutFromRocks:
    GoTo _landingPad
