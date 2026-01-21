.include "asm/include/battle_commands.inc"

.data

// Called by U-Turn, Volt Switch, Flip Turn and Eject Button.
_Start:
    // Check if the battle is over as a result of this move/effect.
    CheckBlackOut BATTLER_CATEGORY_DEFENDER, _End
    TryReplaceFaintedMon BATTLER_CATEGORY_ATTACKER, TRUE, _End
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_SHADOW_FORCE, _CheckDestinyBond
    TriggerAbilityOnHit _CheckHeldItem
    CallFromVar BSCRIPT_VAR_TEMP_DATA

_CheckHeldItem:
    TriggerHeldItemOnPivotMove _CheckDestinyBond
    CallFromVar BSCRIPT_VAR_TEMP_DATA

_CheckDestinyBond:
    // Check if the target fainted.
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, 0, _CheckGrudge
    // Check if the target had Destiny Bond active.
    CompareMonDataToValue OPCODE_FLAG_NOT, BATTLER_CATEGORY_DEFENDER, BMON_DATA_STATUS2, STATUS2_DESTINY_BOND, _CheckGrudge
    // Skip the effect if the target was defeated by an ally.
    IfSameSide BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_DEFENDER, _CheckGrudge
    // Skip the effect if the attacker has already fainted due to another effect, such as Life Orb or Rough Skin.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_HP, 0, _CheckGrudge
    // {0} took {1} down with it!
    PrintMessage 391, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_ATTACKER
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_HP, BSCRIPT_VAR_HP_CALC
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_HP_CALC, -1
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP
    PlayFaintAnimation 
    Wait 
    HealthbarSlideOut BATTLER_CATEGORY_FAINTED_MON
    // {0} fainted!
    PrintMessage 30, TAG_NICKNAME, BATTLER_CATEGORY_FAINTED_MON
    Wait 
    WaitButtonABTime 30
    // If the opponent's Pokemon fainted, increment the relevant game record.
    IncrementGameStat BATTLER_CATEGORY_FAINTED_MON, BATTLER_TYPE_SOLO_ENEMY, GAME_STAT_OPPONENT_MON_FAINTED
    // If it was the player's Pokemon, increment this game record instead.
    IncrementGameStat BATTLER_CATEGORY_FAINTED_MON, BATTLER_TYPE_SOLO_PLAYER, GAME_STAT_PLAYER_MON_FAINTED
    Call BATTLE_SUBSCRIPT_TRY_CLEAR_PRIMAL_WEATHERS_FAINTING

_CheckGrudge:
    UpdateVarFromVar OPCODE_GET, BSCRIPT_VAR_BATTLER_FAINTED, BSCRIPT_VAR_LAST_BATTLER_ID
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_FAINTED, BSCRIPT_VAR_BATTLER_TARGET
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, 0, _BeginSwitchOut
    TryGrudge _BeginSwitchOut
    // {0}’s {1} lost all its PP due to the grudge!
    PrintMessage 568, TAG_NICKNAME_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_MSG_TEMP
    Wait 
    WaitButtonABTime 30

_BeginSwitchOut:
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_FAINTED, BSCRIPT_VAR_LAST_BATTLER_ID
    // Don't bother with the rest if the attacker has fainted.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_HP, 0, _End
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_SWITCH, BSCRIPT_VAR_BATTLER_ATTACKER
    // {0} went back to {1}!
    PrintMessage 1067, TAG_NICKNAME_TRNAME, BATTLER_CATEGORY_SWITCHED_MON, BATTLER_CATEGORY_SWITCHED_MON
    Wait 
    WaitButtonABTime 30
    Call BATTLE_SUBSCRIPT_PURSUIT
    // Don't bother with the rest if the attacker has fainted.
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_HP, 0, _End
    // Check Natural Cure.
    TryRestoreStatusOnSwitch BATTLER_CATEGORY_ATTACKER, _FinishSwitchOut
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_STATUS, STATUS_NONE

_FinishSwitchOut:
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_EFFECT_CHANCE, 1
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait 
    DeletePokemon BATTLER_CATEGORY_ATTACKER
    Wait 
    HealthbarSlideOut BATTLER_CATEGORY_ATTACKER
    Wait 
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS_2, BATTLE_STATUS2_UTURN
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_SYNCHRONIZE
    UpdateVar OPCODE_SET, BSCRIPT_VAR_ATTACKER_SELF_TURN_STATUS_FLAGS, SELF_TURN_FLAG_CLEAR
    GoToSubscript BATTLE_SUBSCRIPT_SHOW_PARTY_LIST

_End:
    End 
