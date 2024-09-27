.include "asm/include/battle_commands.inc"

.data

// TODO Loop over battlers here

.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateVar OPCODE_SET, BSCRIPT_VAR_BATTLER_SPEED_TEMP, 0

_loop:
    GetMonBySpeedOrder BSCRIPT_VAR_MSG_BATTLER_TEMP

    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_CUSTAP_FLAG, 1, _printMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_QUICK_CLAW_FLAG, 0, _continue
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_WAITING_BATTLERS, 1, _noMessage
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    GoTo _noMessage

_printMessage:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_WAITING_BATTLERS, 1, _noMessage
    // {0} can act faster than normal, thanks to its {1}!
    PrintMessage 1254, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_MSG_TEMP, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_noMessage:
// TODO: move these to later in the state machine
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_QUICK_CLAW_FLAG, 0, _unsetCustapFlag
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_QUICK_CLAW_FLAG, 0

_unsetCustapFlag:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_CUSTAP_FLAG, 0, _continue
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_CUSTAP_FLAG, 0
    RemoveItem BATTLER_CATEGORY_MSG_TEMP

_continue:
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_BATTLER_SPEED_TEMP, 1
    GoToIfValidMon BSCRIPT_VAR_BATTLER_SPEED_TEMP, _loop
    End
