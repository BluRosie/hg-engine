.include "asm/include/battle_commands.inc"

.data

_Start:
    // Print the As One message before anything else.
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_AS_ONE_GLASTRIER, _AsOneMessage
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_AS_ONE_SPECTRIER, _CheckUnnerve

_AsOneMessage:
    // {0} has two Abilities!
    PrintMessage 1463, TAG_NICKNAME, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30
    SetAbilityActivatedFlag BATTLER_CATEGORY_SWITCHED_MON

_CheckUnnerve:
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_AS_ONE_GLASTRIER, _UnnerveMessage
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_AS_ONE_SPECTRIER, _UnnerveMessage
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_UNNERVE, _CheckNextHazard

_UnnerveMessage:
    // {0}’s {1} makes the opposing team too nervous to eat Berries!
    PrintMessage 1282, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_SWITCHED_MON, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30
    SetAbilityActivatedFlag BATTLER_CATEGORY_SWITCHED_MON

_CheckNextHazard:
    // TODO: Convert this to use a sort of queue system.
    // TODO: Sharp Steel
    JumpToCurrentEntryHazard BATTLER_CATEGORY_SWITCHED_MON, _CheckIfShouldDoSpikes, _CheckIfShouldDoToxicSpikes, _CheckIfShouldDoStealthRock, _CheckIfShouldDoStickyWeb, _End

// Anything that should be done after the hazards should go right here...  but we do most of it in JumpToCurrentEntryHazard.
_End:
    End

_CheckIfShouldDoSpikes:
    // Skip spikes damage if the Pokemon has an item that makes them immune to hazards (Heavy Duty Boots).
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _CheckNextHazard
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_MAGIC_GUARD, _CheckNextHazard
    GotoIfGrounded BATTLER_CATEGORY_SWITCHED_MON, _CheckSpikes
    GoTo _CheckNextHazard

_CheckSpikes:
    CheckSpikes BATTLER_CATEGORY_SWITCHED_MON, _CheckNextHazard
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_SWITCH
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // {0} is hurt by the spikes!
    PrintMessage 429, TAG_NICKNAME, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30
    GoTo _CheckNextHazard

_CheckIfShouldDoToxicSpikes:
    // Skip spikes effect if the Pokemon has an item that makes them immune to hazards (Heavy Duty Boots).
    // We still need to check them for removal, so proceed regardless and handle items later.
    GotoIfGrounded BATTLER_CATEGORY_SWITCHED_MON, _CheckToxicSpikes
    GoTo _CheckNextHazard

_CheckToxicSpikes:
    // CheckToxicSpikes will remove Toxic Spikes if the Pokemon is Poison-type, and returns the number of layers afterwards.
    CheckToxicSpikes BATTLER_CATEGORY_SWITCHED_MON, _CheckNextHazard
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 2, _BadlyPoison
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 1, _Poison
    // The poison spikes disappeared from around your team’s feet!
    PrintMessage 1065, TAG_NONE_SIDE, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30
    RemoveEntryHazardFromQueue BATTLER_CATEGORY_SWITCHED_MON, HAZARD_IDX_TOXIC_SPIKES
    GoTo _CheckNextHazard

_Poison:
    // A Pokemon with Comatose cannot be poisoned.
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_COMATOSE, _CheckNextHazard
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _End
    Call BATTLE_SUBSCRIPT_POISON
    GoTo _CheckNextHazard

_BadlyPoison:
    // A Pokemon with Comatose cannot be poisoned.
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_COMATOSE, _CheckNextHazard
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _End
    Call BATTLE_SUBSCRIPT_BADLY_POISON
    GoTo _CheckNextHazard

// TODO: G-Max Steelsurge Hazard should be here at some point.

_CheckIfShouldDoStickyWeb:
    // Skip web effect if the Pokemon has an item that makes them immune to hazards (Heavy Duty Boots).
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _CheckNextHazard
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_WHITE_SMOKE, _CheckNextHazard
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_CLEAR_BODY, _CheckNextHazard
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_FULL_METAL_BODY, _CheckNextHazard
    GotoIfGrounded BATTLER_CATEGORY_SWITCHED_MON, _CheckStickyWeb
    GoTo _CheckNextHazard
    
_CheckStickyWeb:
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_ATTACKER, BSCRIPT_VAR_BATTLER_SWITCH
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_SIDE_CONDITION_ATTACKER, SIDE_CONDITION_STICKY_WEB, _CheckNextHazard
    // {0} was caught in a sticky web!
    PrintMessage 1516, TAG_NICKNAME, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30
    // Generation IX: If a Pokemon with Mirror Armor switches in, skip the stat drop after the message has been displayed.
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_MIRROR_ARMOR, _CheckNextHazard
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_STAT_CHANGE, BSCRIPT_VAR_BATTLER_SWITCH
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_PARAM, MOVE_SUBSCRIPT_PTR_SPEED_DOWN_1_STAGE
    Call BATTLE_SUBSCRIPT_UPDATE_STAT_STAGE
    GoTo _CheckNextHazard

_CheckIfShouldDoStealthRock:
    // Skip rocks effect if the Pokemon has an item that makes them immune to hazards (Heavy Duty Boots).
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _CheckNextHazard
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_MAGIC_GUARD, _CheckNextHazard

_CheckStealthRock:
    CheckStealthRock BATTLER_CATEGORY_SWITCHED_MON, _CheckNextHazard
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_SWITCH
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // Pointed stones dug into {0}!
    PrintMessage 1079, TAG_NICKNAME, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30
    GoTo _CheckNextHazard
