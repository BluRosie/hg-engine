#ifndef CONSTANTS_ITEM_GEM_H
#define CONSTANTS_ITEM_GEM_H

#include "../../config.h"

#define ITEM_GEM_START         683

#define ITEM_NORMAL_GEM        (ITEM_GEM_START + 0)
#define ITEM_FIGHTING_GEM      (ITEM_GEM_START + 1)
#define ITEM_FLYING_GEM        (ITEM_GEM_START + 2)
#define ITEM_POISON_GEM        (ITEM_GEM_START + 3)
#define ITEM_GROUND_GEM        (ITEM_GEM_START + 4)
#define ITEM_ROCK_GEM          (ITEM_GEM_START + 5)
#define ITEM_BUG_GEM           (ITEM_GEM_START + 6)
#define ITEM_GHOST_GEM         (ITEM_GEM_START + 7)
#define ITEM_STEEL_GEM         (ITEM_GEM_START + 8)
#define ITEM_FIRE_GEM          (ITEM_GEM_START + 9)
#define ITEM_WATER_GEM         (ITEM_GEM_START + 10)
#define ITEM_GRASS_GEM         (ITEM_GEM_START + 11)
#define ITEM_ELECTRIC_GEM      (ITEM_GEM_START + 12)
#define ITEM_PSYCHIC_GEM       (ITEM_GEM_START + 13)
#define ITEM_ICE_GEM           (ITEM_GEM_START + 14)
#define ITEM_DRAGON_GEM        (ITEM_GEM_START + 15)
#define ITEM_DARK_GEM          (ITEM_GEM_START + 16)
#define ITEM_FAIRY_GEM         (ITEM_GEM_START + 17)

#define ITEM_GEM_END           ITEM_FAIRY_GEM
#define IS_ITEM_GEM(item) (item >= ITEM_GEM_START && item <= ITEM_GEM_END)
#define NUM_GEMS (ITEM_GEM_END - ITEM_GEM_START + 1)

#endif