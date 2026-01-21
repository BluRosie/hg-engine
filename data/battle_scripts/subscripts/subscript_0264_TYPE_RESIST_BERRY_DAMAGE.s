.include "asm/include/battle_commands.inc"

.data

// This script is no longer used-- the damage reduction effect is now handled under Resist Berries in src/battle/battle_calc_damage.c.
_Start:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_IGNORE_TYPE_IMMUNITY|BATTLE_STATUS_IGNORE_TYPE_EFFECTIVENESS, _End
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_ONE_HIT_KO, _End
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_NORMALIZE, _CheckRefrigerate
    UpdateVar OPCODE_SET, BSCRIPT_VAR_CALC_TEMP, TYPE_NORMAL
    GoTo _CheckBerry

_CheckRefrigerate:
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_REFRIGERATE, _CheckAerilate
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_MOVE_TYPE, TYPE_NORMAL, _GetMoveType
    UpdateVar OPCODE_SET, BSCRIPT_VAR_CALC_TEMP, TYPE_ICE
    GoTo _CheckBerry

_CheckAerilate:
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_AERILATE, _CheckGalvanize
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_MOVE_TYPE, TYPE_NORMAL, _GetMoveType
    UpdateVar OPCODE_SET, BSCRIPT_VAR_CALC_TEMP, TYPE_FLYING
    GoTo _CheckBerry

_CheckGalvanize:
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_GALVANIZE, _CheckPixilate
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_MOVE_TYPE, TYPE_NORMAL, _GetMoveType
    UpdateVar OPCODE_SET, BSCRIPT_VAR_CALC_TEMP, TYPE_ELECTRIC
    GoTo _CheckBerry

_CheckPixilate:
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_PIXILATE, _AdjustMoveType
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_MOVE_TYPE, TYPE_NORMAL, _GetMoveType
    UpdateVar OPCODE_SET, BSCRIPT_VAR_CALC_TEMP, TYPE_FAIRY
    GoTo _CheckBerry

_AdjustMoveType:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_TYPE, TYPE_NORMAL, _GetMoveType
    UpdateVarFromVar OPCODE_GET, BSCRIPT_VAR_MOVE_TYPE, BSCRIPT_VAR_CALC_TEMP
    GoTo _CheckBerry

_GetMoveType:
    GetCurrentMoveData MOVEATTRIBUTE_TYPE

_CheckBerry:
    GetItemHoldEffect BATTLER_CATEGORY_MSG_TEMP, BSCRIPT_VAR_TEMP_DATA
    // Normal-type damage reduction occurs regardless of move effectiveness.
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_NORMAL, _HandleChilanBerry
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_SUPER_EFFECTIVE, _End
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_FIRE, _HandleOccaBerry
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_WATER, _HandlePasshoBerry
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_ELECTRIC, _HandleWacanBerry
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_GRASS, _HandleRindoBerry
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_ICE, _HandleYacheBerry
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_FIGHT, _HandleChopleBerry
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_POISON, _HandleKebiaBerry
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_GROUND, _HandleShucaBerry
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_FLYING, _HandleCobaBerry
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_PSYCHIC, _HandlePayapaBerry
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_BUG, _HandleTangaBerry
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_ROCK, _HandleChartiBerry
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_GHOST, _HandleKasibBerry
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_DRAGON, _HandleHabanBerry
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_DARK, _HandleColburBerry
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_FAIRY, _HandleRoseliBerry
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, HOLD_EFFECT_WEAKEN_SE_STEEL, _HandleBabiriBerry
    GoTo _End

_HandleChilanBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_NORMAL, _ReduceDamage
    GoTo _End

_HandleOccaBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_FIRE, _ReduceDamage
    GoTo _End

_HandlePasshoBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_WATER, _ReduceDamage
    GoTo _End

_HandleWacanBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_ELECTRIC, _ReduceDamage
    GoTo _End

_HandleRindoBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_GRASS, _ReduceDamage
    GoTo _End

_HandleYacheBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_ICE, _ReduceDamage
    GoTo _End

_HandleChopleBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_FIGHTING, _ReduceDamage
    GoTo _End

_HandleKebiaBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_POISON, _ReduceDamage
    GoTo _End

_HandleShucaBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_GROUND, _ReduceDamage
    GoTo _End

_HandleCobaBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_FLYING, _ReduceDamage
    GoTo _End

_HandlePayapaBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_PSYCHIC, _ReduceDamage
    GoTo _End

_HandleTangaBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_BUG, _ReduceDamage
    GoTo _End

_HandleChartiBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_ROCK, _ReduceDamage
    GoTo _End

_HandleKasibBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_GHOST, _ReduceDamage
    GoTo _End

_HandleHabanBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_DRAGON, _ReduceDamage
    GoTo _End

_HandleColburBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_DARK, _ReduceDamage
    GoTo _End

_HandleRoseliBerry:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, TYPE_FAIRY, _ReduceDamage
    GoTo _End

_HandleBabiriBerry:
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_CALC_TEMP, TYPE_STEEL, _End

_ReduceDamage:
    // Unused.
    
_End:
    End 
