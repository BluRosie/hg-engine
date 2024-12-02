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
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_UNNERVE, _realHazardsCheck
_printUnnerveMessage:
    // {0}’s {1} makes the opposing team too nervous to eat Berries!
    PrintMessage 1282, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_SWITCHED_MON, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30
    SetAbilityActivatedFlag BATTLER_CATEGORY_SWITCHED_MON
_realHazardsCheck:
    // toxic spikes can inflict poison through magic guard, but not subsequently damage the mon (which is already handled in the damage subscript)
    //CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_MAGIC_GUARD, _105
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_GRAVITY, _checkSpikes
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_SPEED_DOWN_GROUNDED, _checkSpikes
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_LEVITATE, _checkStealthRock
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SWITCHED_MON, BMON_DATA_TYPE_1, TYPE_FLYING, _checkStealthRock
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SWITCHED_MON, BMON_DATA_TYPE_2, TYPE_FLYING, _checkStealthRock
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_SWITCHED_MON, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_MAGNET_RISE, _checkStealthRock
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_UNGROUND_DESTROYED_ON_HIT, _checkStealthRock

_checkSpikes:
    // Skip spikes damage if HDB, but still check TSpikes for grounded Poison types to clear it.
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _checkToxicSpikes
    CheckSpikes BATTLER_CATEGORY_SWITCHED_MON, _checkToxicSpikes
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_SWITCH
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // {0} is hurt by the spikes!
    PrintMessage 429, TAG_NICKNAME, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30

_checkToxicSpikes:
    CheckToxicSpikes BATTLER_CATEGORY_SWITCHED_MON, _checkStickyWeb
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000002, _badlyPoison
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000001, _regularPoison
    // The poison spikes disappeared from around your team’s feet!
    PrintMessage 1065, TAG_NONE_SIDE, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30
    GoTo _checkStickyWeb

_regularPoison:
    // a mon with comatose can not be poisoned by toxic spikes
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_COMATOSE, _checkStickyWeb
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _end
    Call BATTLE_SUBSCRIPT_POISON
    GoTo _checkStickyWeb

_badlyPoison:
    // a mon with comatose can not be poisoned by toxic spikes
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_COMATOSE, _checkStickyWeb
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _end
    Call BATTLE_SUBSCRIPT_BADLY_POISON

// TODO: G-Max Steelsurge Hazard should be here for the correct order

_checkStickyWeb:
    // Heavy-Duty Boots ignores Sticky Web
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _checkStealthRock
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_ATTACKER, BSCRIPT_VAR_BATTLER_SWITCH
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_SIDE_CONDITION_ATTACKER, SIDE_CONDITION_STICKY_WEB, _checkStealthRock
    // {0} was caught in a sticky web!
    PrintMessage 1486, TAG_NICKNAME, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30
    // As of Gen 9: If Mirror Armor mon switches in, skip stat drop after displaying caught in webs message
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_MIRROR_ARMOR, _checkStealthRock
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_STAT_CHANGE, BSCRIPT_VAR_BATTLER_SWITCH
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_PARAM, MOVE_SUBSCRIPT_PTR_SPEED_DOWN_1_STAGE
    Call BATTLE_SUBSCRIPT_UPDATE_STAT_STAGE
    // Handle Defiant and Competitive. In Gen 8, Court Changed Sticky Web did not proc these abilities. This is changed in Gen 9.
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_DEFIANT, _checkCompetitive
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_ABILITY
    Call BATTLE_SUBSCRIPT_HANDLE_DEFIANT

_checkCompetitive:
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_SWITCHED_MON, ABILITY_COMPETITIVE, _checkStealthRock
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_TYPE, SIDE_EFFECT_TYPE_ABILITY
    Call BATTLE_SUBSCRIPT_HANDLE_COMPETITIVE

_checkStealthRock:
    // Heavy-Duty Boots to ignore Stealth Rock when airborne
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SWITCHED_MON, HOLD_EFFECT_IGNORE_ENTRY_HAZARDS, _end
    CheckStealthRock BATTLER_CATEGORY_SWITCHED_MON, _end
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_SWITCH
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // Pointed stones dug into {0}!
    PrintMessage 1079, TAG_NICKNAME, BATTLER_CATEGORY_SWITCHED_MON
    Wait
    WaitButtonABTime 30

_end:
    End
