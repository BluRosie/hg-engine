#ifndef SOUND_H
#define SOUND_H

#include "config.h"


#define SND_HEAP_SIZE 0xBEAE0
#define SND_HANDLE_MAX 9


#define SoundHeapFreeSize (*(u32 *)0x02111954)


// we got the sdk involved

#define NNS_SND_ARC_LOAD_SEQ    ( 1 << 0 )
#define NNS_SND_ARC_LOAD_BANK   ( 1 << 1 )
#define NNS_SND_ARC_LOAD_WAVE   ( 1 << 2 )
#define NNS_SND_ARC_LOAD_SEQARC ( 1 << 3 )
#define NNS_SND_ARC_LOAD_ALL   0xff


#define SND_BANK_TO_WAVEARC_MAX 4
#define NNS_SND_ARC_BANK_TO_WAVEARC_NUM 4

#define NNS_SND_ARC_INVALID_WAVEARC_NO 0xffff

#define NNS_SND_ARC_WAVEARC_SINGLE_LOAD ( 1 << 0 )


enum
{
    NNS_SND_ARC_LOAD_SUCCESS = 0,
    NNS_SND_ARC_LOAD_ERROR_INVALID_GROUP_NO,
    NNS_SND_ARC_LOAD_ERROR_INVALID_SEQ_NO,
    NNS_SND_ARC_LOAD_ERROR_INVALID_SEQARC_NO,
    NNS_SND_ARC_LOAD_ERROR_INVALID_BANK_NO,
    NNS_SND_ARC_LOAD_ERROR_INVALID_WAVEARC_NO,
    NNS_SND_ARC_LOAD_ERROR_FAILED_LOAD_SEQ,
    NNS_SND_ARC_LOAD_ERROR_FAILED_LOAD_SEQARC,
    NNS_SND_ARC_LOAD_ERROR_FAILED_LOAD_BANK,
    NNS_SND_ARC_LOAD_ERROR_FAILED_LOAD_WAVE
};


struct SND_WORK {
    /* 0x00000 */ u8 arc[0x94];
    /* 0x00094 */ void *heap;
    /* 0x00098 */ u8 heap_buf[SND_HEAP_SIZE];
    /* 0xBEB78 */ void *unk_BEB78[SND_HANDLE_MAX];
    /* 0xBEB9C */ u32 unk_BEB9C;
    /* 0xBEBA0 */ u32 unk_BEBA0;
    /* 0xBEBA4 */ u32 unk_BEBA4;
    /* 0xBEBA8 */ u8 unk_BEBA8[0x18];
    /* 0xBEBC0 */ u8 unk_BEBC0[16];
    /* 0xBEBD0 */ u8 unk_BEBD0[28];
    /* 0xBEBEC */ u16 unk_BEBEC;
    /* 0xBEBEE */ u8 unk_BEBEE;
    /* 0xBEBEF */ u8 unk_BEBEF;
    /* 0xBEBF0 */ int fadeTimer;
    /* 0xBEBF4 */ int unk_BEBF4;
    /* 0xBEBF8 */ int queuedSeqFadeInDuration;
    /* 0xBEBFC */ u16 currentSeqNo;
    /* 0xBEBFE */ u16 queuedSeqNo;
    /* 0xBEC00 */ u8 unk_BEC00;
    /* 0xBEBC1 */ u8 unk_BEC01;
    /* 0xBEC02 */ u16 afterFanfareWaitTimer;
    /* 0xBEC04 */ u8 unk_BEC04;
    /* 0xBEC05 */ u8 unk_BEC05;
    /* 0xBEC06 */ u8 unk_BEC06;
    /* 0xBEC07 */ u8 unk_BEC07;
    /* 0xBEC08 */ u8 unk_BEC08;
    /* 0xBEC09 */ u8 unk_BEC09;
    /* 0xBEC0A */ u8 unk_BEC0A;
    /* 0xBEC0B */ u8 unk_BEC0B;
    /* 0xBEC0C */ int stateSaveDepth[7];
    /* 0xBEC28 */ u8 unk_BEC28;
    /* 0xBEC29 */ u8 unk_BEC29;
    /* 0xBEC2A */ u16 unk_BEC2A;
    /* 0xBEC2C */ u32 unk_BEC2C;
    /* 0xBEC30 */ u8 unk_BEC30[8];
    /* 0xBEC38 */ u32 unk_BEC38;
    /* 0xBEC3C */ void *myChatot;
    /* 0xBEC40 */ void *otherChatots[4];
    /* 0xBEC50 */ u32 cryPattern[2];
    /* 0xBEC58 */ u32 cryPan[2];
    /* 0xBEC60 */ u32 cryVolume[2];
    /* 0xBEC68 */ u32 cryHeapId[2];
    /* 0xBEC70 */ u16 cryNo[2];
    /* 0xBEC74 */ u8 cryDelayTimer[2];
    /* 0xBEC76 */ u8 unk_BEC76;
    /* 0xBEC77 */ u8 unk_BEC77;
    /* 0xBEC78 */ u8 unk_BEC78;
    /* 0xBEC79 */ u8 unk_BEC79;
    /* 0xBEC7A */ u16 unk_BEC7A;
    /* 0xBEC7C */ u32 unk_BEC7C;
    /* 0xBEC80 */ u32 micInitDone:1;
    /* 0xBEC80 */ u32 micCounter:31;
    /* 0xBEC84 */ u32 gbSoundsVolume;
}; // size: 0xBEC88


typedef struct SNDBinaryFileHeader
{
    /* 0x0 */ char    signature[4];
    /* 0x4 */ u16     byteOrder;
    /* 0x6 */ u16     version;
    /* 0x8 */ u32     fileSize;
    /* 0xC */ u16     headerSize;
    /* 0xE */ u16     dataBlocks;
} // size = 0x10
SNDBinaryFileHeader;


typedef struct SNDBinaryBlockHeader
{
    /* 0x0 */ u32     kind;
    /* 0x4 */ u32     size;
} // size = 0x8
SNDBinaryBlockHeader;


struct SNDWaveArcLink;

typedef struct SNDWaveArc
{
    /* 0x00 */ struct SNDBinaryFileHeader fileHeader;
    /* 0x10 */ struct SNDBinaryBlockHeader blockHeader;

    /* 0x18 */ struct SNDWaveArcLink *topLink;
    /* 0x1C */ u32     reserved[7];
    /* 0x38 */ u32     waveCount;
    /* 0x3C */ u32     waveOffset[0];
} // size = 0x40
SNDWaveArc;


// me when i recursive define but it's a pointer so it's okay
typedef struct SNDWaveArcLink
{
    /* 0x0 */ struct SNDWaveArc *waveArc;
    /* 0x4 */ struct SNDWaveArcLink *next;
} // size = 0x8
SNDWaveArcLink;


typedef struct SNDBankData
{
    /* 0x00 */ struct SNDBinaryFileHeader fileHeader;
    /* 0x10 */ struct SNDBinaryBlockHeader blockHeader;

    /* 0x18 */ struct SNDWaveArcLink waveArcLink[SND_BANK_TO_WAVEARC_MAX];
    /* 0x38 */ u32     instCount;
    /* 0x3C */ u32     instOffset[0];
} // size = 0x40
SNDBankData;


typedef struct NNSSndArcBankInfo
{
    /* 0x0 */ u32 fileId;
    /* 0x4 */ u16 waveArcNo[ NNS_SND_ARC_BANK_TO_WAVEARC_NUM ];
} // size = 0xC
NNSSndArcBankInfo;


typedef struct NNSSndArcWaveArcInfo
{
    u32 fileId : 24;
    u32 flags  :  8;
} NNSSndArcWaveArcInfo;



// function declarations
struct SND_WORK LONG_CALL *GetSoundDataPointer(void);
void LONG_CALL GF_SndHeapGetFreeSize(void);
BOOL LONG_CALL NNS_SndArcLoadSeq(u32 seq, void *heap);
BOOL LONG_CALL NNS_SndArcLoadSeqEx(u32 seq, u32 loadflag, void *heap);

const NNSSndArcBankInfo * LONG_CALL NNS_SndArcGetBankInfo(int bankNo);
SNDBankData * LONG_CALL LoadBank(int fileId, void *heap, BOOL bSetAddr);
void * LONG_CALL NNS_SndArcGetFileAddress(int fileId);
const NNSSndArcWaveArcInfo * LONG_CALL NNS_SndArcGetWaveArcInfo(u32 waveArcIndex);
int LONG_CALL NNSi_SndArcLoadWaveArc(u16 waveArcNo, u32 loadFlag, void *heap, BOOL bSetAddr, SNDWaveArc **waveArc);
BOOL LONG_CALL LoadSingleWaves(SNDWaveArc *waveArc, SNDBankData *bank, int index, u32 fileId, void *heap);
void LONG_CALL SND_AssignWaveArc(SNDBankData *bank, int index, SNDWaveArc *waveArc);

void LONG_CALL PlayCry(u16 species, u8 forme);
void LONG_CALL PlaySE(u32 se);


// defined in src/sound.c
BOOL LONG_CALL GF_Snd_LoadSeq(int seqNo);
int LONG_CALL NNSi_SndArcLoadBank(int bankNo, u32 loadFlag, void *heap, BOOL bSetAddr, struct SNDBankData** pData);


#endif // SOUND_H
