## Base Learnset Files

Base learnset files for each game. These are pulled mostly from pokeapi and are meant
to be reference learnset files for each generation. `learnsets.json` is the file you
want to update. That file is generated from the base files and is intended as a NatDex
learnset to build on. ZA and Scarlet/Violet learnsets were dumped from the games instead.
These dumped files were not used to generate `learnsets.json` to avoid churn for users.


## build_learnsets.py

This script can take base learnsets files and combine them in various ways to generate the `learnsets.json` file. 
The idea is that you can use this to generate a learnsets file for a specific cutoff generation or to use inheritance
to fill in gaps for mons that don't have learnsets in later generations. The repo default is noted below and is 
essentially a NatDex combination. It takes the latest mainline generation's level up moves and egg moves and
then accumulates machine and tutor moves across all generations.

### Flags

- `--cutoff <file>` the cutoff generation to consider. for example, setting `lgpe` will use `rgb` through `lgpe` (if using inheritance, else just `lgpe`)
- `--inherit-level` allows level up moves to be inherited from previous gens to fill in gaps
- `--inherit-egg` allows egg moves to be inherited from previous gens to fill in gaps
- `--inherit-machine` allows machine moves learnsets to accumulate across generations
- `--inherit-tutor` allows tutor moves learnsets to accumulate across generations
- `--ignore-files` ignore certain generation files

Alt forms of pokemon will inherit their sets from their base form. This is especially useful for things like Mega evolutions where you can technically define different learnsets.

### Examples

#### HeartGold / SoulSilver (Pure)

This would use pure HGSS learnsets meaning any newer mons would not have any learnable moves. Normally it will be better to simply take the hgss json file and copy that into `data/learnsets/learnsets.json`

```bash
python3 scripts/build_learnsets.py --generate data/learnsets/learnsets.json --cutoff hgss
```

#### National Dex (Repo Default)

Takes the latest available maingame learnsets for each mon. For example, Raticate would take its BDSP level up learnset because it doesn't have learnsets for later gens. 
Note this ignores the Pokemon GO learnsets and Legends ZA.

```bash
python3 scripts/build_learnsets.py --generate data/learnsets/learnsets.json --cutoff go --inherit-level --inherit-egg --inherit-machine --inherit-tutor --ignore-files 20_la.json 22_za.json 99_go.json
```

#### Custom

You can add your own customizations and fill in the rest using inheritance as well. If you just want to customize existing learnsets then it likely makes more sense to modify `data/learnsets/learnsets.json` directly.

```bash
python3 scripts/build_learnsets.py --generate data/learnsets/learnsets.json --cutoff custom --inherit-level --inherit-egg --inherit-machine --inherit-tutor
```