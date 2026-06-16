.include "asm/include/battle_commands.inc"

.data

_000:
    CompareMonDataToValue OPCODE_FLAG_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS2, STATUS2_LOCKED_INTO_MOVE, _033
    PrintAttackMessage
    Wait 
    WaitButtonABTime 30
    // {0} absorbed light!
    PrintMessage 214, TAG_NICKNAME, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_ATTACKER, BMON_DATA_ABILITY, ABILITY_MEGA_SOL, _Continue
    AbilityPopup BATTLER_CATEGORY_ATTACKER

_Continue:
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_BATTLER_TARGET, BATTLER_NONE, _035

_033:
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    CalcCrit 
    CalcDamage 

_035:
    Call BATTLE_SUBSCRIPT_CHARGE_MOVE_CLEANUP
    End 
