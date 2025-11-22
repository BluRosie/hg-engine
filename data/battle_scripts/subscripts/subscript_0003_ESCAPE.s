.include "asm/include/battle_commands.inc"

.data

_CheckNaturalCure:
    // Modernise Gen 8+: Natural Cure no longer heals status conditions upon completing a battle.
    // TryRestoreStatusOnSwitch BATTLER_CATEGORY_PLAYER_SLOT_1, _CheckNaturalCureSlot2
    // UpdateMonData OPCODE_SET, BATTLER_CATEGORY_PLAYER_SLOT_1, BMON_DATA_STATUS, STATUS_NONE

_CheckNaturalCureSlot2:
    // Also bugfix: Avoids double Regenerator activation
    // TryRestoreStatusOnSwitch BATTLER_CATEGORY_PLAYER_SLOT_2, _Start
    // UpdateMonData OPCODE_SET, BATTLER_CATEGORY_PLAYER_SLOT_2, BMON_DATA_STATUS, STATUS_NONE

_Start:
    PlaySound BATTLER_CATEGORY_ATTACKER, 1791
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_FRONTIER, _ForfeitFrontierBattle
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_LINK, _ForfeitLinkBattle
    CheckAbility CHECK_OPCODE_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_RUN_AWAY, _AbilityFleeMessage
    CheckItemHoldEffect CHECK_OPCODE_HAVE, BATTLER_CATEGORY_ATTACKER, HOLD_EFFECT_FLEE, _HeldItemFleeMessage
    // Got away safely!
    PrintMessage 781, TAG_NONE
    GoTo _FleeBattle

_AbilityFleeMessage:
    // {0} fled using {1}!
    PrintMessage 783, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER
    GoTo _FleeBattle

_HeldItemFleeMessage:
    // {0} fled using its {1}!
    PrintMessage 782, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER

_FleeBattle:
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait 
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_OUTCOME, BATTLE_RESULT_PLAYER_FLED
    End 

_ForfeitFrontierBattle:
    PrintForfeitMessage 
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait 
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_OUTCOME, BATTLE_RESULT_TRY_FLEE_WAIT
    End 

_ForfeitLinkBattle:
    PrintEscapeMessage 
    Wait 
    WaitButtonABTime 30
    FadeOutBattle 
    Wait 
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_OUTCOME, BATTLE_RESULT_TRY_FLEE_WAIT
    End 
