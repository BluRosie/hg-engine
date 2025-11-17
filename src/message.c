#include "../include/config.h"
#include "../include/message.h"
#include "../include/types.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"

void BufferOffsetItemLineFromFile(MessageFormat *msgFmt, u32 fieldno, u32 itemId, u32 fileId) {
    MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, ARC_MSG_DATA, fileId, msgFmt->heapId);
    u32 offset = ITEM_MSG_OFFSET(itemId);
    if (msgData != NULL) {
        ReadMsgDataIntoString(msgData, offset, msgFmt->buffer);
        SetStringAsPlaceholder(msgFmt, fieldno, msgFmt->buffer, NULL);
        DestroyMsgData(msgData);
    }
}

void LONG_CALL BufferItemNameWithIndefArticle(MessageFormat *msgFmt, u32 fieldno, u32 itemId) {
    enum ItemGeneration gen = ITEM_GENERATION(itemId);
    u32 fileId = (gen == CUSTOM)
        ? MSG_DATA_ITEM_NAME_ARTICLE_CUSTOM
        : MSG_DATA_ITEM_FILE(MSG_DATA_ITEM_NAME_ARTICLE_GEN4, gen);
    BufferOffsetItemLineFromFile(msgFmt, fieldno, itemId, fileId);
}

void LONG_CALL BufferItemNamePlural(MessageFormat *msgFmt, u32 fieldno, u32 itemId) {
    enum ItemGeneration gen = ITEM_GENERATION(itemId);
    u32 fileId = (gen == CUSTOM)
        ? MSG_DATA_ITEM_NAME_PLURAL_CUSTOM
        : MSG_DATA_ITEM_FILE(MSG_DATA_ITEM_NAME_PLURAL_GEN4, gen);
    BufferOffsetItemLineFromFile(msgFmt, fieldno, itemId, fileId);
}

void LONG_CALL BufferItemNameGiveItem(MessageFormat *msgFmt, u32 fieldno, u32 itemId) {
    enum ItemGeneration gen = ITEM_GENERATION(itemId);
    u32 fileId = (gen == CUSTOM)
        ? MSG_DATA_ITEM_GIVE_ITEM_CUSTOM
        : MSG_DATA_ITEM_FILE(MSG_DATA_ITEM_GIVE_ITEM_GEN4, gen);
    BufferOffsetItemLineFromFile(msgFmt, fieldno, itemId, fileId);
}