#!/usr/bin/env python3

import os
import subprocess
import shutil
import struct
import sys

# whatever man
dump = True

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
    #args = sys.argv[1:]
    # take repository structure based on species defines and convert them one by one...  0-493 need to have ####, 544-rest need to have 7_ preprended
    SpeciesDict = {}
    GrabSpeciesDict(SpeciesDict)
    for i in range(0, len(SpeciesDict)):
        if ((i == 0) or (i > 493 and i < 544)):
            continue # nothing to be done for this range
        base_name = SpeciesDict[i][len("SPECIES_"):].lower()
        input_name = f"data/graphics/sprites/{base_name}/male/front.png"
        output_name = f"{'7_' if i > 493 else ''}{i:04}"
        if (not os.path.isfile(f"{input_name}.key")):
            input_name = f"data/graphics/sprites/{base_name}/female/front.png"
        subprocess.run(["./tools/source/dumptools/pw_conv_sprite.sh", input_name, f"data/graphics/pokewalker/sprites/{output_name}.png"], check = True, capture_output = True, text = True)
        input_name = f"data/graphics/sprites/{base_name}/icon.png"
        subprocess.run(["./tools/source/dumptools/pw_conv_icon.sh", input_name, f"data/graphics/pokewalker/icons/{i:04}.png"], check = True, capture_output = True, text = True)
