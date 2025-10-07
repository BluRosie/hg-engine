.include "asm/include/battle_commands.inc"

.data

_Start:
    // If the affected battler has Magic Guard, do nothing.
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_MSG_TEMP, ABILITY_MAGIC_GUARD, _End
    // If the affected battler does not have Poison Heal, proceed to poison damage.
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_MSG_TEMP, ABILITY_POISON_HEAL, _PoisonDamage

_PoisonHeal:
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_MAXHP, BSCRIPT_VAR_HP_CALC
    CompareMonDataToVar OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_HP, BSCRIPT_VAR_HP_CALC, _End
    DivideVarByValue BSCRIPT_VAR_HP_CALC, 8
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    // {0} restored HP using its {1}!
    PrintMessage 635, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    WaitButtonABTime 30
    Call BATTLE_SUBSCRIPT_SWITCH_IN_ABILITY_CHECK
    End 

_PoisonDamage:
    // {0} is hurt by poison!
    PrintMessage 73, TAG_NICKNAME, BATTLER_CATEGORY_MSG_TEMP
    Wait
    WaitButtonABTime 30
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_POISONED
    Wait
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    GoToSubscript BATTLE_SUBSCRIPT_UPDATE_HP
    // TODO: Investigate unreachable code.
    Call BATTLE_SUBSCRIPT_SWITCH_IN_ABILITY_CHECK

_End:
    End 
