#include "../include/types.h"
#include "../include/config.h"
#include "../include/debug.h"


#define SND_HEAP_SIZE 0xBEAE0
#define SND_HANDLE_MAX 9



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



struct SND_WORK __attribute__((long_call)) *GetSoundDataPointer(void);
void __attribute__((long_call)) GF_SndHeapGetFreeSize(void);
BOOL __attribute__((long_call)) NNS_SndArcLoadSeq(u32 seq, void *heap);
BOOL __attribute__((long_call)) NNS_SndArcLoadSeqEx(u32 seq, u32 loadflag, void *heap);


#define SoundHeapFreeSize (*(u32 *)0x02111954)


BOOL GF_Snd_LoadSeq(int seqNo) {
    BOOL ret;
    struct SND_WORK *work;

    work = GetSoundDataPointer();
    ret = NNS_SndArcLoadSeq(seqNo, work->heap);
    GF_SndHeapGetFreeSize();

#ifdef DEBUG_SOUND_SSEQ_LOADS
    if (!ret)
    {
        u8 buf[200];
        sprintf(buf, "[GF_Snd_LoadSeq] Failed to load song %d.  There are 0x%x bytes left in the sound heap.\n", seqNo, SoundHeapFreeSize);
        debugsyscall(buf);
    }
    else
    {
        u8 buf[200];
        sprintf(buf, "[GF_Snd_LoadSeq] Loaded song %d.  There are 0x%x bytes left in the sound heap.\n", seqNo, SoundHeapFreeSize);
        debugsyscall(buf);
    }
#endif // DEBUG_SOUND_SSEQ_LOADS

    return ret;
}


BOOL GF_Snd_LoadSeqEx(int seqNo, u32 loadFlag) {
    BOOL ret;
    struct SND_WORK *work;

    work = GetSoundDataPointer();
    ret = NNS_SndArcLoadSeqEx(seqNo, loadFlag, work->heap);
    GF_SndHeapGetFreeSize();

#ifdef DEBUG_SOUND_SSEQ_LOADS
    if (!ret)
    {
        u8 buf[200];
        sprintf(buf, "[GF_Snd_LoadSeqEx] Failed to load song %d.  There are 0x%x bytes left in the sound heap.\n", seqNo, SoundHeapFreeSize);
        debugsyscall(buf);
    }
    else
    {
        u8 buf[200];
        sprintf(buf, "[GF_Snd_LoadSeqEx] Loaded song %d.  There are 0x%x bytes left in the sound heap (EX).\n", seqNo, SoundHeapFreeSize);
        debugsyscall(buf);
    }
#endif // DEBUG_SOUND_SSEQ_LOADS

    return ret;
}



// we got the sdk involved

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

#ifdef DEBUG_SOUND_SBNK_LOADS
const u8 *NNS_SND_ARC_LOAD_ERROR_STRINGS[] =
{
    "NNS_SND_ARC_LOAD_SUCCESS",
    "NNS_SND_ARC_LOAD_ERROR_INVALID_GROUP_NO",
    "NNS_SND_ARC_LOAD_ERROR_INVALID_SEQ_NO",
    "NNS_SND_ARC_LOAD_ERROR_INVALID_SEQARC_NO",
    "NNS_SND_ARC_LOAD_ERROR_INVALID_BANK_NO",
    "NNS_SND_ARC_LOAD_ERROR_INVALID_WAVEARC_NO",
    "NNS_SND_ARC_LOAD_ERROR_FAILED_LOAD_SEQ",
    "NNS_SND_ARC_LOAD_ERROR_FAILED_LOAD_SEQARC",
    "NNS_SND_ARC_LOAD_ERROR_FAILED_LOAD_BANK",
    "NNS_SND_ARC_LOAD_ERROR_FAILED_LOAD_WAVE"
};
#endif // DEBUG_SOUND_SBNK_LOADS


#define NNS_SND_ARC_LOAD_SEQ    ( 1 << 0 )
#define NNS_SND_ARC_LOAD_BANK   ( 1 << 1 )
#define NNS_SND_ARC_LOAD_WAVE   ( 1 << 2 )
#define NNS_SND_ARC_LOAD_SEQARC ( 1 << 3 )
#define NNS_SND_ARC_LOAD_ALL   0xff


#define SND_BANK_TO_WAVEARC_MAX 4
#define NNS_SND_ARC_BANK_TO_WAVEARC_NUM 4

#define NNS_SND_ARC_INVALID_WAVEARC_NO 0xffff

#define NNS_SND_ARC_WAVEARC_SINGLE_LOAD ( 1 << 0 )



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


const NNSSndArcBankInfo * __attribute__((long_call)) NNS_SndArcGetBankInfo(int bankNo);
SNDBankData * __attribute__((long_call)) LoadBank(int fileId, void *heap, BOOL bSetAddr);
void * __attribute__((long_call)) NNS_SndArcGetFileAddress(int fileId);
const NNSSndArcWaveArcInfo * __attribute__((long_call)) NNS_SndArcGetWaveArcInfo();
int __attribute__((long_call)) NNSi_SndArcLoadWaveArc(u16 waveArcNo, u32 loadFlag, void *heap, BOOL bSetAddr, SNDWaveArc *waveArc);
BOOL __attribute__((long_call)) LoadSingleWaves(SNDWaveArc *waveArc, SNDBankData *bank, int index, u32 fileId, void *heap);
void __attribute__((long_call)) SND_AssignWaveArc(SNDBankData *bank, int index, SNDWaveArc *waveArc);

int NNSi_SndArcLoadBank(int bankNo, u32 loadFlag, void *heap, BOOL bSetAddr, struct SNDBankData** pData)
{
    const NNSSndArcBankInfo* bankInfo;
    const NNSSndArcWaveArcInfo* waveArcInfo;
    SNDBankData* bank = NULL;
    SNDWaveArc* waveArc;
    int result;
    int i;
    BOOL loadingNewCry = 0, hasLoadedCry = 0;

    // Get bank information
    if (bankNo >= CRY_PSEUDOBANK_START || (bankNo < 495 && bankNo > 1)) // assume all cry banks are loading cries
    {
        bankInfo = NNS_SndArcGetBankInfo(1);
        loadingNewCry = 1;
#ifdef DEBUG_SOUND_SBNK_LOADS
        u8 buf[200];
        sprintf(buf, "[NNSi_SndArcLoadBank] Cry load detected for bank %d (Index %d).\n", bankNo, (bankNo >= CRY_PSEUDOBANK_START) ? (bankNo - (CRY_PSEUDOBANK_START - 544)) : bankNo);
        debugsyscall(buf);
#endif // DEBUG_SOUND_SBNK_LOADS
    }
    else
    {
        bankInfo = NNS_SndArcGetBankInfo( bankNo );
    }

#ifdef DEBUG_SOUND_SBNK_LOADS
    if (bankInfo == NULL)
    {
        u8 buf[200];
        GF_SndHeapGetFreeSize();
        sprintf(buf, "[NNSi_SndArcLoadBank] Failed to load bank %d.  There are 0x%x bytes left in the sound heap.\n", bankNo, SoundHeapFreeSize);
        debugsyscall(buf);
    }
#endif // DEBUG_SOUND_SBNK_LOADS

    if ( bankInfo == NULL ) return NNS_SND_ARC_LOAD_ERROR_INVALID_BANK_NO;

    // If necessary to load
    if ( loadFlag & NNS_SND_ARC_LOAD_BANK )
    {
        bank = LoadBank( bankInfo->fileId, heap, bSetAddr );
        if ( bank == NULL ) {
            return NNS_SND_ARC_LOAD_ERROR_FAILED_LOAD_BANK;
        }
    }
    else
    {
        bank = (SNDBankData*)NNS_SndArcGetFileAddress( bankInfo->fileId );
    }

    // Load waveform data
    for( i = 0; i < NNS_SND_ARC_BANK_TO_WAVEARC_NUM ; i++ )
    {
        u32 waveArcIndex = bankInfo->waveArcNo[i];
        if (loadingNewCry && !hasLoadedCry)
        {
            waveArcIndex = bankNo;
            hasLoadedCry = 1;
        }

        if ( waveArcIndex == NNS_SND_ARC_INVALID_WAVEARC_NO ) continue;

        // Get waveform archive information
        waveArcInfo = NNS_SndArcGetWaveArcInfo( waveArcIndex );

#ifdef DEBUG_SOUND_SBNK_LOADS
        if (waveArcInfo == NULL)
        {
            u8 buf[200];
            GF_SndHeapGetFreeSize();
            sprintf(buf, "[NNSi_SndArcLoadBank] Failed to load waveArc %d using NNS_SndArcGetWaveArcInfo.  There are 0x%x bytes left in the sound heap.\n", waveArcIndex, SoundHeapFreeSize);
            debugsyscall(buf);
        }
#endif // DEBUG_SOUND_SBNK_LOADS

        if ( waveArcInfo == NULL ) return NNS_SND_ARC_LOAD_ERROR_INVALID_WAVEARC_NO;

        // Loading waveform archives
        result = NNSi_SndArcLoadWaveArc( waveArcIndex, loadFlag, heap, bSetAddr, &waveArc );

#ifdef DEBUG_SOUND_SBNK_LOADS

        if ( result != NNS_SND_ARC_LOAD_SUCCESS )
        {
            u8 buf[200];
            GF_SndHeapGetFreeSize();
            if (loadingNewCry)
            {
                sprintf(buf, "[NNSi_SndArcLoadBank] Failure to load waveArc %d using NNSi_SndArcLoadWaveArc (%s) ignored because cry detected.  There are 0x%x bytes left in the sound heap.\n", waveArcIndex,  NNS_SND_ARC_LOAD_ERROR_STRINGS[result], SoundHeapFreeSize);
                debugsyscall(buf);
            }
            else
            {
                sprintf(buf, "[NNSi_SndArcLoadBank] Failed to load waveArc %d using NNSi_SndArcLoadWaveArc (%s).  There are 0x%x bytes left in the sound heap.\n", waveArcIndex,  NNS_SND_ARC_LOAD_ERROR_STRINGS[result], SoundHeapFreeSize);
                debugsyscall(buf);
                return result;
            }
        }

#else

        if ( result != NNS_SND_ARC_LOAD_SUCCESS && !loadingNewCry ) return result;

#endif // DEBUG_SOUND_SBNK_LOADS

        if ( waveArcInfo->flags & NNS_SND_ARC_WAVEARC_SINGLE_LOAD )
        {
            // Individual waveform loading
            if ( loadFlag & NNS_SND_ARC_LOAD_WAVE )
            {
                if ( ! LoadSingleWaves( waveArc, bank, i, waveArcInfo->fileId, heap ) ) {

#ifdef DEBUG_SOUND_SBNK_LOADS
                    {
                        u8 buf[200];
                        GF_SndHeapGetFreeSize();
                        sprintf(buf, "[NNSi_SndArcLoadBank] Failed to load waves for waveArc id %d using LoadSingleWaves.  There are 0x%x bytes left in the sound heap.\n", waveArcIndex, SoundHeapFreeSize);
                        debugsyscall(buf);
                    }
#endif // DEBUG_SOUND_SBNK_LOADS

                    return NNS_SND_ARC_LOAD_ERROR_FAILED_LOAD_WAVE;
                }
            }
        }

        // Associate waveforms with banks
        if ( bank != NULL && waveArc != NULL ) {
            SND_AssignWaveArc( bank, i, waveArc );
        }
    }

    if ( pData != NULL ) *pData = bank;

#ifdef DEBUG_SOUND_SBNK_LOADS
    {
        u8 buf[200];
        GF_SndHeapGetFreeSize();
        sprintf(buf, "[NNSi_SndArcLoadBank] Loaded bank %d.  There are 0x%x bytes left in the sound heap.\n", bankNo, SoundHeapFreeSize);
        debugsyscall(buf);
    }
#endif // DEBUG_SOUND_SBNK_LOADS

    return NNS_SND_ARC_LOAD_SUCCESS;
}
