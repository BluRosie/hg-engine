#ifndef MEGA_H
#define MEGA_H

#include "types.h"

BOOL CheckCanMega(struct BattleStruct *battle, int client);
BOOL CheckCanDrawMegaButton(struct BI_PARAM *bip);
BOOL CheckIsMega(struct BI_PARAM *bip);

#endif
