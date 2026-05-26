import sys
import os
import struct
import shutil

"""
basic idea is to manually rename files from the original repository structure in an approximately working fashion
"""

dump = False

def GrabSpeciesDict(speciesDict: dict):
    speciesEntry = 0
    with open("include/constants/species.h") as f:
        for line in f:
            if len(line.split()) > 1:
                test = line.split()[1].strip()
                if 'SPECIES' in test and not '_START' in test and not '_SPECIES_H' in test and not '_NUM (' in line and (not 'MAX_' in test or 'GIGANTAMAX' in test):
                    if dump:
                        speciesDict[speciesEntry] = test
                    else:
                        speciesDict[test] = speciesEntry
                    speciesEntry += 1


if __name__ == '__main__':
    with open("src/field/overworld_table.c", "r", encoding="utf-8") as f:
        prefix = ""
        SpeciesToGfxDict = {}
        SecondarySpeciesGfxDict = {}
        SpeciesDict = {}
        GrabSpeciesDict(SpeciesDict)
        for line in f:
            if (".gfx = " in line):
                if (" // " in line and "SPECIES" in line):
                    prefix = line.split(" // ")[1].strip()
                    SpeciesToGfxDict[prefix] = int(line.split(".gfx = ")[1].split(",")[0])
                    #print(f"{prefix}: {SpeciesToGfxDict[prefix]}")
                    print(f"    MON_FOLLOWER_ENTRY({prefix}, {line.split('.callback_params = ')[1].split(' }')[0]})")
                elif (" // " in line):
                    suffix = line.split(" // ")[1].strip()
                    SecondarySpeciesGfxDict[prefix + "_" + suffix.upper()] = [int(line.split(".gfx = ")[1].split(",")[0]), prefix, suffix]
                    #print(f"    MON_FOLLOWER_ENTRY({prefix + '_OVERWORLD_' + suffix.upper()}, {line.split('.callback_params = ')[1].split(' }')[0]})")
                    #print(f"{prefix}_{suffix.upper()}: {SecondarySpeciesGfxDict[prefix + '_' + suffix.upper()]}")
        for entry in SpeciesDict:
            if not os.path.exists(f"data/graphics/sprites/{entry[len('SPECIES_'):].lower()}/overworld.png"):
                shutil.copy("data/graphics/sprites/bulbasaur/overworld.png", f"data/graphics/sprites/{entry[len('SPECIES_'):].lower()}/overworld.png")
                shutil.copy("data/graphics/sprites/bulbasaur/overworld.json", f"data/graphics/sprites/{entry[len('SPECIES_'):].lower()}/overworld.json")
                shutil.copy("data/graphics/sprites/bulbasaur/overworld-tsure_poke0.pal", f"data/graphics/sprites/{entry[len('SPECIES_'):].lower()}/overworld-tsure_poke0.pal")
                shutil.copy("data/graphics/sprites/bulbasaur/overworld-tsure_poke1.pal", f"data/graphics/sprites/{entry[len('SPECIES_'):].lower()}/overworld-tsure_poke1.pal")
            else:
                print(f"File data/graphics/sprites/{entry[len('SPECIES_'):].lower()}/overworld.png exists.")
#        for entry in SpeciesToGfxDict:
#            shutil.copy(f"data/graphics/overworlds/{int(SpeciesToGfxDict[entry]):04}.png", f"data/graphics/sprites/{entry[len('SPECIES_'):].lower()}/overworld.png")
#            shutil.copy(f"data/graphics/overworlds/{int(SpeciesToGfxDict[entry]):04}.json", f"data/graphics/sprites/{entry[len('SPECIES_'):].lower()}/overworld.json")
#            shutil.copy(f"data/graphics/overworlds/{int(SpeciesToGfxDict[entry]):04}-tsure_poke0.pal", f"data/graphics/sprites/{entry[len('SPECIES_'):].lower()}/overworld-tsure_poke0.pal")
#            shutil.copy(f"data/graphics/overworlds/{int(SpeciesToGfxDict[entry]):04}-tsure_poke1.pal", f"data/graphics/sprites/{entry[len('SPECIES_'):].lower()}/overworld-tsure_poke1.pal")
#        for entry in SecondarySpeciesGfxDict:
#            shutil.copy(f"data/graphics/overworlds/{int(SecondarySpeciesGfxDict[entry][0]):04}.png", f"data/graphics/sprites/{SecondarySpeciesGfxDict[entry][1][len('SPECIES_'):].lower()}/overworld_{SecondarySpeciesGfxDict[entry][2]}.png")
#            shutil.copy(f"data/graphics/overworlds/{int(SecondarySpeciesGfxDict[entry][0]):04}.json", f"data/graphics/sprites/{SecondarySpeciesGfxDict[entry][1][len('SPECIES_'):].lower()}/overworld_{SecondarySpeciesGfxDict[entry][2]}.json")
#            shutil.copy(f"data/graphics/overworlds/{int(SecondarySpeciesGfxDict[entry][0]):04}-tsure_poke0.pal", f"data/graphics/sprites/{SecondarySpeciesGfxDict[entry][1][len('SPECIES_'):].lower()}/overworld_{SecondarySpeciesGfxDict[entry][2]}-tsure_poke0.pal")
#            shutil.copy(f"data/graphics/overworlds/{int(SecondarySpeciesGfxDict[entry][0]):04}-tsure_poke1.pal", f"data/graphics/sprites/{SecondarySpeciesGfxDict[entry][1][len('SPECIES_'):].lower()}/overworld_{SecondarySpeciesGfxDict[entry][2]}-tsure_poke1.pal")
#        for entry in SpeciesDict:
#            if entry not in SpeciesToGfxDict and "_OVERWORLD_" not in entry:
#                shutil.copy(f"data/graphics/overworlds/0297.png", f"data/graphics/sprites/{entry[len('SPECIES_'):].lower()}/overworld.png")
#                shutil.copy(f"data/graphics/overworlds/0297.json", f"data/graphics/sprites/{entry[len('SPECIES_'):].lower()}/overworld.json")
#                shutil.copy(f"data/graphics/overworlds/0297-tsure_poke0.pal", f"data/graphics/sprites/{entry[len('SPECIES_'):].lower()}/overworld-tsure_poke0.pal")
#                shutil.copy(f"data/graphics/overworlds/0297-tsure_poke1.pal", f"data/graphics/sprites/{entry[len('SPECIES_'):].lower()}/overworld-tsure_poke1.pal")
