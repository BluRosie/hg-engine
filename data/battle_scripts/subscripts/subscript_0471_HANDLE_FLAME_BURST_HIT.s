.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK, _DealDamage
    PlayMoveHitSound BATTLER_CATEGORY_MSG_TEMP
    FlickerMon BATTLER_CATEGORY_MSG_TEMP
    Wait
    //The bursting flame hit {0}!
    PrintMessage 1597, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_WAITING_BATTLERS, 0, _DealDamage

_DealDamage:
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    UpdateHealthBar BATTLER_CATEGORY_MSG_TEMP
    Wait 
    UpdateHealthBarValue BATTLER_CATEGORY_MSG_TEMP
    TryFaintMon BATTLER_CATEGORY_MSG_TEMP
    CompareVarToValue OPCODE_GT, BSCRIPT_VAR_HP_CALC, 0, _End
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP_ASSURANCE_DAMAGE_MASK, BSCRIPT_VAR_HP_CALC

_End:
    End 
