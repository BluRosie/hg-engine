.include "asm/include/battle_commands.inc"

.data

_000:
    // Fell Stinger's +3 Atk only procs if it KOs the target.
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, 0, _End
    UpdateVar OPCODE_SET, BSCRIPT_VAR_SIDE_EFFECT_PARAM, MOVE_SUBSCRIPT_PTR_ATTACK_UP_3_STAGES
    Call BATTLE_SUBSCRIPT_UPDATE_STAT_STAGE

_End:
    End
