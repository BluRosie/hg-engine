.include "asm/include/battle_commands.inc"

.data

// Called by Gastro Acid.
_Start:
    CheckSubstitute BATTLER_CATEGORY_DEFENDER, _MoveFailed
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_DEFENDER, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_ABILITY_SUPPRESSED, _MoveFailed
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_SEMI_INVULNERABLE|MOVE_STATUS_MISSED, _MoveFailed
    // Ability-based failure is handled in src/individual/BattleController_BeforeMove.c.
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    UpdateMonData OPCODE_FLAG_ON, BATTLER_CATEGORY_DEFENDER, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_ABILITY_SUPPRESSED
    // {0}’s ability was suppressed!
    PrintMessage 1012, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    End 

_MoveFailed:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End 
