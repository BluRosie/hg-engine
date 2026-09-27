## Wild Pokémon Table Documentation

The wild Pokémon encounter table didn't receive many overhauls, just adding form support in the form of turning the numerous ``species`` fields into ``(form << 11 | species)``.  Here is the structure of the encounter tables, which is unchanged from vanilla:

```c
typedef struct
{
    u8 minLevel;
    u8 maxLevel;
    u16 species;
} __attribute__((packed)) StandardEncounter;

typedef	struct
{
    u8 walkingEncounterRate;
    u8 surfEncounterRate;
    u8 rockSmashEncounterRate;
    u8 oldRodRate;

    u8 goodRodRate;
    u8 superRodRate;
    u16 padding_x6; // get word-aligned for the next array

    u8 walkingLevels[12];
    u16 morningMons[12];
    u16 dayMons[12];
    u16 nightMons[12];

    u16 hoennMons[2];
    u16 sinnohMons[2];

    StandardEncounter surfEncounters[5];
    StandardEncounter rockSmashEncounters[2];
    StandardEncounter oldRodEncounters[5];
    StandardEncounter goodRodEncounters[5];
    StandardEncounter superRodEncounters[5];

    u16 swarmMons[4];    
} __attribute__((packed)) EncounterData;
```

Every ``u16`` field in this structure (including the ``StandardEncounter`` substructure) represents a species of Pokémon.  These have all been changed to be interpreted as ``(form << 11 | species)``.  This allows for up to 2048 indices of Pokémon, and mirrors what was implemented in vanilla for trainer Pokémon species.

The vanilla wild encounters are dumped to [`armips/data/encounters.s`](https://github.com/BluRosie/hg-engine/blob/main/armips/data/encounters.s).  The format is pretty intuitive, and basically follows the above format pretty closely for each:

<details>
<summary>Click for example wild encounter table!</summary>
<br>

```
encounterdata  69 // creates the file to populate

walkrate 10
surfrate 10
rocksmashrate 50
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 3, 2, 3, 2, 2, 2, 4, 4, 3, 4, 3, 4
// walklevels specifies the levels of each slot.  each slot gets its own individual level without a range, which is different compared to the encounter format of later entries.
// replace "pokemon SPECIES_*" with "monwithform SPECIES_*, formid" to get the specific form of a pokemon.  if i want a galarian darumaka, i'd put "monwithform SPECIES_DARUMAKA, 1"
// probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1


// morning encounter slots
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_DUNSPARCE

// day encounter slots
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_DUNSPARCE

// night encounter slots
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_DUNSPARCE

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// the encounter macro specifies a minlevel and a maxlevel
// this is used for the following encounters and not for the normal grass encounters (for some reason)
// either way, change "encounter SPECIES_*, minlevel, maxlevel" to "encounterwithform SPECIES_*, formid, minlevel, maxlevel" to add the form to the new encounter

// surf encounters
// probabilities:  60, 30, 5, 4, 1
encounter SPECIES_MAGIKARP, 10, 20
encounter SPECIES_MAGIKARP, 5, 15
encounter SPECIES_MAGIKARP, 2, 10
encounter SPECIES_MAGIKARP, 2, 10
encounter SPECIES_MAGIKARP, 2, 10

// rock smash encounters
// probabilities:  90, 10
encounter SPECIES_DUNSPARCE, 4, 8
encounter SPECIES_GEODUDE, 8, 14

// old rod encounters
// probabilities:  60, 30, 5, 4, 1
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
// probabilities:  40, 40, 15, 4, 1
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters
// probabilities:  40, 40, 15, 4, 1
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_SEAKING, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_DUNSPARCE
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close
```
</details>

If you wanted a Pokémon with a form to appear in the wild, any ``pokemon`` slot would just change to a ``monwithform``, and any ``encounter`` into an ``encounterwithform``:

```
pokemon SPECIES_GEODUDE
...
monwithform SPECIES_GEODUDE, 1 // alolan geodude

...

encounter SPECIES_GRAVELER, 40, 40
...
encounterwithform SPECIES_GRAVELER, 1, 40, 40 // alolan graveler
```