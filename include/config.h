#ifndef CONFIG_H
#define CONFIG_H

#define GEN_LATEST 9

// FAIRY_TYPE_IMPLEMENTED should be used if you want to implement the fairy type and overwrite type 9 in this project
// set FAIRY_TYPE_IMPLEMENTED to 0 if you do not want this to happen
#define FAIRY_TYPE_IMPLEMENTED 1

// TYPE_EFFECTIVENESS_GEN defines the type chart interactions you would like to use.
// Defining this as "5" or lower will revert Steel to resisting Ghost- and Dark-type moves.
// Type chart changes prior to Gen 4 (e.g. Gen 1) are not included.
#define TYPE_EFFECTIVENESS_GEN GEN_LATEST

// START_ADDRESS should be the same as armips/include/config.h's START_ADDRESS so that hall of fame/pokéathlon overworlds work properly.
// START_ADDRESS defines the file address within the synthetic overlay where you would like to place all of the code that this project uses.  this is largely the repointed tables that the code uses.
// if START_ADDRESS is 0x10000, then the tables will be inserted at address 0x10000 of the synthetic overlay
// the current implementation (with all gen 5 mons) uses ~9222/0x2406 bytes.  make sure this points to that much free space (probably allow for a little bit more than that)
// currently 0x10 to have space for a marker for DSPRE to disable editors!
#define START_ADDRESS 0x10

// ALLOW_SAVE_CHANGES will allow save file field expansions for full feature implementation, but will break compatibility with PKHeX
// commenting out this define will disable kyurem's forme change method and keep saves compatible with pkhex
#define ALLOW_SAVE_CHANGES

// CRY_PSEUDOBANK_START defines the first pseudobank to be used as cries in the sdat.  cries are loaded differently to save on RAM space
#define CRY_PSEUDOBANK_START 778

// EXPERIENCE_FORMULA_GEN defines the experience formula you would like to use.  Gens 5, 7, and 8 consider the difference between the attacker's level and the fainted's level to scale the experience gained.
// i.e. defining this as "5", "7", or "8" would use a scaled formula, whereas "6" and others would use the default formula.  There is a multiplier of 255 / 390 to not artificially inflate the experience given as well with higher base experience.
#define EXPERIENCE_FORMULA_GEN GEN_LATEST

// HIDDEN_ABILITIES defines whether or not Pokémon with their hidden ability bit set will receive their hidden abilities when being generated/changing form in battle.
// commenting this line out essentially disables hidden abilities to maintain default behavior, while leaving this as-is will introduce hidden abilities and all of their handling.
// just need to set the HIDDEN_ABILITIES_FLAG from the save and then every mon should be generated with its hidden ability until the flag is cleared from another script
#define HIDDEN_ABILITIES
#define HIDDEN_ABILITIES_FLAG 2600
#define HIDDEN_ABILITIES_STARTERS_FLAG 2601

// MEGA_EVOLUTIONS defines whether or not Pokémon that are able to mega evolve will be able to do so.
// commenting this line out essentially disables mega evolutions and maintains default behavior with respect to them.  leaving this as-is will introduce mega evolutions when applied to the game.
#define MEGA_EVOLUTIONS

// PRIMAL_REVERSION defines whether or not Kyogre and Groudon, when holding their orbs, will be able to change form when sent out in battle.
// commenting this line out essentially disables primal reversion.  leaving this as-is will introduce primal reversions when applied to the game.
#define PRIMAL_REVERSION

// ITEM_POCKET_EXPANSION defines whether or not item pockets will be given extra slots in the save in order to provide space for new items that are implemented
// commenting this line out will prevent the item pockets from being expanded for the new items
#define ITEM_POCKET_EXPANSION

// IMPLEMENT_BDHCAM_ROUTINE defines whether or not the BDHCam routine (by Mikelan) will be built into the ROM.  this is necessary to get it shiftable because DSPRE writes it to a fixed location
// uncommenting this line will include it in your ROM
#define IMPLEMENT_BDHCAM_ROUTINE

// IMPLEMENT_TRANSPARENT_TEXTBOXES should be used if you want to implement transparent textboxes
// uncommenting this line out will enable transparent textboxes
//#define IMPLEMENT_TRANSPARENT_TEXTBOXES

// IMPLEMENT_WILD_DOUBLE_BATTLES defines whether or not grass tiles will have a 10% chance of starting a wild double battle
// commenting this line out disables wild double battles entirely
// NOTE:  wild double battles are currently unstable and broken.  i would not use them at this time.  see this issue for updates on this problem: https://github.com/BluRosie/hg-engine/issues/86
//#define IMPLEMENT_WILD_DOUBLE_BATTLES

// IMPLEMENT_CAPTURE_EXPERIENCE defines whether or not capturing wild pokemon will net experience
// commenting this line out disables capture experience
#define IMPLEMENT_CAPTURE_EXPERIENCE

// IMPLEMENT_CRITICAL_CAPTURE defines whether or not throwing a poké ball has a certain percent chance of a guaranteed capture called a critical throw
// commenting this line out disables critical captures
#define IMPLEMENT_CRITICAL_CAPTURE

#define CRITICAL_CAPTURE_GENERATION GEN_LATEST

// IMPLEMENT_NEW_EV_IV_VIEWER defines whether or not pressing L, R, or Select in the pokémon summaries will display EV's, IV's, or the raw stat
// commenting this line out disables the building of the new EV/IV viewing system
#define IMPLEMENT_NEW_EV_IV_VIEWER

// IMPLEMENT_LEVEL_CAP defines whether or not a configurable hard level cap system is built into the rom based on the value in LEVEL_CAP_VARIABLE
// if the level is greater than or equal to LEVEL_CAP_VARIABLE, the pokémon will no longer gain experience
// uncommenting IMPLEMENT_LEVEL_CAP enables the level cap system.  make sure to also uncomment LEVEL_CAP_VARIABLE in the process
// uncommenting UNCAP_CANDIES_FROM_LEVEL_CAP will allow for rare candies to not be capped by the level cap even with the level cap in place, like run & bun
// uncommenting ALLOW_LEVEL_CAP_EVOLVE will allow for rare candies to evolve pokemon already at the level cap that can evolve at that level already
//#define IMPLEMENT_LEVEL_CAP
//#define LEVEL_CAP_VARIABLE 0x416F
//#define UNCAP_CANDIES_FROM_LEVEL_CAP
//#define ALLOW_LEVEL_CAP_EVOLVE

// System flags that need to be enabled for the player to use the gimmick. If you want to change them, remember to change them in flags.s as well for consistency
#define FLAG_MEGA_EVOLUTION_ENABLED 2518
#define FLAG_Z_MOVE_ENABLED 2519
#define FLAG_DYNAMAX_ENABLED 2520
#define FLAG_TERASTALIZATION_ENABLED 2521

// UPDATE_OVERWORLD_POISON will remove overworld poison if enabled
// comment the line out below to retain overworld poison
#define UPDATE_OVERWORLD_POISON

// DISABLE_END_OF_TURN_WEATHER_MESSAGE removes the weather messages at the end of the turn.  instead the bottom screen icon can be used
// uncomment the line out to get this functionality
//#define DISABLE_END_OF_TURN_WEATHER_MESSAGE

// IMPLEMENT_SEASONS currently implements season mechanics. Used for changing forms of Deerling and Sawsbuck.
// Comment the line out to disable this functionality (Gen 6+)
#define IMPLEMENT_SEASONS

// IMPLEMENT_DYNAMIC_WILD_SPECIES_FORMS allows wild species to appear with different forms if it has multiple forms.
// Normally you will use monwithform, encounterwithform, headbuttencounterwithform to specify different forms (similar to Gen 5+)
// Uncomment this line to enable this functionality
// #define IMPLEMENT_DYNAMIC_WILD_SPECIES_FORMS

// Some forms only exist in their debut games, with accompying mechanics. IMPLEMENT_GONE_SPECIES_MECHANICS lets these forms' mechanics coexist with the latest mechanics. Examples include Noble Pokémon
#define IMPLEMENT_DEXIT_FORMS_MECHANICS

// EXPAND_PC_BOXES will expand the amount of pc boxes if enabled to 30
// comment out the line below to keep the max at 18
#define EXPAND_PC_BOXES

// SHINY_ODDS are the odds that a pokémon will be shiny.  actual odds are SHINY_ODDS over 65,536, by default 8 / 65536 or 1 / 8192
// note that changing this still has no chance of spawning shiny mons in for trainers like the tutorial's method does
// this will change existing mons too!  if you want to change the odds of wild mons only, you will have to add a certain amount of pid rerolls to the AddWildPartyPokemon routine
#define SHINY_ODDS 8

// FRIENDSHIP_EVOLUTION_THRESHOLD defines the amount of friendship needed to evolve mons with friendship-related evolutions
// modern generations have this value at 160, older ones at 220.  still max out at 255
#define FRIENDSHIP_EVOLUTION_THRESHOLD 160

// Friendship grants additional bonuses.
// Comment out the line below to revert back to Gen 5- behaviour
#define FRIENDSHIP_EFFECTS

// RESTORE_ITEMS_AT_BATTLE_END will restore held items that are single-use at the end of battle (Gen 9)
// comment out the line below to revert back to Gen 8- behavior
#define RESTORE_ITEMS_AT_BATTLE_END

// AI_CAN_GRAB_ITEMS allows to use Trick, Switcheroo, (Thief still todo) on the Player and actually grab items. This can result in lost items.
#define AI_CAN_GRAB_ITEMS

// PROTEAN_GENERATION defines the behavior that Protean should exhibit, where it either changes type every move (<=8) or changes type once per appearance in battle (>=9)
#define PROTEAN_GENERATION GEN_LATEST

// CORROSIVE_GAS_IMPLIED_BEHAVIOUR defines the behavior that Corrosive Gas should exhibit, where it either does it does not affect a Kyogre, a Groudon, or species holding their respective Mega Stones to not lose their Blue Orb, Red Orb, and Mega Stones respectively (TRUE), or affects species in the above cases (FALSE).
#define CORROSIVE_GAS_IMPLIED_BEHAVIOUR TRUE

// SNOW_WARNING_GENERATION controls whether to summon Snow or Hail when the ability is activated.
// 9 or above: Snow
// Otherwise: Hail
#define SNOW_WARNING_GENERATION GEN_LATEST

// IMPLEMENT_REUSABLE_REPELS defines whether or not a prompt to use another repel automatically appears upon the previous repel being used up
#define IMPLEMENT_REUSABLE_REPELS

// UPDATE_VITAMIN_EV_CAPS changes the cap on the vitamins from 100 to 252 per recent generations
#define UPDATE_VITAMIN_EV_CAPS

// DISABLE_ITEMS_IN_TRAINER_BATTLE will disable the usage of items in trainer battles. This is also true for the AI.
//#define DISABLE_ITEMS_IN_TRAINER_BATTLE

// REUSABLE_TMS will make TMs infinite and hide the quantity number.
#define REUSABLE_TMS

// DELETABLE_HMS allows HMs to be forgotten, this also makes their quantity reduce, but the infinite TMs change prevents this.
//#define DELETABLE_HMS

// MART_EXPANSION allows for adding and modifying items to the mart inventories
#define MART_EXPANSION

// POKEATHLON_EXPANSION allows for adding and modifying items to the Pokéathlon shop inventories
//#define POKEATHLON_SHOP_EXPANSION

// STATIC_HP_BAR updates the HP bar to increase/decrease at a fixed rate like later generations
#define STATIC_HP_BAR

// UPDATED_MACHINE_MOVE_LABELS modernizes bag label rendering for machine moves (TMs, HMs, and TRs)
// to more closely match later generations. Note that disabling this will break TMs > 99 rendering in the bag
// Comment out the line below to disable this feature
#define UPDATE_MACHINE_MOVE_LABELS

// Configs the ball capture ratio. 4 emulates the behaviour in HeartGold. However, due to the modernization of
// the capture formula, it is only an estimate. Some are left as 4 to be less disruptive. Use GEN_LATEST for vanilla behaviour
#define NEST_BALL_GENERATION    GEN_LATEST
#define NET_BALL_GENERATION     GEN_LATEST
#define REPEAT_BALL_GENERATION  GEN_LATEST
#define TIMER_BALL_GENERATION   GEN_LATEST
#define DUSK_BALL_GENERATION    GEN_LATEST
#define QUICK_BALL_GENERATION   GEN_LATEST
#define SAFARI_BALL_GENERATION  4
#define LURE_BALL_GENERATION    4
#define SPORT_BALL_GENERATION   4
#define MOON_BALL_GENERATION    GEN_LATEST

// If caught, the Pokémon's friendship is set to 200 in Generations II through VII, or 150 in Generation VIII onwards.
#define FRIEND_BALL_GENERATION  GEN_LATEST

// THUNDER_STORM_WEATHER_ELECTRIC_TERRAIN makes the Thunder & Storm map header weathers set permanent
// Electric Terrain (and rain) in battle
//#define THUNDER_STORM_WEATHER_ELECTRIC_TERRAIN

// FOG_SETS_MISTY_TERRAIN makes the Fog map header weather set permanent Misty Terrain in battle
//#define FOG_WEATHER_MISTY_TERRAIN

// NATURAL_GIFT_POWER_GEN defines the power of Natural Gift based on generation. Gen 6 or higher are modernized values.
#define NATURAL_GIFT_POWER_GEN GEN_LATEST

// BLOCK_LEARNING_UNIMPLEMENTED_MOVES prevents learning moves that are not implemented
// based on the move having FLAG_UNUSABLE_UNIMPLEMENTED
#define BLOCK_LEARNING_UNIMPLEMENTED_MOVES

// VANILLA_PARADOX_BOOSTER_ENERGY_BEHAVIOUR makes the Paradox Booster item behave as it does in vanilla, where the
// DLC paradox forms can have Booster Energy tricked onto them.
// Further info: vxtwitter.com/DaWoblefet/status/1737659599480565762
// Comment out this define so all Paradox forms behave the same vis a vis Booster Energy
#define VANILLA_PARADOX_BOOSTER_ENERGY_BEHAVIOUR

// VANILLA_MYTHICALS disallows non vanilla mythical pokemon to be treated as mythical
// Vanilla behaviour adds shiiontic as a mythical more info here: https://xcancel.com/Sibuna_Switch/status/1613414136079323137
// if VANILLA_MYTHICALS is not defined, but you can change that in the EXTRA_MYTHICALS macro if you want to
// add or remove mythicals as you see fit
#define VANILLA_MYTHICALS

#endif
