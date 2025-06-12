#ifndef CONSTANTS_ITEMS_X_ITEM_H
#define CONSTANTS_ITEMS_X_ITEM_H

#include "../../config.h"

#define ITEM_X_ITEM_START   55

#define ITEM_GUARD_SPEC      (ITEM_X_ITEM_START)
#define ITEM_DIRE_HIT        (ITEM_X_ITEM_START + 1)
#define ITEM_X_ATTACK        (ITEM_X_ITEM_START + 2)
#define ITEM_X_DEFENSE       (ITEM_X_ITEM_START + 3)
#define ITEM_X_SPEED         (ITEM_X_ITEM_START + 4)
#define ITEM_X_ACCURACY      (ITEM_X_ITEM_START + 5)
#define ITEM_X_SPECIAL       (ITEM_X_ITEM_START + 6)
#define ITEM_X_SP_DEF        (ITEM_X_ITEM_START + 7)

#define ITEM_X_ITEM_END     ITEM_X_SP_DEF
#define IS_ITEM_X_ITEM(item) ((item) >= ITEM_X_ITEM_START && (item) <= ITEM_X_ITEM_END)
#define NUM_X_ITEMS (ITEM_X_ITEM_END - ITEM_X_ITEM_START + 1)

#endif