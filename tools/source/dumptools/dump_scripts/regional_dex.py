from dump_scripts.dump_tools import *


def dump_regionaldex(narc):
    regionaldex_armips = ""
    regionaldex_armips += ".nds\n"
    regionaldex_armips += ".thumb\n\n"
    regionaldex_armips += '.create "build/a138/pokezukan.bin", 0\n\n'
    regionaldex_armips += "// johto dex numbers for each species\n\n\n"

    for idx, entry in enumerate(narc):
        regionaldex_armips += f'/* {lookup_species(idx):<23} */ .halfword {entry["regional_dex"]}\n'

    regionaldex_armips += "\n.close\n"
    return regionaldex_armips


def dump_regionaldex_c(data):
    lines = [
        '#include "../include/types.h"',
        '#include "../include/config.h"',
        '#include "../include/constants/species.h"',
        "",
        "// defines the number for the species in the regional dex. 0 means not in regional dex",
        "const u16 UNUSED RegionalDex[] =",
        "{",
    ]

    for idx in range(0, len(data), 2):
        value = int.from_bytes(data[idx:idx + 2], "little")
        species = idx // 2
        lines.append(f"    [{lookup_species(species)}] = {value},")

    lines.extend([
        "};",
        "",
    ])
    return "\n".join(lines)
