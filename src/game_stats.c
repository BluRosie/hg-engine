#include "../include/battle.h"
#include "../include/constants/game_stats.h"

struct GameStats {
    u32 statsWords[NUM_GAME_STATS_WORD];
    u16 statsHalf[77];
    u16 dummy;
    u16 unk_1BC;
    u16 unk_1BE;
};