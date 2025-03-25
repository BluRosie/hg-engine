.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_RECALC_MON_STATS
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_FORM, 0
    UpdateVar OPCODE_SET, BSCRIPT_VAR_TEMP_DATA, 0
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_PERSONALITY, 1, _024
    LoadArchivedMonData SPECIES_GIRATINA, BSCRIPT_VAR_TEMP_DATA, BASE_ABILITY_1
    GoTo _028

_024:
    LoadArchivedMonData SPECIES_GIRATINA, BSCRIPT_VAR_TEMP_DATA, BASE_ABILITY_2

_028:
    UpdateMonDataFromVar OPCODE_SET, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_ABILITY, BSCRIPT_VAR_CALC_TEMP
    Call BATTLE_SUBSCRIPT_FORM_CHANGE
    RefreshMonData BATTLER_CATEGORY_MSG_BATTLER_TEMP
    End 
