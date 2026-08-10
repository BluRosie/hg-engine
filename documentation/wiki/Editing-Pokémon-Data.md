## Editing Pokémon Data

The repo builds all information from all Pokémon from files that are already within the repo.  Most of these are text files with the intent of being all of portable, easy to edit, and trackable via git.

Files discussed are mostly in ``armips/data``.  These are discussed in alphabetical order as follows, or listed as unknown if they are unknown and not covered:
- ``pokedex/sortlists/*.s``
- ``pokedex/000.s`` - unknown
- ``pokedex/002.s`` - unknown
- ``pokedex/areadata.s``
- ``pokedex/femalemonscaledivisor.s`` and ``pokedex/malemonscaledivisor.s``
- ``pokedex/femalemonypos.s`` and ``pokedex/malemonypos.s``
- ``pokedex/femaletrainerscaledivisor.s`` and ``pokedex/maletrainerscaledivisor.s``
- ``pokedex/femaletrainerypos.s`` and ``pokedex/maletrainerypos.s``
- ``pokedex/pokedexdata.s``
- ``pokedex/weight.s``
- ``trainers/trainers.s`` is discussed in [[Trainer Pokémon Structure Documentation|Trainer Pokémon Structure Documentation]].
- ``trainers/trainertext.s`` is also discussed in [[Trainer Pokémon Structure Documentation|Trainer Pokémon Structure Documentation]].
- ``babymons.s``
- ``eggmoves.s``
- ``encounters.s`` is discussed in [[Wild Pokémon Table Documentation|Wild Pokémon Table Documentation]].
- ``evodata.s``
- ``heighttable.s``
- ``iconpalettetable.s``
- ``levelupdata.s``
- ``mondata.s``
- ``monoverworlds.s`` is discussed in [[Overworld System Documentation|Overworld System Documentation]].
- ``moves.s`` is discussed in [[Move Data Structure Documentation|Move Data Structure Documentation]].
- ``regionaldex.s``
- ``spriteoffsets.s``
- ``tmlearnset.txt``
- ``tutordata.txt``

Other relevant files are in `data`, and are just C files:
- ``BaseExperienceTable.c``
- ``HiddenAbilityTable.c`` is discussed in [[Hidden Ability Documentation|Hidden Ability Documentation]].

Finally, this repo also builds all (most) of the graphics files.  Due to differences in how the sprites are stored, the sprites are formatted differently, so it is important to pay attention to exactly how sprites are formatted to properly use and add entries.

The graphics currently supported are:

- ``data/graphics/overworlds``
- ``data/graphics/sprites``

For sprite manipulation, I personally recommend Aseprite.  This tool does not support saving PNG's in the 4bpp format, instead defaulting to 8bpp.  Where possible, hg-engine looks to accommodate 4bpp regardless.

In case you need to still use 4bpp images or just for troubleshooting, [Irfanview](https://www.irfanview.com/) has always worked well and reports the palette in the order it is in the file, a requirement that is surprisingly missed frequently.

### ``pokedex/sortlists/*.s``

The Dex has options to search for Pokémon within certain criteria, including body form, type, weight, height, and alphabetical by name.

These lists are enumerated in narc a214.  Every one corresponds to a separate category, of which the file name describes the contents of the file.

Every file contains all of the species that belong to that category with a halfword per species that belongs to that file.

``044-061.s`` are all empty.  Not sure at all what they were in the past, if anything.

``bodytype*.s`` each describe all of the species that belong to the body type.  These can be searched on Bulbapedia if need be.

``heaviest.s`` describes all species in order from heaviest to lightest.  When 2 species weigh the same, they are ordered by national dex number.

``lightest.s`` describes all species in order from lightest to heaviest.  When 2 species weigh the same, they are ordered by national dex number.

``name*to*.s`` appear to be unused, but describe the species in alphabetical order that starts with the letters in the filename inclusive.  For example, ``nameJtoL.s`` has all of the species that have names that start with the letter J, K, and L.

``name*.s`` each describe the species in alphabetical order that start with the letter in the filename.  For example, ``nameG.s`` has all of the species that have names that start with the letter G.

``nationalnum.s`` describes all species by national dex number.

``regionalnum.s`` describes the species that appear in the regional dex by the regional dex order.

``smallest.s`` describes all species in order from smallest to tallest.  When 2 species are the same height, they are ordered by national dex number.

``tallest.s`` describes all species in order from tallest to smallest.  When 2 species are the same height, they are ordered by national dex number.

``type*.s`` each describe the species that are at least part that type in national dex number.  For example, ``typeice.s`` has all of the species that are at least part ice type.

### ``pokedex/areadata.s``

``areadata.s`` describes where on the region map a Pokémon can appear.  These are separated into routes and cities vs. special areas.

Special areas are distinct from routes and cities in that they are the landmarks (i.e. Sprout Tower, Mt. Silver, Mt. Moon, etc.)

Each Pokémon has 8 files, one for each of...
- special areas morning
- special areas day
- special areas night
- routes and cities morning
- routes and cities day
- routes and cities night
- special areas special (flashes red quickly in between yellow flashes)
- routes and cities special

This is clearly separate areas for each time of day as well.  The "special" time of day typically refers to Headbutt trees.

The narc has all of these sequentially for each Pokémon in this fashion:
- special areas morning 0
- special areas morning bulbasaur
- special areas morning ivysaur
- special areas morning venusaur
- ...
- special areas morning arceus
- special areas day bulbasaur
- special areas day ivysaur
- ...
- special areas day arceus
- ...

And so on consecutively in the order the 8 files are described above.  This leads to the files describing Bulbasaur being 3, 498, 993, 1488, 1983, 2478, 2973, and 3468.

As just explained, the narc a133 is structured very annoyingly for this application.

The macros take care of it and allow for each species to be grouped together for ease of editing.

Each area has a 4-byte word constant assigned to it that will flag where the dex should flash to show that the species shows up there.  These are enumerated at line 120 of ``armips/include/constants.s``.

Thus each Pokémon has its area data defined like that.  Each file is a list of 4-byte words that correspond to an area that will flash when hovering over the Pokémon.

An example in Larvitar, who appears in Mt. Silver all throughout the day and nowhere else:

```
specialareas SPECIES_LARVITAR, DEX_MORNING
    .word DEX_MT_SILVER_CAVE
    dexendareadata


specialareas SPECIES_LARVITAR, DEX_DAY
    .word DEX_MT_SILVER_CAVE
    dexendareadata


specialareas SPECIES_LARVITAR, DEX_NIGHT
    .word DEX_MT_SILVER_CAVE
    dexendareadata


routesandcities SPECIES_LARVITAR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_LARVITAR, DEX_DAY
    dexendareadata


routesandcities SPECIES_LARVITAR, DEX_NIGHT
    dexendareadata


specialareas SPECIES_LARVITAR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_LARVITAR, DEX_SPECIAL
    dexendareadata
```

Or Houndour, who only appears in Route 7 of Kanto at night:

```
specialareas SPECIES_HOUNDOUR, DEX_MORNING
    dexendareadata


specialareas SPECIES_HOUNDOUR, DEX_DAY
    dexendareadata


specialareas SPECIES_HOUNDOUR, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_HOUNDOUR, DEX_MORNING
    dexendareadata


routesandcities SPECIES_HOUNDOUR, DEX_DAY
    dexendareadata


routesandcities SPECIES_HOUNDOUR, DEX_NIGHT
    .word DEX_ROUTE_7
    dexendareadata


specialareas SPECIES_HOUNDOUR, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_HOUNDOUR, DEX_SPECIAL
    dexendareadata
```

Entries can get rather complicated, as does Hoothoot's, who looks to appear just about everywhere via special encounter.

### ``pokedex/femalemonscaledivisor.s`` and ``pokedex/malemonscaledivisor.s``

In the Dex, there is a tab dedicated to showing off how the player sizes up to the Pokémon species currently being viewed and the weight comparison.  This tab has a number of things that go into it.

The Dex individually scales the Pokémon silhouette and the player silhouette differently depending on whether or not the player is female.  Pokémon are often scaled identically between the two player genders, while the player sprite is scaled down a little more for the female player.  This is likely because the female sprite is noticeably taller, so the denominator as defined in ``femaletrainerscaledivisor`` is bigger.

The sprites are then individually shfited down pixels to have a consistent ground level between them that roughly coincides with the bottom of the Dex box allocated for them.

For obvious reasons, this is asinine to keep up, especially as most players will never see the two perspectives, let alone side by side.  Additions Gen 5 and up just use the same for both instances.

That being said...

The ``fe/malemonscaledivisor.s`` are files containing 2-byte halfword numbers for each Pokémon that are applied as the denominator to the size calculation that determines how the Pokémon sprite is scaled relative to the base 80x80 sprite when the player is female (femalemonscaledivisor) or male (malemonscaledivisor).

The numerator in this equation is ``0x100``, so the divisor is defined to decide on scale.  A divisor less than ``0x100`` will increase the size.

### ``pokedex/femalemonypos.s`` and ``pokedex/malemonypos.s``

See the start of the description in the section above for an explanation of what goes into sprite manipulation in the Dex.

The ``monypos`` files have a 2-byte halfword for each Pokémon.

``pokedex/femalemonypos.s`` defines how many pixels the Pokémon sprite is shifted down when the player is female.  The sprite is scaled then shifted, so this happens second.

``pokedex/malemonypos.s`` defines how many pixels the Pokémon sprite is shifted down when the player is male.  The sprite is scaled then shifted, so this happens second.

The amount shifted by can be negative.

### ``pokedex/femaletrainerscaledivisor.s`` and ``pokedex/maletrainerscaledivisor.s``

See the start of the description in the section above for an explanation of what goes into sprite manipulation in the Dex.

The ``trainerscaledivisor`` files have a 2-byte halfword for each Pokémon.

``pokedex/femaletrainerscaledivisor.s`` defines the denominator in the scaling equation applied to the trainer sprite when the player is female.  This is with a numerator of 0x100.  Denominators less than 0x100 increase the size of the sprite.

``pokedex/maletrainerscaledivisor.s`` defines the denominator in the scaling equation applied to the trainer sprite when the player is male.  This is with a numerator of 0x100.  Denominators less than 0x100 increase the size of the sprite.

### ``pokedex/femaletrainerypos.s`` and ``pokedex/maletrainerypos.s``

See the start of the description in the section above for an explanation of what goes into sprite manipulation in the Dex.

The ``trainerypos`` files have a 2-byte halfword for each Pokémon.

``pokedex/femaletrainerypos.s`` defines how many pixels the trainer sprite is shifted down when the player is female.  The sprite is scaled then shifted, so this happens second.

``pokedex/maletrainerypos.s`` defines how many pixels the trainer sprite is shifted down when the player is male.  The sprite is scaled then shifted, so this happens second.

The amount shifted by can be negative.

### ``pokedex/pokedexdata.s``

This file includes every dex file to prevent having to establish via Makefile that every file needs to be built.  It shouldn't be edited unless you know _exactly_ what you are doing.

### ``pokedex/weight.s``

This file has a 4-byte word per Pokémon that defines how many hectograms (0.1 kg) it weighs.  For example, Bulbasaur is 6.9 kg, so the word stored for Bulbasaur is 69.

This is actually used not just for weight comparison, but also for weight damage calculation for moves like Low Kick.

### ``babymons.s``

This file has a 2-byte halfword per Pokémon that defines which species hatch from eggs that this Pokémon has.  Incense baby Pokémon are handled as exceptions in the code (i.e. Pikachu list Pichu as their entries in this file).

An example entry for an evolutionary line:

```
babymon SPECIES_TRAPINCH, SPECIES_TRAPINCH
babymon SPECIES_VIBRAVA, SPECIES_TRAPINCH
babymon SPECIES_FLYGON, SPECIES_TRAPINCH
```

### ``eggmoves.s``

Each first-in-its-line species has an entry here that describes the moves that it has.  It is technically a big 2-byte halfword array with each species being read as a move, so to speak--the species are offset by a constant 40,000 to denote that a new species is being read.

This is made nicely readable in this repository.

Note that any species that can come out of an egg will have moves defined:

```
eggmoveentry SPECIES_MARILL
    eggmove MOVE_LIGHT_SCREEN
    eggmove MOVE_PRESENT
    eggmove MOVE_AMNESIA
    eggmove MOVE_FUTURE_SIGHT
    eggmove MOVE_BELLY_DRUM
    eggmove MOVE_PERISH_SONG
    eggmove MOVE_SUPERSONIC
    eggmove MOVE_SUBSTITUTE
    eggmove MOVE_AQUA_JET
    eggmove MOVE_SUPERPOWER
    eggmove MOVE_REFRESH
    eggmove MOVE_BODY_SLAM
```

Here, Marill gets an entry despite the baby Azurill existing.  Likewise, Pikachu, Wobbuffet, and others of their kind get entries.

Pending further research, each Pokémon is limited to 16 egg moves.

### ``evodata.s``

Evolutions have a file per Pokémon describing method of evolution, parameter for that method, and the species that it evolves into.  Each of these is a 2-byte halfword, totaling 6 bytes per evolution.

Vanilla HGSS has 7 evolutions defined for each Pokémon.  This repo has expanded that to 9 to support Eevee and whatever happens in the upcoming generations.

This repository further allows the user to specify a form to evolve into based on that evolution method.  This will change the form of the Pokémon upon evolving to be the one specified (as long as it is nonzero).

Each entry needs to be padded out to the limit to ensure that no invalid data is read.

This makes an example look like this:

```
evodata SPECIES_GLOOM
    evolution EVO_USE_ITEM, ITEM_LEAF_STONE, SPECIES_VILEPLUME
    evolution EVO_USE_ITEM, ITEM_SUN_STONE, SPECIES_BELLOSSOM
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    terminateevodata
```

An example entry with forms:

```
evodata SPECIES_LITLEO
    evolutionwithform EVO_LEVEL_MALE, 35, SPECIES_PYROAR, 0
    evolutionwithform EVO_LEVEL_FEMALE, 35, SPECIES_PYROAR, 1
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
terminateevodata
```

The currently supported evolution methods:

```
EVO_NONE                         equ 0
EVO_HAPPINESS                    equ 1
EVO_HAPPINESS_DAY                equ 2
EVO_HAPPINESS_NIGHT              equ 3
EVO_LEVEL_UP                     equ 4
EVO_TRADE                        equ 5
EVO_TRADE_ITEM                   equ 6
EVO_USE_ITEM                     equ 7
EVO_LEVEL_MORE_ATTACK            equ 8
EVO_LEVEL_ATK_DEF_EQUAL          equ 9
EVO_LEVEL_MORE_DEFENSE           equ 10
EVO_LEVEL_PID_LOW                equ 11
EVO_LEVEL_PID_HIGH               equ 12
EVO_LEVEL_GEN_NEW_MON_1          equ 13
EVO_LEVEL_GEN_NEW_MON_2          equ 14
EVO_MAX_BEAUTY                   equ 15
EVO_USE_ITEM_MALE                equ 16
EVO_USE_ITEM_FEMALE              equ 17
EVO_USE_ITEM_DAY                 equ 18
EVO_USE_ITEM_NIGHT               equ 19
EVO_KNOWS_MOVE                   equ 20
EVO_MON_IN_PARTY                 equ 21
EVO_LEVEL_MALE                   equ 22
EVO_LEVEL_FEMALE                 equ 23
EVO_LEVEL_ELECTRIC_FIELD         equ 24
EVO_LEVEL_MOSSY_STONE            equ 25
EVO_LEVEL_ICY_STONE              equ 26
EVO_LEVEL_DAY                    equ 27
EVO_LEVEL_NIGHT                  equ 28
EVO_LEVEL_DUSK                   equ 29
EVO_LEVEL_RAIN                   equ 30
EVO_HAS_MOVE_TYPE                equ 31
EVO_LEVEL_DARK_TYPE_MON_IN_PARTY equ 32
EVO_TRADE_SPECIFIC_MON           equ 33
EVO_LEVEL_NATURE_AMPED           equ 34
EVO_LEVEL_NATURE_LOW_KEY         equ 35
EVO_AMOUNT_OF_CRITICAL_HITS      equ 36 // hardcoded to 3 critical hits
EVO_HURT_IN_BATTLE_AMOUNT        equ 37
```

Pokémon that evolve via `EVO_HAPPINESS`, `EVO_HAPPINESS_DAY`, and `EVO_HAPPINESS_DAY` evolve upon level up when their friendship value is over 220 (and at the time of day specified.

Pokémon that evolve via `EVO_LEVEL_UP` evolve at the specified level.

Pokémon that evolve via `EVO_TRADE` or `EVO_USE_ITEM` evolve upon being traded (while holding their item if specified).

Pokémon that evolve via `EVO_USE_ITEM` evolve when the specified item is used on them.

Pokémon that evolve via `EVO_LEVEL_MORE_ATTACK`, `EVO_LEVEL_ATK_DEF_EQUAL`, `EVO_LEVEL_MORE_DEFENSE`, `EVO_LEVEL_PID_LOW`, `EVO_LEVEL_PID_HIGH` all evolve at the specified level under the conditions in the name.

Pokémon that evolve via `EVO_LEVEL_GEN_NEW_MON_1` evolve into the Pokémon at the level specified.  The game will also trigger a new identical Pokémon at the same level as specified by the `EVO_LEVEL_GEN_NEW_MON_2` entry.

Pokémon that evolve via `EVO_MAX_BEAUTY` evolve when their Beauty contest stat surpasses the specified number.

Pokémon that evolve via `EVO_USE_ITEM_MALE`, `EVO_USE_ITEM_FEMALE`, `EVO_USE_ITEM_DAY`, `EVO_USE_ITEM_NIGHT` evolve when the specified item is used on them under the condition specified in the name of the method.

Pokémon that evolve via `EVO_MON_IN_PARTY` evolve upon level up when the specified Pokémon species is in the party.

Pokémon that evolve via `EVO_LEVEL_MALE`, `EVO_LEVEL_FEMALE` evolve when they reach the specified level and are specifically the sex that is specified in the name of the method.

Pokémon that evolve via `EVO_LEVEL_ELECTRIC_FIELD` evolve when leveled up in Route 43 or in the Power Plant.

Pokémon that evolve via `EVO_LEVEL_MOSSY_STONE` evolve when leveled up in Ilex or Viridian Forests.

Pokémon that evolve via`EVO_LEVEL_ICY_STONE` evolve when leveled up in the lowest level of Ice Path or Seafoam Islands.

Pokémon that evolve via `EVO_LEVEL_DAY`, `EVO_LEVEL_NIGHT`, `EVO_LEVEL_DUSK`, `EVO_LEVEL_RAIN`

Pokémon that evolve via `EVO_HAS_MOVE_TYPE` evolve when leveled up knowing a move that has the specified type.

Pokémon that evolve via `EVO_LEVEL_DARK_TYPE_MON_IN_PARTY` evolve when a Dark-type Pokémon is in the party at the same time and the specified level is reached.

Pokémon that evolve via `EVO_TRADE_SPECIFIC_MON` evolve when traded with a specific other Pokémon.

Pokémon that evolve via `EVO_LEVEL_NATURE_AMPED` evolve when they have any one of the "amped" natures and reached the specified level.  See the list of natures that are "low-key" to determine which nature yours is.

Pokémon that evolve via `EVO_LEVEL_NATURE_LOW_KEY` evolve when they have any one of the "low-key" natures and reached the specified level.  The low-key natures are:

```c
case NATURE_ADAMANT:
case NATURE_BRAVE:
case NATURE_DOCILE:
case NATURE_HARDY:
case NATURE_HASTY:
case NATURE_IMPISH:
case NATURE_JOLLY:
case NATURE_LAX:
case NATURE_NAIVE:
case NATURE_NAUGHTY:
case NATURE_QUIRKY:
case NATURE_RASH:
case NATURE_SASSY:
```

Pokémon that evolve via `EVO_AMOUNT_OF_CRITICAL_HITS` need to get 3 critical hits in a single appearance in battle to evolve upon level up after this has occurred.  Switching out or fainting resets the counter, it needs to be in one appearance.

Pokémon that evolve via `EVO_HURT_IN_BATTLE_AMOUNT` evolve when they have sustained damage in excess of the amount specified and level up while their HP is down.

### ``heighttable.s``

This file describes the in-battle shift downwards in pixels that happens to the sprite when displayed.  Each Pokémon gets 4 files in the narc, each a byte long and sequentially positioned.

Each file, in order, is the one that shifts the female back, male back, female front, and male front in that order.

An example of what this looks like in the file:

```
heightentry SPECIES_NIDORAN_M, "null", 11, "null", 20
```

Here, the female NidoranM sprite doesn't exist, so the file for each shift to the female sprite doesn't exist.  The male back sprite is shifted down 11 pixels, and the male front sprite is shifted down 20 pixels.

Species that are Gender Unknown by default only have a male sprite and will have null entries here.  Often this is too cumbersome to keep up, so many of the new Pokémon just have sprites for them defined regardless.

Pokeditor supports visualizing this very well and is recommended for getting values for this.

### ``iconpalettetable.s``

In this table located in the synthetic overlay, each Pokémon gets a byte that is 0, 1, or 2 that determines which of the 3 palettes are used for Pokémon icons that are displayed.

Forms are originally coded to load an icon from after the end of the normal species defines.  This is actually the primary decision to make new species start at 544 instead of 494--old form icons take all the way up until 543.  As a result, new form icons function similarly.

Exceptions involving gender are coded on a case-by-case basis, and are currently just Frillish, Jellicent, Meowstic, Pyroar, Indeedee, and Oinkologne.

### ``levelupdata.s``

Each Pokémon gets a file in the narc detailing its learnset.  By default, the game supports learnsets of length 24 moves and move indices up to 511.  hg-engine has expanded this to learnsets of 30 moves with indices up to 65,535 each.

An example learnset:

```
levelup SPECIES_SWADLOON
    learnset MOVE_GRASS_WHISTLE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_RAZOR_LEAF, 1
    learnset MOVE_PROTECT, 20
    terminatelearnset
```

Moves that are learned on evolution are not yet supported.  However, when they are, it will be coded as a move learned at level 0 and located before all the other moves, similar to how Gen 7+ handles it.

### ``mondata.s``

Each Pokémon gets a file in the personal narc detailing a number of things, particularly base stats, TM learnsets, gender ratio (number of Pokémon that will be female out of 254), ev yields, etc.

Hidden abilities are not included here to maintain compatibility with existing tools.  Base experience is also not identified in this file because later generations use values higher than 255.

TM learnsets are technically defined in the mondata, but for this project they are defined in ``tmlearnset.txt`` for formatting convenience.

``basestats`` and ``evyields`` are listed in the order HP, Attack, Defense, Speed, Sp. Attack, and Sp. Defense, as they are internally.

The string defined in the header data of the mondata entry is the name of the Pokémon as it appears in the game.  The end of the mondata entry for the species lists the dex descriptions, height, and weight of each.

Example ``mondata`` entry:

```
mondata SPECIES_GLIGAR, "Gligar"
    basestats 65, 75, 105, 85, 35, 65
    types TYPE_GROUND, TYPE_FLYING
    catchrate 60
    baseexp 0 // defined in baseexp.s
    evyields 0, 0, 1, 0, 0, 0
    items ITEM_NONE, ITEM_NONE
    genderratio 127
    eggcycles 20
    basefriendship 70
    growthrate GROWTH_MEDIUM_SLOW
    egggroups EGG_GROUP_BUG, EGG_GROUP_BUG
    abilities ABILITY_HYPER_CUTTER, ABILITY_SAND_VEIL
    runchance 0
    colorflip BODY_COLOR_PURPLE, 0
    tmdata SPECIES_GLIGAR_TM_DATA_0, SPECIES_GLIGAR_TM_DATA_1, SPECIES_GLIGAR_TM_DATA_2, SPECIES_GLIGAR_TM_DATA_3
    mondexentry SPECIES_GLIGAR, "It flies straight at its target’s\nface, then clamps down on the\nstartled victim to inject poison."
    mondexclassification SPECIES_GLIGAR, "FlyScorpion Pokémon"
    mondexheight SPECIES_GLIGAR, "3’07”"
    mondexweight SPECIES_GLIGAR, "142.9 lbs."
```

### ``regionaldex.s``

Each Pokémon gets a halfword that tells the game the regional dex number of the Pokémon, 0 if the Pokémon is not in the regional dex.  While ``pokedex/sortlists/regionalnum.s`` tells whether or not the Pokémon appears in the regional dex, the number that is loaded from here deterines what number is displayed next the the Pokémon in the Dex as well as in the summary screen.

### ``spriteoffsets.s``

Each Pokémon gets 0x59 bytes sequentially that describes primarily the animation that it receives.  Inside of this, however, are also global sprite descriptions that aren't fully known yet but have entirely to do with the animations that play for each species when viewed in the summary screen or when coming out of a Ball.  Lhea actually fully documented it [here](https://github.com/BluRosie/hg-engine/issues/146), and incorporating that into the repository is in the works.

New mons are prefilled with Bulbasaur's data as placeholder.

The byte at offset 1 of each species' entry is the front animation.  The byte at offset 0x23 is the back animation.  These can be any sort of numbers and (pending further research) don't seem to match up with anything as far as we know.  More knowledge will involve looking at the code, but we also have perfectly functional examples as it is, so this is not a high priority.

The byte at offset 0x2C describes the back animation.

There are then 3 bytes at offset 0x56 that each describe the y offset (moving down being positive), the shadow's x offset (moving right being positive), and the size of the shadow (0-3 for no shadow to largest shadow).

This appears in ``spriteoffsets.s`` as:

```
dataentry SPECIES_SIMIPOUR  ,  2, 5, -7,  -1,  SHADOW_SIZE_MEDIUM
```

Where the format is:

```
dataentry species, monfrontanim, monbackanim, monoffy, shadowoffx, shadowsize
```

### ``tmlearnset.txt``

This file is used in tandem with ``mondata.s`` to define the TM's that each species can learn.

The format is 4 4-byte words for a total of 128 bits.  TM's 1-32 go in the first word, TM's 33-64 go in the second word, TM's 65-92 and HM's 1-4 in the third word, and HM's 5-8 in the final word.

The list is defined by TM for ease of editing.  The format is:
```
TM###: MOVE_NAME_HERE
    SPECIES_NAME_HERE
    SPECIES_OTHER_HERE
    ...
```

Any line that doesn't start with TM/HM/SPECIES is discarded as a comment.

The TM move specified will automatically be written over the ARM9 entry as well.

The move constants are taken directly from [``include/constants/moves.h``](https://github.com/BluRosie/hg-engine/blob/main/include/constants/moves.h), while the species names are directly from [`include/constants/species.h`](https://github.com/BluRosie/hg-engine/blob/main/include/constants/species.h).  This is done for both dumping from the ROM as well as building to allow for full integration.  The only requirement is that the species and moves are defined in ascending order so that the Python parser I wrote likes it.

An example:

```
TM048: MOVE_SKILL_SWAP
    SPECIES_BUTTERFREE
    SPECIES_VENONAT
    SPECIES_VENOMOTH
    SPECIES_ABRA
    SPECIES_KADABRA
    SPECIES_ALAKAZAM
    SPECIES_SLOWPOKE
    SPECIES_SLOWBRO
    SPECIES_GASTLY
    SPECIES_HAUNTER
    SPECIES_GENGAR
    SPECIES_DROWZEE
    SPECIES_HYPNO
...
```

The item icon and palette will still have to be modified, else the original type's item icon will be displayed.

Expanding this to include more TM's is also in the works.

### ``tutordata.txt``

Each species gets 2 4-byte words to define the Tutor moves that each species can learn.  This goes for a total of 64 bits, of which 52 are used--all from the first word and 20 from the second.

The list here is defined by tutor and move for ease of editing.  The format is:
```
TUTOR_#####: MOVE_NAME_HERE BP_COST
    SPECIES_NAME_HERE
    SPECIES_OTHER_HERE
```

Any line that doesn't start with TUTOR or SPECIES is discarded as a comment.

The move name and BP cost specified are automatically written over the ARM9 entry.

The TUTOR_##### can be any of `TUTOR_TOP_LEFT`, `TUTOR_TOP_RIGHT`, `TUTOR_BOTTOM_RIGHT`, or `TUTOR_HEADBUTT`.  Note that the first `TUTOR_HEADBUTT` entry is the only one that is ever read, and the others are discarded.  Additionally it can not have a BP cost or teach anything but Headbutt.

The move constants are taken directly from [``include/constants/moves.h``](https://github.com/BluRosie/hg-engine/blob/main/include/constants/moves.h), while the species names are directly from [`include/constants/species.h`](https://github.com/BluRosie/hg-engine/blob/main/include/constants/species.h).  This is done for both dumping from the ROM as well as building to allow for full integration.  The only requirement is that the species and moves are defined in ascending order so that the Python parser I wrote likes it.

An example:
```
TUTOR_TOP_LEFT: MOVE_THUNDER_PUNCH 64
    SPECIES_CHARMANDER
    SPECIES_CHARMELEON
    SPECIES_CHARIZARD
    SPECIES_PIKACHU
    SPECIES_RAICHU
    SPECIES_NIDOQUEEN
    SPECIES_NIDOKING
    SPECIES_CLEFAIRY
    SPECIES_CLEFABLE
    SPECIES_JIGGLYPUFF
    SPECIES_WIGGLYTUFF
    SPECIES_MANKEY
    SPECIES_PRIMEAPE
    SPECIES_RAICHU_ALOLAN
```

Expanding this to include more tutors is also in the works.

### ``data/BaseExperienceTable.c``

Starting in generation 5, Pokémon have base experience yields of over 255.  This is the file that lists all of them for every Pokémon, with a 2-byte halfword entry per Pokémon that defines the base experience as used in the calculator.  This is part of the [[Experience Overhaul Documentation|Experience Overhaul Documentation]] as well.

### ``data/graphics/overworlds``

This file contains every overworld that exists in the game in order to build the entire NARC.  This allows the end user to edit all of the overworlds in the game currently, even allowing for [adding new ones](https://github.com/ds-pokemon-hacking/ds-pokemon-hacking.github.io/blob/main/docs/generation-iv/guides/hgss-new_overworlds/hgss-new_overworlds.md).

[`data/SpeciesToOWGfx.c`](https://github.com/BluRosie/hg-engine/blob/main/data/SpeciesToOWGfx.c) contains a table that maps each species to the base overworld number of that species.  This is further discussed in [[Overworld System Documentation|Overworld System Documentation]].

[`src/field/overworld_table.c`](https://github.com/BluRosie/hg-engine/blob/main/src/field/overworld_table.c) contains the mapping between the "tag" of a Pokémon and the actual file index in `a/0/8/1`.  This is further discussed in [[Overworld System Documentation|Overworld System Documentation]].

Each mon gets its own overworld, each consisting of a few separate files.  `0297` is the index for Bulbasaur:
- 0297.png: the actual sprite for the overworld, indexed to 4bpp (16 colors).
- 0297.json: the metadata for the sprite.  This should be relatively the same between all Pokémon that are small/big separately.
- 0297-tsure_poke0.pal: the normal palette, JASC-PAL format.
- 0297-tsure_poke1.pal: the shiny palette, JASC-PAL format.

### ``data/graphics/sprites``

Each species and form gets a folder with its name.  Inside of this folder, there are 2 more folders, male and female.  Finally, each of these folders has a ``front.png`` and a ``back.png`` with a ``.key`` file for each.  The shiny palette is derived entirely from the male back sprite in the instance it exist, otherwise the female back sprite is used, while the normal palette is derived from the male front sprite (the female front sprite if the male front sprite doesn't exist).

Be careful in creating shiny backsprite palettes to ensure that all colors are replaced 1:1 with their shiny counterparts--this is the only way that everything displays properly.  Genderless Pokémon only have male sprites.  Solely male or female Pokémon only have the sprites that correspond with their gender.

Additionally, in each folder, there is an "icon.png".  This is the Pokémon's icon.  It must be indexed to one of the existing icon palettes, which can be downloaded as attachments here:

[pal0.pal](resources/Editing-Pokemon-Data/pal0.pal)
[pal1.pal](resources/Editing-Pokemon-Data/pal1.pal)
[pal2.pal](resources/Editing-Pokemon-Data/pal2.pal)

This then corresponds to its entry in `armips/data/iconpalettetable.s`.

``nitrogfx`` is used for these.  All the sprites except the icons that are currently in the repository have their 0-index color set to be transparent, but this is not necessary at all.

The top left 4 pixels in the first row also can not be any sprite data--they must be transparent (the first color in the palette).  This is due to how the encryption key is stored in the file, and it being messed up when other data is present there.  The ``.key`` files contain this encryption key, and is just a 4-byte file containing the key.  This can safely be copied from any other sprite and function just fine.

## Needs Further Research

Pending further research, there are a few things that are currently not editable by this repo.  These are all TODO items.

Known instances of these are:
- Pokéathlon stats
- dex forms that appear when viewing the forms tab (default is gender)
- where the dex screen flashes when a species appears there (can edit where a species appears within the constraints of the areas already defined)
- adding new TM's
- footprints
