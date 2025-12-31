#ifndef CONSTANTS_GAME_STATS_H
#define CONSTANTS_GAME_STATS_H

typedef struct GameStats GameStats;

GameStats LONG_CALL *Save_GameStats_Get(void *saveData);
u32 LONG_CALL GameStats_Inc(GameStats *gameStats, int statIdx);

#define GAME_STAT_UNK0                      0   // Related to Apricorns somehow.
#define GAME_STAT_APRICORN_GET              1
#define GAME_STAT_SCORE                     2
#define GAME_STAT_UNK5                      5   // Berries planted?
#define GAME_STAT_WILD_ENCOUNTERS           8
#define GAME_STAT_TRAINER_BATTLES           9
#define GAME_STAT_CAUGHT_MON                10
#define GAME_STAT_FISHING_LANDED_MON        11
#define GAME_STAT_HATCHED_EGG               12
#define GAME_STAT_BATTLE_TOWER_BATTLE_COUNT 16
#define GAME_STAT_UNK_21                    21  // Link Battles (possibly Local)?
#define GAME_STAT_BADGE_GET                 22
#define GAME_STAT_UNK26                     26  // Link Battles (possibly Global)?
#define GAME_STAT_BATTLE_TOWER_WIN_COUNT    30
#define GAME_STAT_OPPONENT_MON_FAINTED      42
#define GAME_STAT_UNK46                     46  // Mail written?
#define GAME_STAT_BATTLE_POINTS             69
#define GAME_STAT_UNK70                     70  // Battle Points spent?
#define GAME_STAT_LEAGUE_WINS               74
#define GAME_STAT_SPLASHES                  77
#define GAME_STAT_SELFDESTRUCTS             79
#define GAME_STAT_EXPLOSIONS                80
#define GAME_STAT_LOCAL_CONTEST_ENTRIES     91
#define GAME_STAT_COMM_CONTEST_ENTRIES      92
#define GAME_STAT_LOCAL_CONTEST_WINS        93
#define GAME_STAT_COMM_CONTEST_WINS         94
#define GAME_STAT_RIBBONS_EARNED            95
#define GAME_STAT_INEFFECTIVE_MOVES         96  // Tracks instances where the player uses a move on a type with immunity.
#define GAME_STAT_PLAYER_MON_FAINTED        97
#define GAME_STAT_ALLIES_DAMAGED            98  // Tracks instances of damage dealt to targets on the same side of the field, so may include confusion.
#define GAME_STAT_WILD_MON_FLED             100 
#define GAME_STAT_UNK114                    114 // Wifi Trades?

#define NUM_GAME_STATS_WORD 72
#define NUM_GAME_STATS      149

#define SCORE_EVENT_BERRY_POTS_HARVESTED    0
#define SCORE_EVENT_APRICORNS_HARVESTED     1
#define SCORE_EVENT_VOLTORB_FLIP_PLAYED     6
#define SCORE_EVENT_WILD_MON_DEFEATED       9
#define SCORE_EVENT_REGIONAL_POKEMON_CAUGHT 10
#define SCORE_EVENT_NATIONAL_POKEMON_CAUGHT 11
#define SCORE_EVENT_TRAINERS_DEFEATED       12
#define SCORE_EVENT_13                      13  // Pokeathlons participated in?
#define SCORE_EVENT_14                      14  // Also Battle Tower win count?
#define SCORE_EVENT_WIRELESS_TRADES         16
#define SCORE_EVENT_CATCHING_SHOWS          17
#define SCORE_EVENT_18                      18  // Pokeathlons won?
#define SCORE_EVENT_20                      20  // Some sort of battle result.
#define SCORE_EVENT_REGISTER_SPECIES_CAUGHT 21
#define SCORE_EVENT_BADGE_GET               22
#define SCORE_EVENT_LEAGUE_WINS             23
#define SCORE_EVENT_REGIONAL_DEX_COMPLETED  25
#define SCORE_EVENT_NATIONAL_DEX_COMPLETED  26
#define SCORE_EVENT_COUNT                   40

#endif