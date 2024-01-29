#ifndef TYPES_H
#define TYPES_H

#include <stdint.h>
#include "io_reg.h"

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
#define THUMB_FUNC __attribute__((target("thumb")))
#define LONG_CALL __attribute__((long_call))
#define UNUSED __attribute__((unused))
#define FALLTHROUGH __attribute__ ((fallthrough))
#define PACKED __attribute__((packed))

// Extracts the upper 16 bits of a 32-bit number
#define HIHALF(n) (((n) & 0xFFFF0000) >> 16)

// Extracts the lower 16 bits of a 32-bit number
#define LOHALF(n) ((n) & 0xFFFF)

#define No2Bit(n) ((1) << (n))

// validates a pointer's value
#define IS_NOT_VALID_EWRAM_POINTER(n) ((u32)(n) >= 0x03000000 || (u32)(n) < 0x02000000)

#define GF_ASSERT(cond) if (!(cond)) { }
//#define GF_ASSERT(cond) (cond) ? 0 : GF_ASSERT_INTERNAL()

void LONG_CALL GF_ASSERT_INTERNAL();
u16 LONG_CALL gf_rand(void);

void LONG_CALL sys_FreeMemoryEz(void*);
void* LONG_CALL sys_AllocMemory(u32,u32);

u32 LONG_CALL GF_ExpHeap_FndGetTotalFreeSize(u32 heapId);

void LONG_CALL ArcUtil_PalSet(u32 fileIdx, u32 dataIdx, u8 palType, u32 offs, u32 transSize, u32 heapID);
void *LONG_CALL ArchiveDataLoadMalloc(int arcID, int datID, int heapID);
void LONG_CALL ArchiveDataLoad(void *data, int arcID, int datID);
void *LONG_CALL ArchiveDataLoadMallocOfs(int arcID, int datID, int heapID, int ofs, int size);
void LONG_CALL ArchiveDataLoadOfs(void *data, int arcID, int datID, int ofs, int size);
void *LONG_CALL sys_AllocMemoryLo(u32 heap_id, u32 size);
void *LONG_CALL NARC_ctor(u32 narc_id, u32 heap_id);

void LONG_CALL MIi_CpuClearFast(u32 value, void *dest, u32 size);
u16 LONG_CALL GF_CalcCRC16(const void *data, u32 size);


void *memcpy(void *dest, void *src, u32 size);
void *memset(void *dest, u8 fill, u32 size);
void sprintf(u8 *buf, char *str, ...);
void debugsyscall(u8 *buf);


static inline void MI_CpuFillFast(void *dst, int data, u32 size) {
    MIi_CpuClearFast(data, dst, size);
}

static inline void MI_CpuClearFast(void *dest, u32 size) {
    MIi_CpuClearFast(0, dest, size);
}


#endif
