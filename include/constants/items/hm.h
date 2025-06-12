#ifndef CONSTANTS_ITEM_HM_H
#define CONSTANTS_ITEM_HM_H

#include "../../config.h"

#define ITEM_HM_START        420

#define ITEM_HM01            420
#define ITEM_HM02            421
#define ITEM_HM03            422
#define ITEM_HM04            423
#define ITEM_HM05            424
#define ITEM_HM06            425
#define ITEM_HM07            426
#define ITEM_HM08            427

#define ITEM_HM_END          ITEM_HM08
#define IS_ITEM_HM(item) ((item >= ITEM_HM_START && item <= ITEM_HM_END))
#define NUM_HMS (ITEM_HM_END - ITEM_HM_START + 1)

#endif