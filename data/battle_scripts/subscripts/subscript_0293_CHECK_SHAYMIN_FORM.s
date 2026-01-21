.include "asm/include/battle_commands.inc"

.data

// This script is used to revert Shaymin to Land Forme when it is Frozen in battle.
_Start:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_BATTLER_TARGET, BATTLER_NONE, _End
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_SPECIES, SPECIES_SHAYMIN, _End
    // If Shaymin is already in Land Forme, we don't need to run this script.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_FORM, 0, _End
    // Strangely, Shaymin's form cannot revert when behind a substitute.
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS2, STATUS2_SUBSTITUTE, _End
    // Only revert if Shaymin is Frozen.
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS, STATUS_FREEZE, _End
    // Change to Land Forme.
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_FORM, 0
    UpdateVar OPCODE_SET, BSCRIPT_VAR_TEMP_DATA, 0
    // Check which ability to set.
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_PERSONALITY, 1, _SetAbility2
    LoadArchivedMonData SPECIES_SHAYMIN, BSCRIPT_VAR_TEMP_DATA, BASE_ABILITY_1
    GoTo _SetStatsAndType

_SetAbility2:
    LoadArchivedMonData SPECIES_SHAYMIN, BSCRIPT_VAR_TEMP_DATA, BASE_ABILITY_2
    // If there is no second ability, fall back to the ability in slot 1. This should always occur in vanilla, as Shaymin has only 1 ability per forme.
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_TEMP_DATA, 0, _SetStatsAndType
    LoadArchivedMonData SPECIES_SHAYMIN, BSCRIPT_VAR_TEMP_DATA, BASE_ABILITY_1

_SetStatsAndType:
    // Recalculate Shaymin's stats for the current form.
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_RECALC_MON_STATS
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_ABILITY, BSCRIPT_VAR_CALC_TEMP
    // Reset Shaymin's type.
    LoadArchivedMonData SPECIES_SHAYMIN, BSCRIPT_VAR_TEMP_DATA, BASE_TYPE1
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_TYPE_1, BSCRIPT_VAR_CALC_TEMP
    LoadArchivedMonData SPECIES_SHAYMIN, BSCRIPT_VAR_TEMP_DATA, BASE_TYPE2
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_TYPE_2, BSCRIPT_VAR_CALC_TEMP
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_TARGET
    Call BATTLE_SUBSCRIPT_FORM_CHANGE
    RefreshMonData BATTLER_CATEGORY_DEFENDER

_End:
    End 
