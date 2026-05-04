#ifndef POKEDEX_ARCHIVE_DATA_H
#define POKEDEX_ARCHIVE_DATA_H

#include "constants/species.h"

#ifdef POKEDEX_DATAGEN
#include <stdint.h>
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef int16_t s16;
#else
#include "types.h"
#endif

#define POKEDEX_CANONICAL_SPECIES_COUNT (MAX_CANONICAL_MON_NUM + 1)

#define POKEDEX_SORT_FIXED_MEMBER_COUNT 11
#define POKEDEX_SORT_MEMBER_COUNT       102
#define POKEDEX_SORT_LIST_MEMBER_COUNT  (POKEDEX_SORT_MEMBER_COUNT - POKEDEX_SORT_FIXED_MEMBER_COUNT)

#define POKEDEX_AREA_BASE_MEMBER_COUNT              2
#define POKEDEX_AREA_OVERWORLD_MAP_INFO_COUNT       69
#define POKEDEX_AREA_OVERWORLD_MAP_INFO_UNUSED_SIZE 36

typedef struct PokedexArchiveMember {
    const u8 *data;
    u32 size;
} PokedexArchiveMember;

typedef struct PokedexU16List {
    const u16 *data;
    u16 count;
} PokedexU16List;

typedef struct PokedexU32List {
    const u32 *data;
    u16 count;
} PokedexU32List;

typedef struct PokedexAppData_UnkSub1908 {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} PokedexAppData_UnkSub1908;

typedef struct PokedexAppData_UnkSub190C {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04[32];
} PokedexAppData_UnkSub190C;

typedef struct PokedexAppData_UnkSub190CArchive {
    PokedexAppData_UnkSub190C entries[POKEDEX_AREA_OVERWORLD_MAP_INFO_COUNT];
    u8 unused[POKEDEX_AREA_OVERWORLD_MAP_INFO_UNUSED_SIZE];
} PokedexAppData_UnkSub190CArchive;

extern const PokedexU16List sPokedexSortLists[];
extern const u32 sPokedexSortListCount;

extern const PokedexArchiveMember sPokedexAreaBaseMembers[];
extern const u32 sPokedexAreaBaseMemberCount;
extern const PokedexU32List sPokedexAreaLists[];
extern const u32 sPokedexAreaListCount;

#endif
