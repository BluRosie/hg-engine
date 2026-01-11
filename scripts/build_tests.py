import os
import pathlib
import sys
from string import Template

FILE_OUTPUT = """#include "../include/battle.h"
#include "../include/test_battle.h"
#include "../include/constants/species.h"
#include "../include/constants/moves.h"
#include "../include/constants/item.h"
#include "../include/constants/ability.h"

#ifdef DEBUG_BATTLE_SCENARIOS
// each test file is a separate .c file in battle_tests/ for better organization
const struct TestBattleScenario BattleTests[] = {

#define GET_TEST_CASE_ONLY

${tests}

};
#endif // DEBUG_BATTLE_SCENARIOS
"""

def keywords_in_string(string: str, keywords: list[str]) -> bool:
    for keyword in keywords:
        if keyword.lower() in string.lower():
            return True
    return False

def main() -> None:
    filter_keywords = sys.argv[1:]
    template = Template(FILE_OUTPUT)
    data_folder = pathlib.Path(os.path.join(os.getcwd(), 'data'))
    battle_tests_root_folder = pathlib.Path(data_folder, 'battle_tests')
    files = battle_tests_root_folder.rglob('*c')
    test_files = [f'#include "{os.path.relpath(file, data_folder)}"' for file in sorted(files)]
    if len(filter_keywords) > 0:
        test_files = filter(lambda x: keywords_in_string(x, filter_keywords), test_files)
    tests = '\n'.join(test_files)

    with open(os.path.join(data_folder, 'BattleTests.c'), 'w') as file:
        file.write(template.substitute({'tests': tests}))

if __name__ == '__main__':
    main()