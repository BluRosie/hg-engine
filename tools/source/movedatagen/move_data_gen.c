#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "../../../include/move_data.h"

enum {
    MOVE_MEMBER_PATH_LENGTH = 32,
    RAWTEXT_PATH_LENGTH = 128,
};

static void WriteLe16(uint8_t *dst, uint16_t value) {
    dst[0] = (uint8_t)(value & 0xFF);
    dst[1] = (uint8_t)(value >> 8);
}

static void WriteNormalizedText(FILE *file, const char *text) {
    const unsigned char *cursor = (const unsigned char *)text;

    while (*cursor != '\0') {
        if (*cursor == '"') {
            fputs("\xE2\x80\x9D", file);
        } else if (*cursor == '\'' || *cursor == '`') {
            fputs("\xE2\x80\x99", file);
        } else {
            fputc((char)*cursor, file);
        }
        cursor++;
    }
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

    WriteNormalizedText(file, text);
    fclose(file);
}

static void WriteUsedMoveText(const char *dir, int index, const char *prefix, const char *fullName) {
    char path[RAWTEXT_PATH_LENGTH];
    FILE *file;

    snprintf(path, sizeof(path), "%s/%04d.txt", dir, index);
    file = fopen(path, "wb");
    if (file == NULL) {
        perror(path);
        exit(EXIT_FAILURE);
    }

    fputs(prefix, file);
    WriteNormalizedText(file, fullName);
    fputc('!', file);
    fclose(file);
}

static void WriteMoveMember(const char *dir, int index, const MoveSourceEntry *entry) {
    char path[MOVE_MEMBER_PATH_LENGTH];
    uint8_t data[16] = {0};
    FILE *file;

    snprintf(path, sizeof(path), "%s/1_%03d", dir, index);
    file = fopen(path, "wb");
    if (file == NULL) {
        perror(path);
        exit(EXIT_FAILURE);
    }

    WriteLe16(&data[0], entry->data.effect);
    data[2] = entry->data.split;
    data[3] = entry->data.power;
    data[4] = entry->data.type;
    data[5] = entry->data.accuracy;
    data[6] = entry->data.pp;
    data[7] = entry->data.effectChance;
    WriteLe16(&data[8], entry->battle.target);
    data[10] = (uint8_t)entry->battle.priority;
    data[11] = entry->battle.flags;
    data[12] = entry->contest.appeal;
    data[13] = entry->contest.contestType;
    data[14] = entry->contest.padding02[0];
    data[15] = entry->contest.padding02[1];

    if (fwrite(data, sizeof(data), 1, file) != 1) {
        perror(path);
        fclose(file);
        exit(EXIT_FAILURE);
    }

    fclose(file);
}

int main(int argc, char **argv) {
    const char *membersDir;
    const char *rawTextDir;
    char namesDir[RAWTEXT_PATH_LENGTH];
    char capsNamesDir[RAWTEXT_PATH_LENGTH];
    char usedNamesDir[RAWTEXT_PATH_LENGTH];
    char descriptionsDir[RAWTEXT_PATH_LENGTH];
    int i;

    if (argc != 3) {
        fprintf(stderr, "Usage: %s <members-dir> <rawtext-root>\n", argv[0]);
        return EXIT_FAILURE;
    }

    membersDir = argv[1];
    rawTextDir = argv[2];

    snprintf(namesDir, sizeof(namesDir), "%s/750", rawTextDir);
    snprintf(capsNamesDir, sizeof(capsNamesDir), "%s/751", rawTextDir);
    snprintf(usedNamesDir, sizeof(usedNamesDir), "%s/003", rawTextDir);
    snprintf(descriptionsDir, sizeof(descriptionsDir), "%s/749", rawTextDir);

    for (i = 0; i <= NUM_OF_MOVES; i++) {
        WriteMoveMember(membersDir, i, &sMoveSource[i]);
    }

    for (i = 0; i < NUM_OF_MOVES; i++) {
        WriteTextFile(namesDir, i, sMoveSource[i].names.name);
        WriteTextFile(capsNamesDir, i, sMoveSource[i].names.capsName);
        WriteUsedMoveText(usedNamesDir, 3 * i, "{STRVAR_1 1, 0, 0} used\\n", sMoveSource[i].names.fullName);
        WriteUsedMoveText(usedNamesDir, 3 * i + 1, "The wild {STRVAR_1 1, 0, 0} used\\n", sMoveSource[i].names.fullName);
        WriteUsedMoveText(usedNamesDir, 3 * i + 2, "The opposing {STRVAR_1 1, 0, 0} used\\n", sMoveSource[i].names.fullName);
        WriteTextFile(descriptionsDir, i, sMoveSource[i].description);
    }

    return EXIT_SUCCESS;
}
