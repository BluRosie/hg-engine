#include <stdio.h>
#include <stdlib.h>

#include "../../../include/pokedex_archive_data.h"
#include "../../../data/RegionalDex.c"

static int Streq(const char *lhs, const char *rhs) {
    while (*lhs != '\0' && *lhs == *rhs) {
        lhs++;
        rhs++;
    }

    return *lhs == *rhs;
}

static int WriteFile(const char *path, const void *data, size_t size) {
    FILE *fp = fopen(path, "wb");

    if (fp == NULL) {
        perror(path);
        return 1;
    }

    if (size != 0 && fwrite(data, 1, size, fp) != size) {
        perror(path);
        fclose(fp);
        return 1;
    }

    if (fclose(fp) != 0) {
        perror(path);
        return 1;
    }

    return 0;
}

static int WritePokedexSortArchive(const char *outDir) {
    char path[512];
    u32 member, count = sPokedexSortListCount;

    // The regional species order and number lookup must share the same source.
    u16 regionalOrder[sizeof(RegionalDex) / sizeof(*RegionalDex)];
    u32 regionalCount = 0;
    for (u32 species = 1; species < sizeof(RegionalDex) / sizeof(*RegionalDex); species++) {
        if (RegionalDex[species] != 0) {
            u32 position = regionalCount;
            while (position > 0 && RegionalDex[regionalOrder[position - 1]] > RegionalDex[species]) {
                regionalOrder[position] = regionalOrder[position - 1];
                position--;
            }
            regionalOrder[position] = species;
            regionalCount++;
        }
    }

    for (member = 0; member < count; member++) {
        const PokedexU16List *list = &sPokedexSortLists[member];

        snprintf(path, sizeof(path), "%s/%03u.bin", outDir, member + POKEDEX_SORT_FIXED_MEMBER_COUNT);
        if (member == 1) {
            if (WriteFile(path, regionalOrder, regionalCount * sizeof(*regionalOrder)) != 0) {
                return 1;
            }
            continue;
        }
        if (WriteFile(path, list->data, list->count * sizeof(*list->data)) != 0) {
            return 1;
        }
    }

    return 0;
}

static int WritePokedexAreaArchive(const char *outDir) {
    char path[512];
    u32 member = 0;
    u32 baseCount = sPokedexAreaBaseMemberCount;
    u32 listCount = sPokedexAreaListCount;

    for (; member < baseCount; member++) {
        const PokedexArchiveMember *baseMember = &sPokedexAreaBaseMembers[member];
        snprintf(path, sizeof(path), "%s/0_a133_%04u", outDir, member);
        if (WriteFile(path, baseMember->data, baseMember->size) != 0) {
            return 1;
        }
    }

    for (; member < baseCount + listCount; member++) {
        const PokedexU32List *list = &sPokedexAreaLists[member - baseCount];

        snprintf(path, sizeof(path), "%s/3_%04u", outDir, member);
        if (WriteFile(path, list->data, list->count * sizeof(*list->data)) != 0) {
            return 1;
        }
    }

    return 0;
}

int main(int argc, char **argv) {
    if (argc != 3) {
        fprintf(stderr, "usage: %s <a214|a133> <outdir>\n", argv[0]);
        return 1;
    }

    if (Streq(argv[1], "a214")) {
        return WritePokedexSortArchive(argv[2]);
    }

    if (Streq(argv[1], "a133")) {
        return WritePokedexAreaArchive(argv[2]);
    }

    fprintf(stderr, "unknown archive kind: %s\n", argv[1]);
    return 1;
}
