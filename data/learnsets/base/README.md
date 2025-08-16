## Base Learnset Files

Base learnset files for each game. Used by `scripts/generate_learnsets.py` to build a learnset for specific generations.

### Flags

- `--cutoff <file>` the cutoff generation to consider. for example, setting `lgpe` will use `rgb` through `lgpe` (if using inheritance, else just `lgpe`)
- `--inherit-level` allows level up moves to be inherited from previous gens to fill in gaps
- `--inherit-egg` allows egg moves to be inherited from previous gens to fill in gaps
- `--inherit-machine` allows machine moves learnsets to accumulate across generations
- `--inherit-tutor` allows tutor moves learnsets to accumulate across generations

Alt forms of pokemon will inherit their sets from their base form. This is especially useful for things like Mega evolutions where you can technically define different learnsets.

### Examples

#### HeartGold / SoulSilver (Pure)

This woud use pure HGSS learnsets meaning any newer mons would not have any learnable moves. Normally it will be better to simply take the hgss json file and copy that into `data/learnsets/learnsets.json`

```bash
python3 scripts/build_learnsets.py --generate data/learnsets/learnsets.json --cutoff hgss
```

#### National Dex (Repo Default)

Takes the latest available maingame learnsets for each mon. For example, Raticate would take its BDSP level up learnset because it doesn't have learnsets for later gens. 
Note this ignores the Pokemon GO learnsets.

```bash
python3 scripts/build_learnsets.py --generate data/learnsets/learnsets.json --cutoff sv --inherit-level --inherit-egg --inherit-machine --inherit-tutor
```

#### Custom

You can add your own customizations and fill in the rest using inheritance as well. If you just want to customize existing learnsets then it likely makes more sense to modify `data/learnsets/learnsets.json` directly.

```bash
python3 scripts/build_learnsets.py --generate data/learnsets/learnsets.json --cutoff custom --inherit-level --inherit-egg --inherit-machine --inherit-tutor
```