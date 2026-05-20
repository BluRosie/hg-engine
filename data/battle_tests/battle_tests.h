#ifndef GET_TEST_CASE_ONLY
#include "../../include/battle.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/item.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/test_battle.h"

#define BEGIN_TEST const struct TestBattleScenario BattleTests[] = {
#define END_TEST ,};
#else
#define BEGIN_TEST
#define END_TEST ,
#endif
