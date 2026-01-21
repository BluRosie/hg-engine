.include "asm/include/battle_commands.inc"

.data

// Called by Leech Seed and Sappy Seed.
_Start:
    CheckSubstitute BATTLER_CATEGORY_DEFENDER, _MoveFailed
    // Grass-types cannot be seeded.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_TYPE_1, TYPE_GRASS, _CannotBeSeeded
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_TYPE_2, TYPE_GRASS, _CannotBeSeeded
    GoToIfThirdType BATTLER_CATEGORY_SIDE_EFFECT_MON, TYPE_GRASS, _CannotBeSeeded
    // Active Tera type should be checked here.
    PrintAttackMessage 
    Wait 
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_LEECH_SEED, _MoveEvaded
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_SEMI_INVULNERABLE|MOVE_STATUS_MISSED, _MoveEvaded
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    UpdateMonDataFromVar OPCODE_FLAG_ON, BATTLER_CATEGORY_DEFENDER, BMON_DATA_MOVE_EFFECT, BSCRIPT_VAR_BATTLER_ATTACKER
    UpdateMonData OPCODE_FLAG_ON, BATTLER_CATEGORY_DEFENDER, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_LEECH_SEED
    // {0} was seeded!
    PrintMessage 290, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    GoTo _Cleanup

_MoveEvaded:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_MORE_WORK
    WaitButtonABTime 30
    // {0} evaded the attack!
    PrintMessage 293, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER

_Cleanup:
    Wait 
    WaitButtonABTime 30
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 

_CannotBeSeeded:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_NO_EFFECT
    End 
