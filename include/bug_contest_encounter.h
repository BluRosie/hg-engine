#ifndef BUG_CONTEST_ENCOUNTER_H
#define BUG_CONTEST_ENCOUNTER_H

#include "types.h"

#define BUG_CONTEST_SET_0       0
#define BUG_CONTEST_SET_1       1
#define BUG_CONTEST_SET_2       2
#define BUG_CONTEST_SET_3       3
#define NUM_BUG_CONTEST_TABLES  4

#define BUG_CONTEST_ENCOUNTER_MAX 10

typedef struct BugContestEncounter {
    u16 species;
    u8 lvlmin;
    u8 lvlmax;
    u8 rate;
    u8 score;
    u16 padding;
} BugContestEncounter;

#endif // BUG_CONTEST_ENCOUNTER_H
