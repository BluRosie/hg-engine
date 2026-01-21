.include "asm/include/battle_commands.inc"

.data

_Start:
    GoToIfTerastallized BATTLER_CATEGORY_ATTACKER, _CheckTeraGhost

_CheckGhost:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_TYPE_1, TYPE_GHOST, _HandleTargetRedirect
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_TYPE_2, TYPE_GHOST, _HandleTargetRedirect
    GoToIfThirdType BATTLER_CATEGORY_ATTACKER, TYPE_GHOST, _HandleTargetRedirect
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_TO_ATTACKER|MOVE_SUBSCRIPT_PTR_CURSE_NORMAL
    End 

_CheckTeraGhost:
    GoToIfTeraType BATTLER_CATEGORY_ATTACKER, TYPE_GHOST, _HandleTargetRedirect
    GoTo _CheckGhost

_HandleTargetRedirect:
    // If we were not Ghost-type when the move was selected, target a random opponent.
    CompareVarToVar OPCODE_NEQ, BSCRIPT_VAR_BATTLER_ATTACKER, BSCRIPT_VAR_BATTLER_TARGET, _HandleGhostCurse
    SetRandomTarget BATTLER_CATEGORY_ATTACKER

_HandleGhostCurse:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT, MOVE_SIDE_EFFECT_ON_HIT|MOVE_SUBSCRIPT_PTR_CURSE_GHOST
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_EFFECT_CHANCE, 1
    End
