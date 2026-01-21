.include "asm/include/battle_commands.inc"

.data

_Start:
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_HP, 0
    // Set your damage to the magic number that kills you instantly.
    UpdateVar OPCODE_SET, BSCRIPT_VAR_HP_CALC, SELF_KO_DAMAGE
    UpdateHealthBar BATTLER_CATEGORY_ATTACKER
    Call BATTLE_SUBSCRIPT_ATTACK_MESSAGE_AND_ANIMATION
    TryFaintMon BATTLER_CATEGORY_ATTACKER
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_FAINTED
    Call BATTLE_SUBSCRIPT_FAINT_MON
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_EXP_GAIN
    Call BATTLE_SUBSCRIPT_GRANT_EXP

_ReplacementLoop:
    // Try to open the party list.
    TryReplaceFaintedMon BATTLER_CATEGORY_ATTACKER, TRUE, _End
    ShowParty
    WaitMonSelection
    SwitchAndUpdateMon BATTLER_CATEGORY_SWITCHED_MON
    PrintSendOutMessage BATTLER_CATEGORY_SWITCHED_MON
    Wait
    PokemonSendOut BATTLER_CATEGORY_SWITCHED_MON
    WaitTime 72
    HealthbarSlideIn BATTLER_CATEGORY_SWITCHED_MON
    Wait
    // Check for any fainting on switch-in due to hazards.
    Call BATTLE_SUBSCRIPT_HAZARDS_CHECK
    // If not, our wish will be received.
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_FAINTED, _WishReceived
    Call BATTLE_SUBSCRIPT_FAINT_MON
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_EXP_GAIN
    Call BATTLE_SUBSCRIPT_GRANT_EXP
    // If this happens, try to open the party list again.
    TryReplaceFaintedMon BATTLER_CATEGORY_ATTACKER, TRUE, _End
    GoTo _ReplacementLoop

_WishReceived:
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_NONE
    SetHealthbarStatus BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_NONE
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_MAXHP, BSCRIPT_VAR_HP_CALC
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER
    // The healing wish came true!
    BufferMessage 1005, TAG_NONE
    Call BATTLE_SUBSCRIPT_WISH_HEAL

_End:
    End 
