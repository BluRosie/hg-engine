#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../../../include/trainer_data.h"

enum {
    RAWTEXT_PATH_LENGTH = 128,
    TRAINER_DATA_MEMBER_PATH_LENGTH = 32,
    TRAINER_TEXT_OFFSET_MEMBER_PATH_LENGTH = 48,
    TRAINER_TEXT_ENTRY_SIZE = 4,
};

static void BuildRawTextPath(char *path, size_t pathSize, const char *dir, int index) {
    size_t dirLen;

    if (index < 0 || index > 9999) {
        fprintf(stderr, "Rawtext file index out of range: %d\n", index);
        exit(EXIT_FAILURE);
    }

    dirLen = strlen(dir);
    if (dirLen + sizeof("/0000.txt") > pathSize) {
        fprintf(stderr, "Rawtext output path too long: %s\n", dir);
        exit(EXIT_FAILURE);
    }

    memcpy(path, dir, dirLen);
    path[dirLen] = '/';
    path[dirLen + 1] = (char)('0' + ((index / 1000) % 10));
    path[dirLen + 2] = (char)('0' + ((index / 100) % 10));
    path[dirLen + 3] = (char)('0' + ((index / 10) % 10));
    path[dirLen + 4] = (char)('0' + (index % 10));
    memcpy(path + dirLen + 5, ".txt", sizeof(".txt"));
}

static int IsPartyMonDefined(const TrainerPokemonData *mon) {
    return mon->species != SPECIES_NONE;
}

static int GetTrainerPartyMonCount(const TrainerData *entry) {
    int count = 0;
    int i;
    int sawGap = 0;

    for (i = 0; i < TRAINER_SOURCE_MAX_PARTY_SIZE; i++) {
        if (IsPartyMonDefined(&entry->party[i])) {
            if (sawGap) {
                fprintf(stderr, "Trainer \"%s\" has a gap in its party definition\n", entry->name);
                exit(EXIT_FAILURE);
            }
            count++;
        } else if (count > 0) {
            sawGap = 1;
        }
    }

    return count;
}

static int IsTextEntryDefined(const TrainerMessageEntry *entry) {
    return entry->text != NULL;
}

static int GetTrainerTextEntryCount(const TrainerData *entry) {
    int count = 0;
    int i;
    int sawGap = 0;

    for (i = 0; i < TRAINER_SOURCE_MAX_TEXT_ENTRY_COUNT; i++) {
        if (IsTextEntryDefined(&entry->text[i])) {
            if (sawGap) {
                fprintf(stderr, "Trainer \"%s\" has a gap in its text definition\n", entry->name);
                exit(EXIT_FAILURE);
            }
            count++;
        } else if (count > 0) {
            sawGap = 1;
        }
    }

    return count;
}

static int GetTrainerTextOffsetCount(void) {
    int i;

    for (i = (int)sTrainerDataCount - 1; i >= 0; i--) {
        if (GetTrainerTextEntryCount(&sTrainerData[i]) > 0) {
            return i + 1;
        }
    }

    return 0;
}

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

static FILE *OpenBinaryForWrite(const char *path) {
    FILE *file = fopen(path, "wb");
    if (file == NULL) {
        perror(path);
        exit(EXIT_FAILURE);
    }
    return file;
}

static FILE *OpenTextForWrite(const char *path) {
    FILE *file = fopen(path, "w");
    if (file == NULL) {
        perror(path);
        exit(EXIT_FAILURE);
    }
    return file;
}

static void WriteTrainerNameTextFile(const char *dir, int index, const char *name) {
    char path[RAWTEXT_PATH_LENGTH];
    FILE *file;

    BuildRawTextPath(path, sizeof(path), dir, index);
    file = OpenTextForWrite(path);
    fputs("{TRNAME}", file);
    fputs(name, file);
    fclose(file);
}

static void WriteTextFile(const char *dir, int index, const char *text) {
    char path[RAWTEXT_PATH_LENGTH];
    FILE *file;

    BuildRawTextPath(path, sizeof(path), dir, index);
    file = OpenTextForWrite(path);
    fputs(text, file);
    fclose(file);
}

static void WriteTrainerHeaderMember(const char *dir, int index, const TrainerData *entry) {
    char path[TRAINER_DATA_MEMBER_PATH_LENGTH];
    uint8_t data[20] = {0};
    FILE *file;
    int partyCount;
    int i;

    snprintf(path, sizeof(path), "%s/5_%03d", dir, index);
    file = OpenBinaryForWrite(path);
    partyCount = GetTrainerPartyMonCount(entry);

    data[0x00] = entry->data.trainerType;
    WriteLe16(&data[0x01], entry->data.trainerClass);
    data[0x03] = (uint8_t)((entry->data.partySize & TRAINER_DATA_RANDOM_PARTY_ORDER) | partyCount);
    for (i = 0; i < 4; i++) {
        WriteLe16(&data[0x04 + (i * 2)], entry->data.items[i]);
    }
    WriteLe32(&data[0x0C], entry->data.aiFlags);
    WriteLe32(&data[0x10], entry->data.battleType);

    if (fwrite(data, sizeof(data), 1, file) != 1) {
        perror(path);
        fclose(file);
        exit(EXIT_FAILURE);
    }

    fclose(file);
}

static void WriteTrainerPartyMember(const char *dir, int index, const TrainerData *entry) {
    char path[TRAINER_DATA_MEMBER_PATH_LENGTH];
    FILE *file;
    uint8_t data[512] = {0};
    size_t size = 0;
    int partyCount;
    int i;
    int j;

    snprintf(path, sizeof(path), "%s/6_%03d", dir, index);
    file = OpenBinaryForWrite(path);
    partyCount = GetTrainerPartyMonCount(entry);

    if (partyCount == 0) {
        uint8_t placeholder[8] = {0};

        if (fwrite(placeholder, sizeof(placeholder), 1, file) != 1) {
            perror(path);
            fclose(file);
            exit(EXIT_FAILURE);
        }

        fclose(file);
        return;
    }

    for (i = 0; i < partyCount; i++) {
        const TrainerPokemonData *mon = &entry->party[i];

        data[size++] = mon->ivs;
        data[size++] = mon->abilitySlot;
        WriteLe16(&data[size], mon->level);
        size += 2;

        WriteLe16(&data[size], mon->species);
        size += 2;

        if (entry->data.trainerType & TRAINER_DATA_TYPE_ITEMS) {
            WriteLe16(&data[size], mon->item);
            size += 2;
        }

        if (entry->data.trainerType & TRAINER_DATA_TYPE_MOVES) {
            for (j = 0; j < 4; j++) {
                WriteLe16(&data[size], mon->moves[j]);
                size += 2;
            }
        }

        if (entry->data.trainerType & TRAINER_DATA_TYPE_ABILITY) {
            WriteLe16(&data[size], mon->ability);
            size += 2;
        }

        if (entry->data.trainerType & TRAINER_DATA_TYPE_BALL) {
            WriteLe16(&data[size], mon->ball);
            size += 2;
        }

        if (entry->data.trainerType & TRAINER_DATA_TYPE_IV_EV_SET) {
            data[size++] = mon->setIvs.hp;
            data[size++] = mon->setIvs.attack;
            data[size++] = mon->setIvs.defense;
            data[size++] = mon->setIvs.speed;
            data[size++] = mon->setIvs.spAttack;
            data[size++] = mon->setIvs.spDefense;
            data[size++] = mon->setEvs.hp;
            data[size++] = mon->setEvs.attack;
            data[size++] = mon->setEvs.defense;
            data[size++] = mon->setEvs.speed;
            data[size++] = mon->setEvs.spAttack;
            data[size++] = mon->setEvs.spDefense;
        }

        if (entry->data.trainerType & TRAINER_DATA_TYPE_NATURE_SET) {
            data[size++] = mon->nature;
        }

        if (entry->data.trainerType & TRAINER_DATA_TYPE_SHINY_LOCK) {
            data[size++] = mon->shinyLock;
        }

        if (entry->data.trainerType & TRAINER_DATA_TYPE_ADDITIONAL_FLAGS) {
            WriteLe32(&data[size], mon->additionalFlags);
            size += 4;

            if (mon->additionalFlags & TRAINER_DATA_EXTRA_TYPE_STATUS) {
                WriteLe32(&data[size], mon->status);
                size += 4;
            }
            if (mon->additionalFlags & TRAINER_DATA_EXTRA_TYPE_HP) {
                WriteLe16(&data[size], mon->hp);
                size += 2;
            }
            if (mon->additionalFlags & TRAINER_DATA_EXTRA_TYPE_ATK) {
                WriteLe16(&data[size], mon->attack);
                size += 2;
            }
            if (mon->additionalFlags & TRAINER_DATA_EXTRA_TYPE_DEF) {
                WriteLe16(&data[size], mon->defense);
                size += 2;
            }
            if (mon->additionalFlags & TRAINER_DATA_EXTRA_TYPE_SPEED) {
                WriteLe16(&data[size], mon->speed);
                size += 2;
            }
            if (mon->additionalFlags & TRAINER_DATA_EXTRA_TYPE_SP_ATK) {
                WriteLe16(&data[size], mon->spAttack);
                size += 2;
            }
            if (mon->additionalFlags & TRAINER_DATA_EXTRA_TYPE_SP_DEF) {
                WriteLe16(&data[size], mon->spDefense);
                size += 2;
            }
            if (mon->additionalFlags & TRAINER_DATA_EXTRA_TYPE_PP_COUNTS) {
                for (j = 0; j < 4; j++) {
                    data[size++] = mon->ppCounts[j];
                }
            }
            if (mon->additionalFlags & TRAINER_DATA_EXTRA_TYPE_NICKNAME) {
                for (j = 0; j < 11; j++) {
                    WriteLe16(&data[size], mon->nickname[j]);
                    size += 2;
                }
            }
        }

        WriteLe16(&data[size], mon->ballSeal);
        size += 2;
    }

    if (size > 0 && fwrite(data, size, 1, file) != 1) {
        perror(path);
        fclose(file);
        exit(EXIT_FAILURE);
    }

    fclose(file);
}

static void WriteTrainerTextData(const char *mapDir, const char *offsetDir, const char *rawTextDir) {
    char mapPath[TRAINER_TEXT_OFFSET_MEMBER_PATH_LENGTH];
    char offsetPath[TRAINER_TEXT_OFFSET_MEMBER_PATH_LENGTH];
    FILE *mapFile;
    FILE *offsetFile;
    uint16_t *offsets;
    uint16_t offset = 0;
    int textFileIndex = 0;
    int trainerTextOffsetCount;
    int i;
    int j;
    u32 orderIndex;

    offsets = calloc(sTrainerDataCount, sizeof(*offsets));
    if (offsets == NULL) {
        perror("calloc");
        exit(EXIT_FAILURE);
    }
    trainerTextOffsetCount = GetTrainerTextOffsetCount();

    snprintf(mapPath, sizeof(mapPath), "%s/7_0", mapDir);
    snprintf(offsetPath, sizeof(offsetPath), "%s/1_0", offsetDir);
    mapFile = OpenBinaryForWrite(mapPath);
    offsetFile = OpenBinaryForWrite(offsetPath);

    for (orderIndex = 0; orderIndex < sTrainerTextOrderCount; orderIndex++) {
        const TrainerData *entry;
        uint16_t trainerId = sTrainerTextOrder[orderIndex];
        int textCount;

        if (trainerId >= sTrainerDataCount) {
            fprintf(stderr, "Trainer text order contains out-of-range trainer id %u\n", trainerId);
            free(offsets);
            exit(EXIT_FAILURE);
        }

        entry = &sTrainerData[trainerId];
        textCount = GetTrainerTextEntryCount(entry);
        if (textCount == 0) {
            continue;
        }

        offsets[trainerId] = offset;
        for (j = 0; j < textCount; j++) {
            uint8_t data[TRAINER_TEXT_ENTRY_SIZE];

            WriteLe16(&data[0], trainerId);
            WriteLe16(&data[2], entry->text[j].type);
            if (fwrite(data, sizeof(data), 1, mapFile) != 1) {
                perror(mapPath);
                fclose(mapFile);
                fclose(offsetFile);
                free(offsets);
                exit(EXIT_FAILURE);
            }
            WriteTextFile(rawTextDir, textFileIndex++, entry->text[j].text);
            offset = (uint16_t)(offset + TRAINER_TEXT_ENTRY_SIZE);
        }
    }

    for (i = 0; i < trainerTextOffsetCount; i++) {
        uint8_t data[2];

        WriteLe16(data, offsets[i]);
        if (fwrite(data, sizeof(data), 1, offsetFile) != 1) {
            perror(offsetPath);
            fclose(mapFile);
            fclose(offsetFile);
            free(offsets);
            exit(EXIT_FAILURE);
        }
    }

    fclose(mapFile);
    fclose(offsetFile);
    free(offsets);
}

int main(int argc, char **argv) {
    const char *trainerDataDir;
    const char *trainerPartyDir;
    const char *trainerTextMapDir;
    const char *trainerTextOffsetDir;
    const char *rawTextRoot;
    char trainerNamesDir[RAWTEXT_PATH_LENGTH];
    char trainerTextDir[RAWTEXT_PATH_LENGTH];
    int i;

    if (argc != 6) {
        fprintf(stderr, "Usage: %s <a055-dir> <a056-dir> <a057-dir> <a131-dir> <rawtext-root>\n", argv[0]);
        return EXIT_FAILURE;
    }

    trainerDataDir = argv[1];
    trainerPartyDir = argv[2];
    trainerTextMapDir = argv[3];
    trainerTextOffsetDir = argv[4];
    rawTextRoot = argv[5];

    snprintf(trainerNamesDir, sizeof(trainerNamesDir), "%s/729", rawTextRoot);
    snprintf(trainerTextDir, sizeof(trainerTextDir), "%s/728", rawTextRoot);

    for (i = 0; i < (int)sTrainerDataCount; i++) {
        WriteTrainerHeaderMember(trainerDataDir, i, &sTrainerData[i]);
        WriteTrainerPartyMember(trainerPartyDir, i, &sTrainerData[i]);
        WriteTrainerNameTextFile(trainerNamesDir, i, sTrainerData[i].name);
    }

    WriteTrainerTextData(trainerTextMapDir, trainerTextOffsetDir, trainerTextDir);
    return EXIT_SUCCESS;
}
