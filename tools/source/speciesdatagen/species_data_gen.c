#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../../../include/species_data.h"

enum {
    MON_MEMBER_PATH_LENGTH = 40,
    RAWTEXT_PATH_LENGTH = 128,
    MON_MEMBER_SIZE = 44,
    POKEDEX_MEMBER_PATH_LENGTH = 48,
    POKEDEX_SORT_METRIC_MEMBER_COUNT = 11,
    POKEDEX_HEIGHT_BODY_SPECIES_COUNT = 700,
};

static void WriteLe16(uint8_t *dst, uint16_t value) {
    dst[0] = (uint8_t)(value & 0xFF);
    dst[1] = (uint8_t)(value >> 8);
}

static void WriteLe32(uint8_t *dst, uint32_t value) {
    dst[0] = (uint8_t)(value & 0xFF);
    dst[1] = (uint8_t)((value >> 8) & 0xFF);
    dst[2] = (uint8_t)((value >> 16) & 0xFF);
    dst[3] = (uint8_t)((value >> 24) & 0xFF);
}

static void WriteTextFile(const char *dir, int index, const char *text) {
    char path[RAWTEXT_PATH_LENGTH];
    FILE *file;

    snprintf(path, sizeof(path), "%s/%04d.txt", dir, index);
    file = fopen(path, "wb");
    if (file == NULL) {
        perror(path);
        exit(EXIT_FAILURE);
    }

    fputs(text, file);
    fclose(file);
}

static void WriteMonMember(const char *dir, int index, const SpeciesDataEntry *entry) {
    char path[MON_MEMBER_PATH_LENGTH];
    uint8_t data[MON_MEMBER_SIZE] = {0};
    uint16_t evYieldBits;
    FILE *file;

    snprintf(path, sizeof(path), "%s/mondata_%04d", dir, index);
    file = fopen(path, "wb");
    if (file == NULL) {
        perror(path);
        exit(EXIT_FAILURE);
    }

    data[0x00] = entry->speciesData.baseStats.hp;
    data[0x01] = entry->speciesData.baseStats.attack;
    data[0x02] = entry->speciesData.baseStats.defense;
    data[0x03] = entry->speciesData.baseStats.speed;
    data[0x04] = entry->speciesData.baseStats.spAttack;
    data[0x05] = entry->speciesData.baseStats.spDefense;
    data[0x06] = entry->speciesData.types[0];
    data[0x07] = entry->speciesData.types[1];
    data[0x08] = entry->speciesData.catchRate;
    data[0x09] = entry->speciesData.baseExpRewardPadding;

    evYieldBits = (uint16_t)(
        (entry->speciesData.evYields.hp & 0x3) |
        ((entry->speciesData.evYields.attack & 0x3) << 2) |
        ((entry->speciesData.evYields.defense & 0x3) << 4) |
        ((entry->speciesData.evYields.speed & 0x3) << 6) |
        ((entry->speciesData.evYields.spAttack & 0x3) << 8) |
        ((entry->speciesData.evYields.spDefense & 0x3) << 10)
    );
    WriteLe16(&data[0x0A], evYieldBits);
    WriteLe16(&data[0x0C], entry->speciesData.wildHeldItems.common);
    WriteLe16(&data[0x0E], entry->speciesData.wildHeldItems.rare);
    data[0x10] = entry->speciesData.genderRatio;
    data[0x11] = entry->speciesData.hatchCycles;
    data[0x12] = entry->speciesData.baseFriendship;
    data[0x13] = entry->speciesData.expRate;
    data[0x14] = entry->speciesData.eggGroups[0];
    data[0x15] = entry->speciesData.eggGroups[1];
    WriteLe16(&data[0x16], entry->speciesData.abilities[0]);
    data[0x18] = entry->speciesData.safariFleeRate;
    data[0x19] = (uint8_t)((entry->speciesData.bodyColor & 0x7F) | ((entry->speciesData.flipSprite & 0x1) << 7));
    WriteLe16(&data[0x1A], entry->speciesData.abilities[1]);

    if (fwrite(data, sizeof(data), 1, file) != 1) {
        perror(path);
        fclose(file);
        exit(EXIT_FAILURE);
    }

    fclose(file);
}

static void WritePokedexMetricMember(const char *dir, int memberIndex) {
    char path[POKEDEX_MEMBER_PATH_LENGTH];
    FILE *file;
    uint8_t data[(MAX_SPECIES_INCLUDING_FORMS + 1) * 4] = {0};
    size_t size = 0;
    int i;

    snprintf(path, sizeof(path), "%s/%03d.bin", dir, memberIndex);
    file = fopen(path, "wb");
    if (file == NULL) {
        perror(path);
        exit(EXIT_FAILURE);
    }

    switch (memberIndex) {
    case 0:
        size = POKEDEX_HEIGHT_BODY_SPECIES_COUNT * sizeof(uint32_t);
        for (i = 0; i < POKEDEX_HEIGHT_BODY_SPECIES_COUNT; i++) {
            WriteLe32(&data[i * 4], sSpeciesData[i].metricsData.heightDecimetres);
        }
        break;
    case 1:
        size = (MAX_SPECIES_INCLUDING_FORMS + 1) * sizeof(uint32_t);
        for (i = 0; i <= MAX_SPECIES_INCLUDING_FORMS; i++) {
            WriteLe32(&data[i * 4], sSpeciesData[i].metricsData.weightHectograms);
        }
        break;
    case 2:
        size = POKEDEX_HEIGHT_BODY_SPECIES_COUNT;
        for (i = 0; i < POKEDEX_HEIGHT_BODY_SPECIES_COUNT; i++) {
            data[i] = sSpeciesData[i].metricsData.bodyType;
        }
        break;
    case 3:
        size = SPECIES_MEGA_START * sizeof(uint16_t);
        for (i = 0; i < SPECIES_MEGA_START; i++) {
            WriteLe16(&data[i * 2], sSpeciesData[i].metricsData.femaleTrainerScale);
        }
        break;
    case 4:
        size = SPECIES_MEGA_START * sizeof(uint16_t);
        for (i = 0; i < SPECIES_MEGA_START; i++) {
            WriteLe16(&data[i * 2], sSpeciesData[i].metricsData.femalePokemonScale);
        }
        break;
    case 5:
        size = SPECIES_MEGA_START * sizeof(uint16_t);
        for (i = 0; i < SPECIES_MEGA_START; i++) {
            WriteLe16(&data[i * 2], sSpeciesData[i].metricsData.maleTrainerScale);
        }
        break;
    case 6:
        size = SPECIES_MEGA_START * sizeof(uint16_t);
        for (i = 0; i < SPECIES_MEGA_START; i++) {
            WriteLe16(&data[i * 2], sSpeciesData[i].metricsData.malePokemonScale);
        }
        break;
    case 7:
        size = SPECIES_MEGA_START * sizeof(uint16_t);
        for (i = 0; i < SPECIES_MEGA_START; i++) {
            WriteLe16(&data[i * 2], (uint16_t)sSpeciesData[i].metricsData.femaleTrainerYOffset);
        }
        break;
    case 8:
        size = SPECIES_MEGA_START * sizeof(uint16_t);
        for (i = 0; i < SPECIES_MEGA_START; i++) {
            WriteLe16(&data[i * 2], (uint16_t)sSpeciesData[i].metricsData.femalePokemonYOffset);
        }
        break;
    case 9:
        size = SPECIES_MEGA_START * sizeof(uint16_t);
        for (i = 0; i < SPECIES_MEGA_START; i++) {
            WriteLe16(&data[i * 2], (uint16_t)sSpeciesData[i].metricsData.maleTrainerYOffset);
        }
        break;
    case 10:
        size = SPECIES_MEGA_START * sizeof(uint16_t);
        for (i = 0; i < SPECIES_MEGA_START; i++) {
            WriteLe16(&data[i * 2], (uint16_t)sSpeciesData[i].metricsData.malePokemonYOffset);
        }
        break;
    default:
        fclose(file);
        fprintf(stderr, "Unknown pokedex metric member: %d\n", memberIndex);
        exit(EXIT_FAILURE);
    }

    if (fwrite(data, size, 1, file) != 1) {
        perror(path);
        fclose(file);
        exit(EXIT_FAILURE);
    }

    fclose(file);
}

static void WritePokedexMetricMembers(const char *dir) {
    int i;

    for (i = 0; i < POKEDEX_SORT_METRIC_MEMBER_COUNT; i++) {
        WritePokedexMetricMember(dir, i);
    }
}

int main(int argc, char **argv) {
    const char *membersDir;
    const char *rawTextDir;
    const char *pokedexSortDir = NULL;
    char names237Dir[RAWTEXT_PATH_LENGTH];
    char names238Dir[RAWTEXT_PATH_LENGTH];
    char names817Dir[RAWTEXT_PATH_LENGTH];
    char descriptions803Dir[RAWTEXT_PATH_LENGTH];
    char classifications816Dir[RAWTEXT_PATH_LENGTH];
    char classifications823Dir[RAWTEXT_PATH_LENGTH];
    char heights814Dir[RAWTEXT_PATH_LENGTH];
    char heights815Dir[RAWTEXT_PATH_LENGTH];
    char weights812Dir[RAWTEXT_PATH_LENGTH];
    char weights813Dir[RAWTEXT_PATH_LENGTH];
    int i;

    if (argc == 3 && strcmp(argv[1], "--pokedex-sort") == 0) {
        WritePokedexMetricMembers(argv[2]);
        return EXIT_SUCCESS;
    }

    if (argc != 3 && argc != 4) {
        fprintf(stderr, "Usage: %s <members-dir> <rawtext-root> [pokedex-sort-dir]\n", argv[0]);
        fprintf(stderr, "   or: %s --pokedex-sort <outdir>\n", argv[0]);
        return EXIT_FAILURE;
    }

    membersDir = argv[1];
    rawTextDir = argv[2];
    if (argc == 4) {
        pokedexSortDir = argv[3];
    }

    snprintf(names237Dir, sizeof(names237Dir), "%s/237", rawTextDir);
    snprintf(names238Dir, sizeof(names238Dir), "%s/238", rawTextDir);
    snprintf(names817Dir, sizeof(names817Dir), "%s/817", rawTextDir);
    snprintf(descriptions803Dir, sizeof(descriptions803Dir), "%s/803", rawTextDir);
    snprintf(classifications816Dir, sizeof(classifications816Dir), "%s/816", rawTextDir);
    snprintf(classifications823Dir, sizeof(classifications823Dir), "%s/823", rawTextDir);
    snprintf(heights814Dir, sizeof(heights814Dir), "%s/814", rawTextDir);
    snprintf(heights815Dir, sizeof(heights815Dir), "%s/815", rawTextDir);
    snprintf(weights812Dir, sizeof(weights812Dir), "%s/812", rawTextDir);
    snprintf(weights813Dir, sizeof(weights813Dir), "%s/813", rawTextDir);

    for (i = 0; i <= MAX_SPECIES_INCLUDING_FORMS; i++) {
        WriteMonMember(membersDir, i, &sSpeciesData[i]);
        WriteTextFile(names237Dir, i, sSpeciesData[i].textData.name);
        WriteTextFile(names238Dir, i, sSpeciesData[i].textData.name);
        WriteTextFile(names817Dir, i, sSpeciesData[i].textData.name);
        WriteTextFile(descriptions803Dir, i, sSpeciesData[i].textData.pokedexEntry);
        WriteTextFile(classifications816Dir, i, sSpeciesData[i].textData.classification);
        WriteTextFile(classifications823Dir, i, sSpeciesData[i].textData.classification);
        WriteTextFile(heights814Dir, i, sSpeciesData[i].textData.height);
        WriteTextFile(heights815Dir, i, sSpeciesData[i].textData.height);
        WriteTextFile(weights812Dir, i, sSpeciesData[i].textData.weight);
        WriteTextFile(weights813Dir, i, sSpeciesData[i].textData.weight);
    }

    if (pokedexSortDir != NULL) {
        WritePokedexMetricMembers(pokedexSortDir);
    }

    return EXIT_SUCCESS;
}
