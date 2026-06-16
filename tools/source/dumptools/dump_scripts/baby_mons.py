from dump_scripts.dump_tools import lookup_species


def dump_babymons(data):
    babymons_armips = '.nds\n'
    babymons_armips += '.thumb\n\n'
    babymons_armips += '.include "armips/include/macros.s"\n\n'
    babymons_armips += '.include "asm/include/species.inc"\n\n'
    babymons_armips += "// matches each species to its baby species\n\n\n"

    for species in range(0, len(data), 2):
        baby = int.from_bytes(data[species:species + 2], "little")
        species_const = lookup_species(species // 2)
        if baby == 0 and species != 0:
            baby_const = "0"
        else:
            baby_const = lookup_species(baby)
        babymons_armips += f"babymon {species_const}, {baby_const}\n"

    babymons_armips += "\n.close\n"
    return babymons_armips


def dump_babymons_c(data):
    lines = [
        '#include "../include/types.h"',
        '#include "../include/config.h"',
        '#include "../include/constants/species.h"',
        "",
        "const u16 UNUSED sBabyMons[] =",
        "{",
    ]

    for species in range(0, len(data), 2):
        baby = int.from_bytes(data[species:species + 2], "little")
        species_const = lookup_species(species // 2)
        baby_const = lookup_species(baby)
        lines.append(f"    [{species_const}] = {baby_const},")

    lines.extend([
        "};",
        "",
    ])
    return "\n".join(lines)
