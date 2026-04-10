#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <fstream>
#include <string>

#include "../../../include/move_data.h"

namespace {

constexpr size_t kMoveMemberPathLength = 32;
constexpr size_t kRawTextPathLength = 128;

void WriteLe16(uint8_t *dst, uint16_t value) {
    dst[0] = static_cast<uint8_t>(value & 0xFF);
    dst[1] = static_cast<uint8_t>(value >> 8);
}

void WriteNormalizedText(std::ofstream &file, const char *text) {
    for (const unsigned char *cursor = reinterpret_cast<const unsigned char *>(text); *cursor != '\0'; cursor++) {
        if (*cursor == '"') {
            file << "\xE2\x80\x9D";
        } else if (*cursor == '\'' || *cursor == '`') {
            file << "\xE2\x80\x99";
        } else {
            file.put(static_cast<char>(*cursor));
        }
    }
}

void WriteTextFile(const char *dir, int index, const char *text) {
    char path[kRawTextPathLength];
    std::snprintf(path, sizeof(path), "%s/%04d.txt", dir, index);

    std::ofstream file(path, std::ios::binary);
    if (!file.is_open()) {
        std::perror(path);
        std::exit(EXIT_FAILURE);
    }

    WriteNormalizedText(file, text);
}

void WriteUsedMoveText(const char *dir, int index, const char *prefix, const char *fullName) {
    char path[kRawTextPathLength];
    std::snprintf(path, sizeof(path), "%s/%04d.txt", dir, index);

    std::ofstream file(path, std::ios::binary);
    if (!file.is_open()) {
        std::perror(path);
        std::exit(EXIT_FAILURE);
    }

    file << prefix;
    WriteNormalizedText(file, fullName);
    file.put('!');
}

void WriteMoveMember(const char *dir, int index, const MoveSourceEntry &entry) {
    char path[kMoveMemberPathLength];
    uint8_t data[16] = {0};

    std::snprintf(path, sizeof(path), "%s/1_%03d", dir, index);
    std::ofstream file(path, std::ios::binary);
    if (!file.is_open()) {
        std::perror(path);
        std::exit(EXIT_FAILURE);
    }

    WriteLe16(&data[0], entry.data.effect);
    data[2] = entry.data.split;
    data[3] = entry.data.power;
    data[4] = entry.data.type;
    data[5] = entry.data.accuracy;
    data[6] = entry.data.pp;
    data[7] = entry.data.effectChance;
    WriteLe16(&data[8], entry.battle.target);
    data[10] = static_cast<uint8_t>(entry.battle.priority);
    data[11] = entry.battle.flags;
    data[12] = entry.contest.appeal;
    data[13] = entry.contest.contestType;
    WriteLe16(&data[14], 0);

    file.write(reinterpret_cast<const char *>(data), sizeof(data));
    if (!file.good()) {
        std::perror(path);
        std::exit(EXIT_FAILURE);
    }
}

}  // namespace

int main(int argc, char **argv) {
    const char *membersDir;
    const char *rawTextDir;
    char namesDir[kRawTextPathLength];
    char capsNamesDir[kRawTextPathLength];
    char usedNamesDir[kRawTextPathLength];
    char descriptionsDir[kRawTextPathLength];

    if (argc != 3) {
        std::fprintf(stderr, "Usage: %s <members-dir> <rawtext-root>\n", argv[0]);
        return EXIT_FAILURE;
    }

    membersDir = argv[1];
    rawTextDir = argv[2];

    std::snprintf(namesDir, sizeof(namesDir), "%s/750", rawTextDir);
    std::snprintf(capsNamesDir, sizeof(capsNamesDir), "%s/751", rawTextDir);
    std::snprintf(usedNamesDir, sizeof(usedNamesDir), "%s/003", rawTextDir);
    std::snprintf(descriptionsDir, sizeof(descriptionsDir), "%s/749", rawTextDir);

    for (int i = 0; i <= NUM_OF_MOVES; i++) {
        WriteMoveMember(membersDir, i, sMoveSource[i]);
    }

    for (int i = 0; i < NUM_OF_MOVES; i++) {
        WriteTextFile(namesDir, i, sMoveSource[i].names.name);
        WriteTextFile(capsNamesDir, i, sMoveSource[i].names.capsName);
        WriteUsedMoveText(usedNamesDir, 3 * i, "{STRVAR_1 1, 0, 0} used\\n", sMoveSource[i].names.fullName);
        WriteUsedMoveText(usedNamesDir, 3 * i + 1, "The wild {STRVAR_1 1, 0, 0} used\\n", sMoveSource[i].names.fullName);
        WriteUsedMoveText(usedNamesDir, 3 * i + 2, "The opposing {STRVAR_1 1, 0, 0} used\\n", sMoveSource[i].names.fullName);
        WriteTextFile(descriptionsDir, i, sMoveSource[i].description);
    }

    return EXIT_SUCCESS;
}
