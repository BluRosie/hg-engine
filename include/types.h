#pragma once

#include <stdint.h>

typedef uint8_t   u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t    s8;
typedef int16_t  s16;
typedef int32_t  s32;
typedef int64_t  s64;

#define NULL                ((void *)0)
#define TRUE 1
#define FALSE 0

#define NELEMS(array) (sizeof(array) / sizeof(array[0]))

typedef u8  bool8;
typedef int  BOOL;
typedef u16 bool16;
typedef u32 bool32;

#define	ALIGN4 __attribute__((aligned(4)))
#define MOVE_TABLES_TERMIN 0xFEFE

// Extracts the upper 16 bits of a 32-bit number
#define HIHALF(n) (((n) & 0xFFFF0000) >> 16)

// Extracts the lower 16 bits of a 32-bit number
#define LOHALF(n) ((n) & 0xFFFF)

void __attribute__((long_call)) GF_ASSERT(void);
u16 __attribute__((long_call)) gf_rand(void);

void __attribute__((long_call)) sys_FreeMemoryEz(void*);
void* __attribute__((long_call)) sys_AllocMemory(u32,u32);

void __attribute__((long_call)) ArcUtil_PalSet(u32 fileIdx, u32 dataIdx, u8 palType, u32 offs, u32 transSize, u32 heapID);
void *__attribute__((long_call)) ArchiveDataLoadMalloc(int arcID, int datID, int heapID);
void __attribute__((long_call))ArchiveDataLoad(void *data, int arcID, int datID);
void *__attribute__((long_call))ArchiveDataLoadMallocOfs(int arcID, int datID, int heapID, int ofs, int size);