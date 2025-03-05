.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_CRITICAL_BOOSTS, 1
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_ATTACKER, BMON_DATA_SPECIES, SPECIES_OGERPON, _grass // any other species
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 0, _grass // Teal Mask Form
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 4, _grass // Terastallized state
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 1, _water // Wellspring Mask Form
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 5, _water // Terastallized state
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 2, _fire // Hearthflame Mask Form
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 6, _fire // Terastallized state
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 3, _rock // Cornerstone Mask Form
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_FORM, 7, _rock // Terastallized state

_grass:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_GRASS
    GoTo _continue

_water:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_WATER
    GoTo _continue

_fire:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_FIRE
    GoTo _continue

_rock:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_TYPE, TYPE_ROCK
    GoTo _continue

_continue:
    CalcCrit 
    CalcDamage 
    End 
