#ifndef SPECIES_DATA_H
#define SPECIES_DATA_H

#include <stdint.h>

#include "constants/ability.h"
#include "constants/item.h"
#include "constants/pokemon.h"
#include "constants/species.h"

#include "config.h"

#ifndef TYPES_H
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef int16_t s16;
#endif

typedef struct SpeciesBaseStats {
    u8 hp;
    u8 attack;
    u8 defense;
    u8 spAttack;
    u8 spDefense;
    u8 speed;
} SpeciesBaseStats;

typedef struct SpeciesEVYields {
    u8 hp;
    u8 attack;
    u8 defense;
    u8 spAttack;
    u8 spDefense;
    u8 speed;
} SpeciesEVYields;

typedef struct SpeciesWildHeldItems {
    u16 common;
    u16 rare;
} SpeciesWildHeldItems;

typedef struct SpeciesMetrics {
    u32 heightDecimetres;
    u32 weightHectograms;
    u8 bodyType;
    u16 femaleTrainerScale;
    u16 femalePokemonScale;
    u16 maleTrainerScale;
    u16 malePokemonScale;
    s16 femaleTrainerYOffset;
    s16 femalePokemonYOffset;
    s16 maleTrainerYOffset;
    s16 malePokemonYOffset;
} SpeciesMetrics;

typedef struct SpeciesData {
    SpeciesBaseStats baseStats;
    u8 types[2];
    u8 catchRate;
    u8 baseExpRewardPadding;
    SpeciesEVYields evYields;
    SpeciesWildHeldItems wildHeldItems;
    u8 genderRatio;
    u8 hatchCycles;
    u8 baseFriendship;
    u8 expRate;
    u8 eggGroups[2];
    u16 abilities[2];
    u8 safariFleeRate;
    u8 bodyColor;
    u8 flipSprite;
    // currently unused but these words still occupy 0x1C..0x2B in each member
    u32 tmHmLearnsetPadding[4];
} SpeciesData;

typedef struct SpeciesTextData {
    const char *name;
    const char *pokedexEntry;
    const char *classification;
    const char *height;
    const char *weight;
} SpeciesTextData;

typedef struct SpeciesDataEntry {
    SpeciesData speciesData;
    SpeciesMetrics metricsData;
    SpeciesTextData textData;
} SpeciesDataEntry;

extern const SpeciesDataEntry sSpeciesData[MAX_SPECIES_INCLUDING_FORMS + 1];

#endif
