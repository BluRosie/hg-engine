#include "../include/battle.h"
#include "../include/test_battle.h"
#include "../include/constants/species.h"
#include "../include/constants/moves.h"
#include "../include/constants/item.h"
#include "../include/constants/ability.h"

// each test file is a separate .c file in battle_tests/ for better organization
const struct TestBattleScenario BattleTests[] = {
#ifdef DEBUG_BATTLE_SCENARIOS

#define GET_TEST_CASE_ONLY

#include "battle_tests/000_sandstorm_misty_terrain.c"
#include "battle_tests/001_rain_electric_terrain.c"
#include "battle_tests/002_doubles.c"
#include "battle_tests/moves/roost/change_type.c"
#include "battle_tests/species/zamazenta/change_form.c"
#include "battle_tests/species/zacian/change_form.c"

#endif // DEBUG_BATTLE_SCENARIOS
};
