.include "asm/include/battle_commands.inc"

.data

_000:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_TRAINER, _130
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_SAFARI, _227
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_PAL_PARK, _249
    SetPokemonEncounter BATTLER_CATEGORY_ENEMY
    SetTrainerEncounter BATTLER_CATEGORY_PLAYER
    PlayEncounterAnimation 
    WaitTime 122
    HealthbarSlideInDelay BATTLER_CATEGORY_ENEMY
    Wait 
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_SYS_STATUS, BATTLE_SPECIAL_DISTORTION_WORLD, _073
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_SYS_STATUS, BATTLE_SPECIAL_LEGENDARY, _067
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_SYS_STATUS, BATTLE_SPECIAL_FIRST_RIVAL, _055
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_SYS_STATUS, BATTLE_SPECIAL_HONEY_TREE, _061
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_DOUBLES, _079
    // A wild {0} appeared!
    PrintGlobalMessage 965, TAG_NICKNAME, BATTLER_CATEGORY_ENEMY
    GoTo _084

_055:
    // Whoa! A wild {0} came charging!
    PrintGlobalMessage 1167, TAG_NICKNAME, BATTLER_CATEGORY_ENEMY
    GoTo _084

_061:
    // A wild {0} appeared from the tree you slathered with Honey!
    PrintGlobalMessage 968, TAG_NICKNAME, BATTLER_CATEGORY_ENEMY
    GoTo _084

_067:
    // A wild {0} appeared!
    PrintGlobalMessage 1246, TAG_NICKNAME, BATTLER_CATEGORY_ENEMY
    GoTo _084

_073:
    // The Distortion World’s {0} appeared!
    PrintGlobalMessage 1268, TAG_NICKNAME, BATTLER_CATEGORY_ENEMY
    GoTo _084

_079:
    // A wild {0} and {1} appeared!
    PrintGlobalMessage 967, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_ENEMY_SLOT_1, BATTLER_CATEGORY_ENEMY_SLOT_2

_084:
    Wait 
    WaitButtonABTime 30
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_MULTI, _110
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_BATTLE_TYPE, BATTLE_TYPE_DOUBLES, _103
    // Go! {0}!
    PrintMessage 979, TAG_NICKNAME, BATTLER_CATEGORY_PLAYER
    GoTo _112

_103:
    // Go! {0} and {1}!
    PrintMessage 978, TAG_NICKNAME_NICKNAME, BATTLER_CATEGORY_PLAYER_SLOT_1, BATTLER_CATEGORY_PLAYER_SLOT_2
    GoTo _112

_110:
    PrintFirstSendOutMessage BATTLER_CATEGORY_PLAYER

_112:
    SpriteToOAM BATTLER_CATEGORY_ENEMY
    Wait 
    ThrowPokeball BATTLER_CATEGORY_PLAYER, BTLSCR_THROW_POKE_BALL
    PokemonSlideIn BATTLER_CATEGORY_PLAYER
    WaitTime 96
    HealthbarSlideInDelay BATTLER_CATEGORY_PLAYER
    Wait 
    OAMToSprite BATTLER_CATEGORY_ENEMY
    Wait 
    GoTo _270

_130:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_SYS_STATUS, BATTLE_SPECIAL_RECORDED, _181
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
    GoTo _270

_181:
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
    GoTo _270

_227:
    SetPokemonEncounter BATTLER_CATEGORY_ENEMY
    SetTrainerEncounter BATTLER_CATEGORY_PLAYER
    PlayEncounterAnimation 
    WaitTime 122
    HealthbarSlideInDelay BATTLER_CATEGORY_ENEMY
    Wait 
    // A wild {0} appeared!
    PrintGlobalMessage 965, TAG_NICKNAME, BATTLER_CATEGORY_ENEMY
    Wait 
    HealthbarSlideIn BATTLER_CATEGORY_PLAYER
    WaitButtonABTime 7
    Wait 
    GoTo _270

_249:
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

_270:
    SetBattleBackground 
    End 
