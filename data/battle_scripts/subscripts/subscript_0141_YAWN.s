.include "asm/include/battle_commands.inc"

.data

_000:
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_INSOMNIA, _101
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_VITAL_SPIRIT, _101
    CheckIgnoreWeather afterLeafGuardCheck
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SUN_ALL, afterLeafGuardCheck
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_LEAF_GUARD, _101

afterLeafGuardCheck:
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_FLOWER_VEIL, checkGrassForFlowerVeilSingle
    CheckIgnorableAbility CHECK_OPCODE_HAVE, BATTLER_RELATIVE_ALLY|BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_FLOWER_VEIL, checkGrassForFlowerVeilDouble
    GoTo afterGrassChecks

checkGrassForFlowerVeilSingle:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_1, TYPE_GRASS, _101
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_2, TYPE_GRASS, _101
    GoToIfThirdType BATTLER_CATEGORY_SIDE_EFFECT_MON, TYPE_GRASS, _101
    GoTo afterGrassChecks

checkGrassForFlowerVeilDouble:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_1, TYPE_GRASS, handleFlowerVeilMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_TYPE_2, TYPE_GRASS, handleFlowerVeilMessage
    GoToIfThirdType BATTLER_CATEGORY_SIDE_EFFECT_MON, TYPE_GRASS, handleFlowerVeilMessage

afterGrassChecks:
    GotoIfGrounded BATTLER_CATEGORY_SIDE_EFFECT_MON, checkElectricTerrain
    GoTo _056

checkElectricTerrain:
    GotoIfTerrainOverlayIsType ELECTRIC_TERRAIN, failed
    GotoIfTerrainOverlayIsType ELECTRIC_TERRAIN, failed

_056:
    PrintAttackMessage
    Wait
    CheckSubstitute BATTLER_CATEGORY_SIDE_EFFECT_MON, _112
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_SIDE_EFFECT_MON, ABILITY_SOUNDPROOF, _071
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_UPROAR, _112

_071:
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_SIDE_EFFECT_MON, BMON_DATA_STATUS, STATUS_NONE, _112
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_SIDE_CONDITION_STAT_CHANGE, SIDE_CONDITION_SAFEGUARD, _118
_bypassSafeguard:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_SEMI_INVULNERABLE|MOVE_STATUS_MISSED, _112
    TryYawn _112
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait
    // {0} made {1} drowsy!
    PrintMessage 545, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_SIDE_EFFECT_MON
    Wait
    WaitButtonABTime 30
    End

_101:
    PrintAttackMessage
    Wait
    WaitButtonABTime 30
    // {0}’s {1} made it ineffective!
    PrintMessage 734, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLER_CATEGORY_SIDE_EFFECT_MON
    GoTo _124

_112:
    WaitButtonABTime 30
    Call BATTLE_SUBSCRIPT_BUT_IT_FAILED
    GoTo _131

_118:
    // infiltrator bypasses safeguard and this is specifically for yawn so we don't need to worry about much more than this
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_ABILITY, ABILITY_INFILTRATOR, _bypassSafeguard
    WaitButtonABTime 30
    // {0} is protected by Safeguard!
    PrintMessage 200, TAG_NICKNAME, BATTLER_CATEGORY_SIDE_EFFECT_MON

_124:
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK

_131:
    End

handleFlowerVeilMessage:
    PrintAttackMessage
    Wait
    WaitButtonABTime 30
    // {0}’s {1} made it ineffective!
    PrintMessage 734, TAG_NICKNAME_ABILITY, BATTLER_RELATIVE_ALLY|BATTLER_CATEGORY_SIDE_EFFECT_MON, BATTLER_RELATIVE_ALLY|BATTLER_CATEGORY_SIDE_EFFECT_MON
    GoTo _124

failed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End
