#ifndef BUG_CONTEST_ENCOUNTER_H
#define BUG_CONTEST_ENCOUNTER_H

#include "battle.h"
#include "pokemon.h"
#include "save.h"
#include "types.h"

#define BUG_CONTEST_SET_0       0
#define BUG_CONTEST_SET_1       1
#define BUG_CONTEST_SET_2       2
#define BUG_CONTEST_SET_3       3
#define NUM_BUG_CONTEST_TABLES  4

typedef struct BugContestEncounter {
    u16 species;
    u8 lvlmin;
    u8 lvlmax;
    u8 rate;
    u8 score;
    u16 padding;
} BugContestEncounter;

#define BUG_CONTEST_ENCOUNTER_MAX 10

typedef struct BugContestantData {
    u8 national;
    u8 day;
    u16 species;
    u16 score;
    u16 randmod;
} BugContestantData;

typedef struct BugContestant {
    u8 id;
    u16 score;
    BugContestantData data;
} BugContestant;

#define BUGCONTESTANT_NPC_COUNT 5
#define BUGCONTESTANT_PLAYER    BUGCONTESTANT_NPC_COUNT
#define BUGCONTESTANT_COUNT     (BUGCONTESTANT_NPC_COUNT + 1)

typedef struct BugContest {
    u32 heapID;                                                 // Always set to 3
    SaveData *saveData;                                         // Pointer to save data
    struct Party *party_bak;                                    // Player's party is held for the contest
    struct Party *party_cur;                                    // Only the lead Pokemon
    struct PartyPokemon *mon;                                   // The Pokemon you caught in the contest
    u8 lead_mon_idx;                                            // Slot number of the Pokemon you battled with
    u8 party_cur_num;                                           // Size of the party pre-contest
    u8 day_of_week;                                             // Used to choose NPCs and encounters
    u8 caught_poke : 1;                                         // If you've caught a Pokemon in the contest
    u8 national_dex : 1;                                        // Used to choose NPCs and encounters
    u8 placement : 6;                                           // 0: First, 1: Second, 2: Third, 3: Consolation
    u16 sport_balls;                                            // Set to 20, decremented on use
    u16 prize;                                                  // Item ID
    u32 elapsed_time;                                           // Used to determine when the contest ends
    BugContestEncounter encounters[BUG_CONTEST_ENCOUNTER_MAX];  // Which wild Pokemon you can find
    BugContestant contestants[BUGCONTESTANT_COUNT];             // 5 NPCs + player
    u8 ranking[BUGCONTESTANT_COUNT];                            // Index sorting by score at the end
} BugContest;

#endif // BUG_CONTEST_ENCOUNTER_H
