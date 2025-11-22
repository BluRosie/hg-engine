.include "asm/include/battle_commands.inc"

.data

// Called by Quick Claw and Custap Berry.
_Start:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_BATTLER_SPEED_TEMP, 0
    // Cache the attacker that we use for the message.
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_CALC_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER

_QuickActivationLoop:
    GetMonBySpeedOrder BSCRIPT_VAR_MSG_BATTLER_TEMP
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_CUSTAP_FLAG, 1, _QuickActivationMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_QUICK_CLAW_FLAG, 1, _QuickActivationMessage
    GoTo _ResetLoop

_QuickActivationMessage:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    // {0} can act faster than normal, thanks to its {1}!
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_ATTACKER, BSCRIPT_VAR_MSG_BATTLER_TEMP
    PrintMessage 1254, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_CUSTAP_FLAG, 1, _RemoveCustapBerry

_ResetLoop:
    // Restore attacker from our cached value.
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_ATTACKER, BSCRIPT_VAR_CALC_TEMP
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_BATTLER_SPEED_TEMP, 1
    GoToIfValidMon BSCRIPT_VAR_BATTLER_SPEED_TEMP, _QuickActivationLoop
    End

_RemoveCustapBerry:
    RemoveItem BATTLER_CATEGORY_ATTACKER
    GoTo _ResetLoop
