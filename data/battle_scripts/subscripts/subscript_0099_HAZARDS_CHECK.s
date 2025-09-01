.include "asm/include/battle_commands.inc"

.data

_000:
_checkAsOne:
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_AS_ONE_GLASTRIER, _printAsOneMessage
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_AS_ONE_SPECTRIER, _checkUnnerve
_printAsOneMessage:
    // {0} has two Abilities!
    PrintMessage 1463, TAG_NICKNAME, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30
    SetAbilityActivatedFlag BATTLER_CATEGORY_SWITCHED_MON
_checkUnnerve:
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_AS_ONE_GLASTRIER, _printUnnerveMessage
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_AS_ONE_SPECTRIER, _printUnnerveMessage
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_UNNERVE, _landingPad
_printUnnerveMessage:
    // {0}’s {1} makes the opposing team too nervous to eat Berries!
    PrintMessage 1282, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_SWITCHED_MON, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30
    SetAbilityActivatedFlag BATTLER_CATEGORY_SWITCHED_MON

_landingPad:
// convert this to use a sort of queue system
// TODO: sharp steel
    JumpToCurrentEntryHazard BATTLER_CATEGORY_SWITCHED_MON, _checkIfShouldDoSpikes, _checkIfShouldDoTSpikes, _checkIfShouldDoStealthRock, _checkIfShouldDoStickyWeb, _end

// anything that should be done after the hazards should go right here...  but we do most of it in JumpToCurrentEntryHazard
_end:
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
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _end
    Call BATTLE_SUBSCRIPT_POISON
    GoTo _landingPad

_badlyPoison:
    // a mon with comatose can not be poisoned by toxic spikes
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_COMATOSE, _landingPad
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _end
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
    GoTo _landingPad
