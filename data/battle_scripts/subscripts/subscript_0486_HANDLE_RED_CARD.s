.include "asm/include/battle_commands.inc"

.data

_000:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_ABILITY, ABILITY_SUCTION_CUPS, _suctioncups
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_MOVE_EFFECT, MOVE_EFFECT_FLAG_INGRAIN, _ingrain
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_WILD_MON, _end

_030:
    TryReplaceFaintedMon BATTLER_CATEGORY_DEFENDER, TRUE, _end
    TryWhirlwind _030
    GoTo _040

_040:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    // {0} held up its Red Card against {1}!
    PrintMessage 1625, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    RemoveItem BATTLER_CATEGORY_ATTACKER

    Call BATTLE_SUBSCRIPT_PURSUIT
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_DEFENDER, BMON_DATA_HP, 0, _end

_nostatusrestored:
    DeletePokemon BATTLER_CATEGORY_DEFENDER
    Wait 
    HealthbarSlideOut BATTLER_CATEGORY_DEFENDER
    Wait 
    SwitchAndUpdateMon BATTLER_CATEGORY_FORCED_OUT
    Wait 
    PokemonSendOut BATTLER_CATEGORY_DEFENDER
    WaitTime 72
    HealthbarSlideIn BATTLER_CATEGORY_DEFENDER
    Wait 
    // {0} was dragged out!
    PrintMessage 603, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER
    Wait 
    WaitButtonABTime 30
    SetCurrentMoveDoneSwitchingFlag CURRENT_MOVE_SWITCH_DONE
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_SWITCH, BSCRIPT_VAR_BATTLER_TARGET
    Call BATTLE_SUBSCRIPT_HAZARDS_CHECK
    GoTo _end

_suctioncups:
    // {0} is anchored in place with its suction cups!
    PrintMessage 659, TAG_NICKNAME_ABILITY, BATTLER_CATEGORY_DEFENDER, BATTLER_CATEGORY_DEFENDER
    GoTo _end

_ingrain:
    // {0} is anchored in place with its roots!
    PrintMessage 542, TAG_NICKNAME, BATTLER_CATEGORY_DEFENDER

_end:
    //restore real attacker, defender
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_ATTACKER, BSCRIPT_VAR_BATTLER_TARGET
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_TARGET, BSCRIPT_VAR_BATTLER_STAT_CHANGE
    End 