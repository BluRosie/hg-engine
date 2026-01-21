#include "../include/battle.h"
#include "../include/test_battle.h"
#include "../include/constants/species.h"
#include "../include/constants/moves.h"
#include "../include/constants/item.h"
#include "../include/constants/ability.h"
#include "../include/constants/battle_message_constants.h"

#ifdef DEBUG_BATTLE_SCENARIOS
// each test file is a separate .c file in battle_tests/ for better organization
const struct TestBattleScenario BattleTests[] = {

#define GET_TEST_CASE_ONLY

#include "battle_tests/moves/aurora_veil/half_damage.c"
#include "battle_tests/moves/roost/change_type.c"
#include "battle_tests/species/zacian/change_form.c"
#include "battle_tests/species/zamazenta/change_form.c"

};
#endif // DEBUG_BATTLE_SCENARIOS
