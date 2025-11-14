.include "asm/include/battle_commands.inc"

.data

_Start:
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_CRITICAL_BOOSTS, 1
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_ATTACKER, BMON_DATA_SPECIES, SPECIES_OGERPON, _SetGrass // Any other species.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 0, _SetGrass // Teal Mask Form.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 4, _SetGrass // Terastallized state.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 1, _SetWater // Wellspring Mask Form.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 5, _SetWater // Terastallized state.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 2, _SetFire // Hearthflame Mask Form.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 6, _SetFire // Terastallized state.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 3, _SetRock // Cornerstone Mask Form.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 7, _SetRock // Terastallized state.

_SetGrass:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_GRASS
    GoTo _CalcDamage

_SetWater:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_WATER
    GoTo _CalcDamage

_SetFire:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_FIRE
    GoTo _CalcDamage

_SetRock:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_ROCK
    GoTo _CalcDamage

_CalcDamage:
    CalcCrit 
    CalcDamage 
    End 
