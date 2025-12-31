.include "asm/include/battle_commands.inc"

.data

_Start:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_TRAINER, _TrainerEncounter
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_SAFARI, _SafariEncounter
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_PAL_PARK, _PalParkEncounter
    SetPokemonEncounter BATTLER_CATEGORY_ENEMY
    SetTrainerEncounter BATTLER_CATEGORY_PLAYER
    PlayEncounterAnimation 
    WaitTime 122
    HealthbarSlideInDelay BATTLER_CATEGORY_ENEMY
    Wait 
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_SYS_STATUS, BATTLE_SPECIAL_DISTORTION_WORLD, _DistortionWorldMessage
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_SYS_STATUS, BATTLE_SPECIAL_LEGENDARY, _LegendaryMessage
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_SYS_STATUS, BATTLE_SPECIAL_FIRST_RIVAL, _FirstEncounterMessage
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_SYS_STATUS, BATTLE_SPECIAL_HONEY_TREE, _HoneyTreeMessage
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_TOTEM, _TotemEncounter
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_DOUBLES, _WildDoublesMessage
    // You encountered a wild {0}!
    PrintGlobalMessage 965, TAG_NICKNAME, BATTLER_CATEGORY_ENEMY
    GoTo _SendOutPokemonMessage

_FirstEncounterMessage:
    // Whoa! A wild {0} came charging!
    PrintGlobalMessage 1167, TAG_NICKNAME, BATTLER_CATEGORY_ENEMY
    GoTo _SendOutPokemonMessage

_HoneyTreeMessage:
    // A wild {0} appeared from the tree you slathered with Honey!
    PrintGlobalMessage 968, TAG_NICKNAME, BATTLER_CATEGORY_ENEMY
    GoTo _SendOutPokemonMessage

_LegendaryMessage:
    // {0} appeared!
    PrintGlobalMessage 1246, TAG_NICKNAME, BATTLER_CATEGORY_ENEMY
    GoTo _SendOutPokemonMessage

_DistortionWorldMessage:
    // The Distortion World’s {0} appeared!
    PrintGlobalMessage 1268, TAG_NICKNAME, BATTLER_CATEGORY_ENEMY
    GoTo _SendOutPokemonMessage

_WildDoublesMessage:
    // A wild {0} and {1} appeared!
    PrintGlobalMessage 967, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_ENEMY_SLOT_1, BATTLER_CATEGORY_ENEMY_SLOT_2
    GoTo _SendOutPokemonMessage

_TotemEncounter:
    // You are challenged by Totem {0}!
    PrintGlobalMessage 1601, TAG_NICKNAME, BATTLER_CATEGORY_ENEMY
    Wait
    WaitButtonABTime 30
    DoubleSize BATTLER_ENEMY
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ENEMY, BMON_DATA_SPECIES, SPECIES_WINGULL, _TotemStatBoost_Wingull
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ENEMY, BMON_DATA_SPECIES, SPECIES_AMBIPOM, _TotemStatBoost_Ambipom
    GoTo _SendOutPokemonMessage

_TotemStatBoost_Wingull:
    PlayBattleAnimation BATTLER_CATEGORY_ENEMY, BATTLE_ANIMATION_STAT_BOOST
    Wait 
    UpdateMonData OPCODE_ADD, BATTLER_CATEGORY_ENEMY, BMON_DATA_STAT_CHANGE_SPDEF, 6
    UpdateMonData OPCODE_ADD, BATTLER_CATEGORY_ENEMY, BMON_DATA_STAT_CHANGE_SPEED, 6
    UpdateMonData OPCODE_ADD, BATTLER_CATEGORY_ENEMY, BMON_DATA_STAT_CHANGE_ATK, 6
    UpdateMonData OPCODE_ADD, BATTLER_CATEGORY_ENEMY, BMON_DATA_STAT_CHANGE_DEF, 6
    UpdateMonData OPCODE_ADD, BATTLER_CATEGORY_ENEMY, BMON_DATA_STAT_CHANGE_SPATK, 6
    UpdateMonData OPCODE_ADD, BATTLER_CATEGORY_ENEMY, BMON_DATA_STAT_CHANGE_EVASION, 6
    GoTo _TotemMultiStatMessage

_TotemStatBoost_Ambipom:
    PlayBattleAnimation BATTLER_CATEGORY_ENEMY, BATTLE_ANIMATION_STAT_BOOST
    Wait 
    UpdateMonData OPCODE_ADD, BATTLER_CATEGORY_ENEMY, BMON_DATA_STAT_CHANGE_ATK, 1
    UpdateMonData OPCODE_ADD, BATTLER_CATEGORY_ENEMY, BMON_DATA_STAT_CHANGE_DEF, 1
    UpdateMonData OPCODE_ADD, BATTLER_CATEGORY_ENEMY, BMON_DATA_STAT_CHANGE_SPDEF, 1
    GoTo _TotemMultiStatMessage

_TotemSingleStatMessage:
    // {0}’s aura flared to life! Its {1} rose!
    PrintGlobalMessage 1602, TAG_NICKNAME_STAT, BATTLER_CATEGORY_ENEMY, BATTLER_CATEGORY_MSG_TEMP
    GoTo _SendOutPokemonMessage

_TotemMultiStatMessage:
    // {0}’s aura flared to life! Its stats rose!
    PrintGlobalMessage 1603, TAG_NICKNAME, BATTLER_CATEGORY_ENEMY

_SendOutPokemonMessage:
    Wait 
    WaitButtonABTime 30
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_MULTI, _SendOutPokemonMessage_Multi
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_DOUBLES, _SendOutPokemonMessage_Doubles
    // Go! {0}!
    PrintMessage 979, TAG_NICKNAME, BATTLER_CATEGORY_PLAYER
    GoTo _SendOutPokemon

_SendOutPokemonMessage_Doubles:
    // Go! {0} and {1}!
    PrintMessage 978, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_PLAYER_SLOT_1, BATTLER_CATEGORY_PLAYER_SLOT_2
    GoTo _SendOutPokemon

_SendOutPokemonMessage_Multi:
    PrintFirstSendOutMessage BATTLER_CATEGORY_PLAYER

_SendOutPokemon:
    SpriteToOAM BATTLER_CATEGORY_ENEMY
    Wait 
    ThrowPokeball BATTLER_CATEGORY_PLAYER, BTLSCR_THROW_POKE_BALL
    PokemonSlideIn BATTLER_CATEGORY_PLAYER
    WaitTime 96
    HealthbarSlideInDelay BATTLER_CATEGORY_PLAYER
    Wait 
    OAMToSprite BATTLER_CATEGORY_ENEMY
    Wait 
    GoTo _Cleanup

_TrainerEncounter:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_SYS_STATUS, BATTLE_SPECIAL_RECORDED, _RecordedBattle
    PlayEncounterAnimation 
    SetTrainerEncounter BATTLER_CATEGORY_ALL
    WaitTime 96
    LoadPartyGaugeGraphics 
    ShowBattleStartPartyGauge BATTLER_CATEGORY_ENEMY
    ShowBattleStartPartyGauge BATTLER_CATEGORY_PLAYER
    PrintEncounterMessage BATTLER_CATEGORY_ENEMY
    Wait 
    WaitButtonABTime 30
    PrintFirstSendOutMessage BATTLER_CATEGORY_ENEMY
    HideBattleStartPartyGauge BATTLER_CATEGORY_ENEMY
    ThrowPokeball BATTLER_CATEGORY_ENEMY, BTLSCR_THROW_POKE_BALL
    PokemonSlideIn BATTLER_CATEGORY_ENEMY
    WaitTime 112
    HealthbarSlideInDelay BATTLER_CATEGORY_ENEMY
    Wait 
    PrintFirstSendOutMessage BATTLER_CATEGORY_PLAYER
    HideBattleStartPartyGauge BATTLER_CATEGORY_PLAYER
    ThrowPokeball BATTLER_CATEGORY_PLAYER, BTLSCR_THROW_POKE_BALL
    PokemonSlideIn BATTLER_CATEGORY_PLAYER
    WaitTime 96
    HealthbarSlideInDelay BATTLER_CATEGORY_PLAYER
    Wait 
    FreePartyGaugeGraphics 
    GoTo _Cleanup

_RecordedBattle:
    PlayEncounterAnimation 
    SetTrainerEncounter BATTLER_CATEGORY_ALL
    WaitTime 96
    LoadPartyGaugeGraphics 
    ShowBattleStartPartyGauge BATTLER_CATEGORY_ENEMY
    ShowBattleStartPartyGauge BATTLER_CATEGORY_PLAYER
    PrintEncounterMessage BATTLER_CATEGORY_ENEMY
    Wait 
    WaitButtonABTime 30
    PrintFirstSendOutMessage BATTLER_CATEGORY_PLAYER
    HideBattleStartPartyGauge BATTLER_CATEGORY_PLAYER
    ThrowPokeball BATTLER_CATEGORY_PLAYER, BTLSCR_THROW_POKE_BALL
    PokemonSlideIn BATTLER_CATEGORY_PLAYER
    WaitTime 96
    HealthbarSlideInDelay BATTLER_CATEGORY_PLAYER
    Wait 
    PrintFirstSendOutMessage BATTLER_CATEGORY_ENEMY
    HideBattleStartPartyGauge BATTLER_CATEGORY_ENEMY
    ThrowPokeball BATTLER_CATEGORY_ENEMY, BTLSCR_THROW_POKE_BALL
    PokemonSlideIn BATTLER_CATEGORY_ENEMY
    WaitTime 112
    HealthbarSlideInDelay BATTLER_CATEGORY_ENEMY
    Wait 
    FreePartyGaugeGraphics 
    GoTo _Cleanup

_SafariEncounter:
    SetPokemonEncounter BATTLER_CATEGORY_ENEMY
    SetTrainerEncounter BATTLER_CATEGORY_PLAYER
    PlayEncounterAnimation 
    WaitTime 122
    HealthbarSlideInDelay BATTLER_CATEGORY_ENEMY
    Wait 
    // You encountered a wild {0}!
    PrintGlobalMessage 965, TAG_NICKNAME, BATTLER_CATEGORY_ENEMY
    Wait 
    HealthbarSlideIn BATTLER_CATEGORY_PLAYER
    WaitButtonABTime 7
    Wait 
    GoTo _Cleanup

_PalParkEncounter:
    SetPokemonEncounter BATTLER_CATEGORY_ENEMY
    SetTrainerEncounter BATTLER_CATEGORY_PLAYER
    PlayEncounterAnimation 
    WaitTime 122
    HealthbarSlideInDelay BATTLER_CATEGORY_ENEMY
    Wait 
    // Wow! {0}’s {1} is drawing close!
    PrintGlobalMessage 1219, TAG_TRNAME_NICKNAME, BATTLER_CATEGORY_ENEMY, BATTLER_CATEGORY_ENEMY
    Wait 
    HealthbarSlideIn BATTLER_CATEGORY_PLAYER
    WaitButtonABTime 7
    Wait 

_Cleanup:
    SetBattleBackground 
    End 