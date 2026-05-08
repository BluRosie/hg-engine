import sys
import os
import struct
import shutil

"""
basic idea is to manually rename files from the original repository structure in an approximately working fashion
"""

with open("src/field/overworld_table.c", "r", encoding="utf-8") as f:
    prefix = ""
    SpeciesToGfxDict = {}
    SecondarySpeciesGfxDict = {}
    for line in f:
        if (".gfx = " in line):
            if (" // " in line and "SPECIES" in line):
                prefix = line.split(" // ")[1].strip()
                SpeciesToGfxDict[prefix] = int(line.split(".gfx = ")[1].split(",")[0])
                #print(f"{prefix}: {SpeciesToGfxDict[prefix]}")
            elif (" // " in line):
                suffix = line.split(" // ")[1].strip()
                SecondarySpeciesGfxDict[prefix + "_" + suffix.upper()] = [int(line.split(".gfx = ")[1].split(",")[0]), prefix, suffix]
                #print(f"{prefix}_{suffix.upper()}: {SecondarySpeciesGfxDict[prefix + '_' + suffix.upper()]}")
    for entry in SpeciesToGfxDict:
        shutil.copy(f"data/graphics/overworlds/{int(SpeciesToGfxDict[entry]):04}.png", f"data/graphics/sprites/{entry[len('SPECIES_'):].lower()}/overworld.png")
    for entry in SecondarySpeciesGfxDict:
        shutil.copy(f"data/graphics/overworlds/{int(SecondarySpeciesGfxDict[entry][0]):04}.png", f"data/graphics/sprites/{SecondarySpeciesGfxDict[entry][1][len('SPECIES_'):].lower()}/overworld_{SecondarySpeciesGfxDict[entry][2]}.png")
