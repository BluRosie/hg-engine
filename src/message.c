#include "../include/config.h"
#include "../include/message.h"
#include "../include/types.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"

void BufferItemNameFromNarc(MessageFormat *msgFmt, u32 fieldno, u32 itemId, u32 narc) {
    MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, ARC_MSG_DATA, narc, msgFmt->heapId);
    u32 offset = ITEM_MSG_OFFSET(itemId);
    debug_printf("[BufferItemNameFromNarc] %d\n", offset);
    if (msgData != NULL) {
        ReadMsgDataIntoString(msgData, offset, msgFmt->buffer);
        SetStringAsPlaceholder(msgFmt, fieldno, msgFmt->buffer, NULL);
        DestroyMsgData(msgData);
    }
}

void LONG_CALL BufferItemName(MessageFormat *msgFmt, u32 fieldno, u32 itemId) {
    debug_printf("[BufferItemName] start\n");
    enum ItemGeneration gen = ITEM_GENERATION(itemId);
    debug_printf("[BufferItemName] gen %d\n", gen);
    u32 narc = (gen == CUSTOM)
        ? MSG_DATA_ITEM_NAME_CUSTOM
        : MSG_DATA_ITEM_FILE(MSG_DATA_ITEM_NAME_GEN4, gen);
    debug_printf("[BufferItemName] narc %d\n", narc);
    BufferItemNameFromNarc(msgFmt, fieldno, itemId, narc);
    debug_printf("[BufferItemName] end\n");
}

void LONG_CALL BufferItemNameWithIndefArticle(MessageFormat *msgFmt, u32 fieldno, u32 itemId) {
    debug_printf("[BufferItemNameWithIndefArticle] start\n");
    u32 narc;
//    if (IS_ITEM_GEN4(itemId)) {
//        narc = MSG_DATA_ITEM_NAME_ARTICLE_GEN4;
//    } else if (IS_ITEM_GEN5(itemId)) {
//        narc = MSG_DATA_ITEM_NAME_ARTICLE_GEN5;
//    } else if (IS_ITEM_GEN6(itemId)) {
//        narc = MSG_DATA_ITEM_NAME_ARTICLE_GEN6;
//    } else if (IS_ITEM_GEN7(itemId)) {
//        narc = MSG_DATA_ITEM_NAME_ARTICLE_GEN7;
//    } else if (IS_ITEM_GEN8(itemId)) {
//        narc = MSG_DATA_ITEM_NAME_ARTICLE_GEN8;
//    } else if (IS_ITEM_GEN9(itemId)) {
//        narc = MSG_DATA_ITEM_NAME_ARTICLE_GEN9;
//    } else {
//        narc = MSG_DATA_ITEM_NAME_ARTICLE_CUSTOM;
//    }

    BufferItemNameFromNarc(msgFmt, fieldno, itemId, narc);
    debug_printf("[BufferItemNameWithIndefArticle] end\n");
}

void LONG_CALL BufferItemNamePlural(MessageFormat *msgFmt, u32 fieldno, u32 itemId) {
    debug_printf("[BufferItemNamePlural] start\n");
    u32 narc;
//    if (IS_ITEM_GEN4(itemId)) {
//        narc = MSG_DATA_ITEM_NAME_PLURAL_GEN4;
//    } else if (IS_ITEM_GEN5(itemId)) {
//        narc = MSG_DATA_ITEM_NAME_PLURAL_GEN5;
//    } else if (IS_ITEM_GEN6(itemId)) {
//        narc = MSG_DATA_ITEM_NAME_PLURAL_GEN6;
//    } else if (IS_ITEM_GEN7(itemId)) {
//        narc = MSG_DATA_ITEM_NAME_PLURAL_GEN7;
//    } else if (IS_ITEM_GEN8(itemId)) {
//        narc = MSG_DATA_ITEM_NAME_PLURAL_GEN8;
//    } else if (IS_ITEM_GEN9(itemId)) {
//        narc = MSG_DATA_ITEM_NAME_PLURAL_GEN9;
//    } else {
//        narc = MSG_DATA_ITEM_NAME_PLURAL_CUSTOM;
//    }

    BufferItemNameFromNarc(msgFmt, fieldno, itemId, narc);
    debug_printf("[BufferItemNamePlural] end\n");
}

void LONG_CALL BufferItemNameGiveItem(MessageFormat *msgFmt, u32 fieldno, u32 itemId) {
    debug_printf("[BufferItemNameGiveItem] start\n");
    u32 narc;
//    if (IS_ITEM_GEN4(itemId)) {
//        narc = MSG_DATA_ITEM_GIVE_ITEM_GEN4;
//    } else if (IS_ITEM_GEN5(itemId)) {
//        narc = MSG_DATA_ITEM_GIVE_ITEM_GEN5;
//    } else if (IS_ITEM_GEN6(itemId)) {
//        narc = MSG_DATA_ITEM_GIVE_ITEM_GEN6;
//    } else if (IS_ITEM_GEN7(itemId)) {
//        narc = MSG_DATA_ITEM_GIVE_ITEM_GEN7;
//    } else if (IS_ITEM_GEN8(itemId)) {
//        narc = MSG_DATA_ITEM_GIVE_ITEM_GEN8;
//    } else if (IS_ITEM_GEN9(itemId)) {
//        narc = MSG_DATA_ITEM_GIVE_ITEM_GEN9;
//    } else {
//        narc = MSG_DATA_ITEM_GIVE_ITEM_CUSTOM;
//    }

    BufferItemNameFromNarc(msgFmt, fieldno, itemId, narc);
    debug_printf("[BufferItemNameGiveItem] end\n");
}