#ifndef POKEHEARTGOLD_MSGDATA_H
#define POKEHEARTGOLD_MSGDATA_H

#include "types.h"

typedef struct String {
    u16 maxsize;
    u16 size;
    u32 magic;
    u16 data[0];
} String;

typedef enum MsgDataLoadType {
    MSGDATA_LOAD_DIRECT,
    MSGDATA_LOAD_LAZY,
} MsgDataLoadType;

typedef struct _MAT_ENTRY {
    u32 offset;
    u32 length;
} MAT_ENTRY;

typedef struct _MAT {
    u16 count;
    u16 key;
    MAT_ENTRY alloc[1];
} MAT;

typedef struct MsgData {
    u16 type;
    u16 heapId;
    u16 narc_id;
    u16 file_id;
    union {
        MAT * direct;
        void * lazy;
    };
} MsgData;

typedef struct MessageFormatAttrs {
    u8 data[4];
} MessageFormatAttrs;

typedef struct MessageFormatFields {
    MessageFormatAttrs attrs;
    String *msg;
} MessageFormatFields;

typedef struct MessageFormat {
    u32 count;
    u16 heapId;
    MessageFormatFields *fields;
    String *buffer;
} MessageFormat;

MsgData *LONG_CALL NewMsgDataFromNarc(MsgDataLoadType type, u32 narc, s32 fileId, u32 heapId);
void LONG_CALL ReadMsgDataIntoU16Array(MsgData *msgData, u32 msgno, u16 *dest);
void LONG_CALL DestroyMsgData(MsgData * msgData);
void LONG_CALL CopyU16ArrayToString(String *string, const u16 *src);
void LONG_CALL CopyStringToU16Array(const String *string, u16 *dest, u32 n);
void LONG_CALL SetStringAsPlaceholder(MessageFormat *msgFmt, u32 fieldno, const String *string, const MessageFormatAttrs *attrs);
void BufferOffsetItemLineFromFile(MessageFormat *msgFmt, u32 fieldno, u32 itemId, u32 narc);
void LONG_CALL BufferItemName(MessageFormat *msgFmt, u32 fieldno, u32 itemId);
void LONG_CALL BufferItemNameWithIndefArticle(MessageFormat *msgFmt, u32 fieldno, u32 itemId);
void LONG_CALL BufferItemNamePlural(MessageFormat *msgFmt, u32 fieldno, u32 itemId);
void LONG_CALL BufferItemNameGiveItem(MessageFormat *msgFmt, u32 fieldno, u32 itemId);
u8 LONG_CALL AddTextPrinterParameterizedWithColor(void *window, u8 fontId, String *string, u32 x, u32 y, u32 textSpeed, u32 color, void *callback);
String *LONG_CALL NewString_ReadMsgData(MsgData *msgData, s32 strno);

#endif //POKEHEARTGOLD_MSGDATA_H
