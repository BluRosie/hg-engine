#ifndef TYPES_H
#define TYPES_H

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
#define offsetof(st, m) \
    ((u32)&(((st *)0)->m))

typedef u8  bool8;
typedef int  BOOL;
typedef u16 bool16;
typedef u32 bool32;


typedef s32 fx32;
#define FX32_SHIFT          12
#define FX32_INT_SIZE       19
#define FX32_DEC_SIZE       12

#define FX32_INT_MASK       0x7ffff000
#define FX32_DEC_MASK       0x00000fff
#define FX32_SIGN_MASK      0x80000000


typedef struct
{
    fx32 x;
    fx32 y;
    fx32 z;
}
VecFx32;



#define GX_RGB_R_SHIFT            (0)
#define GX_RGB_R_MASK             (0x001f)
#define GX_RGB_G_SHIFT            (5)
#define GX_RGB_G_MASK             (0x03e0)
#define GX_RGB_B_SHIFT            (10)
#define GX_RGB_B_MASK             (0x7c00)
#define GX_RGB(r, g, b)           ((u16)(((r) << GX_RGB_R_SHIFT) | \
                                         ((g) << GX_RGB_G_SHIFT) | \
                                         ((b) << GX_RGB_B_SHIFT)))



#define	ALIGN4 __attribute__((aligned(4)))
#define MOVE_TABLES_TERMIN 0xFEFE

// Extracts the upper 16 bits of a 32-bit number
#define HIHALF(n) (((n) & 0xFFFF0000) >> 16)

// Extracts the lower 16 bits of a 32-bit number
#define LOHALF(n) ((n) & 0xFFFF)

void __attribute__((long_call)) GF_ASSERT(u32 cond);
u16 __attribute__((long_call)) gf_rand(void);
u32 __attribute__((long_call)) sqrt(u32 arg0);

void __attribute__((long_call)) sys_FreeMemoryEz(void*);
void* __attribute__((long_call)) sys_AllocMemory(u32,u32);

void __attribute__((long_call)) ArcUtil_PalSet(u32 fileIdx, u32 dataIdx, u8 palType, u32 offs, u32 transSize, u32 heapID);
void *__attribute__((long_call)) ArchiveDataLoadMalloc(int arcID, int datID, int heapID);
void __attribute__((long_call)) ArchiveDataLoad(void *data, int arcID, int datID);
void *__attribute__((long_call)) ArchiveDataLoadMallocOfs(int arcID, int datID, int heapID, int ofs, int size);
void __attribute__((long_call)) ArchiveDataLoadOfs(void *data, int arcID, int datID, int ofs, int size);
void *__attribute__((long_call)) sys_AllocMemoryLo(u32 heap_id, u32 size);
void *__attribute__((long_call)) NARC_ctor(u32 narc_id, u32 heap_id);

#endif
