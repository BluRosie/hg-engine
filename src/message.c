#include "../include/config.h"
#include "../include/message.h"
#include "../include/types.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"

void BufferItemNameFromNarc(MessageFormat *msgFmt, u32 fieldno, u32 itemId, u32 narc) {
    MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, ARC_MSG_DATA, narc, msgFmt->heapId);
    if (msgData != NULL) {
        ReadMsgDataIntoString(msgData, itemId, msgFmt->buffer);
        SetStringAsPlaceholder(msgFmt, fieldno, msgFmt->buffer, NULL);
        DestroyMsgData(msgData);
    }
}

void LONG_CALL BufferItemName(MessageFormat *msgFmt, u32 fieldno, u32 itemId) {
    u32 narc;
    if (IS_ITEM_GEN4(itemId)) {
        narc = MSG_DATA_ITEM_NAME_GEN4;
    } else if (IS_ITEM_GEN5(itemId)) {
        narc = MSG_DATA_ITEM_NAME_GEN5;
    } else if (IS_ITEM_GEN6(itemId)) {
        narc = MSG_DATA_ITEM_NAME_GEN6;
    } else if (IS_ITEM_GEN7(itemId)) {
        narc = MSG_DATA_ITEM_NAME_GEN7;
    } else if (IS_ITEM_GEN8(itemId)) {
        narc = MSG_DATA_ITEM_NAME_GEN8;
    } else if (IS_ITEM_GEN9(itemId)) {
        narc = MSG_DATA_ITEM_NAME_GEN9;
    } else {
        narc = MSG_DATA_ITEM_NAME_CUSTOM;
    }

    BufferItemNameFromNarc(msgFmt, fieldno, itemId, narc);
}

void LONG_CALL BufferItemNameWithIndefArticle(MessageFormat *msgFmt, u32 fieldno, u32 itemId) {
    u32 narc;
    if (IS_ITEM_GEN4(itemId)) {
        narc = MSG_DATA_ITEM_NAME_ARTICLE_GEN4;
    } else if (IS_ITEM_GEN5(itemId)) {
        narc = MSG_DATA_ITEM_NAME_ARTICLE_GEN5;
    } else if (IS_ITEM_GEN6(itemId)) {
        narc = MSG_DATA_ITEM_NAME_ARTICLE_GEN6;
    } else if (IS_ITEM_GEN7(itemId)) {
        narc = MSG_DATA_ITEM_NAME_ARTICLE_GEN7;
    } else if (IS_ITEM_GEN8(itemId)) {
        narc = MSG_DATA_ITEM_NAME_ARTICLE_GEN8;
    } else if (IS_ITEM_GEN9(itemId)) {
        narc = MSG_DATA_ITEM_NAME_ARTICLE_GEN9;
    } else {
        narc = MSG_DATA_ITEM_NAME_ARTICLE_CUSTOM;
    }

    BufferItemNameFromNarc(msgFmt, fieldno, itemId, narc);
}

void LONG_CALL BufferItemNamePlural(MessageFormat *msgFmt, u32 fieldno, u32 itemId) {
    u32 narc;
    if (IS_ITEM_GEN4(itemId)) {
        narc = MSG_DATA_ITEM_NAME_PLURAL_GEN4;
    } else if (IS_ITEM_GEN5(itemId)) {
        narc = MSG_DATA_ITEM_NAME_PLURAL_GEN5;
    } else if (IS_ITEM_GEN6(itemId)) {
        narc = MSG_DATA_ITEM_NAME_PLURAL_GEN6;
    } else if (IS_ITEM_GEN7(itemId)) {
        narc = MSG_DATA_ITEM_NAME_PLURAL_GEN7;
    } else if (IS_ITEM_GEN8(itemId)) {
        narc = MSG_DATA_ITEM_NAME_PLURAL_GEN8;
    } else if (IS_ITEM_GEN9(itemId)) {
        narc = MSG_DATA_ITEM_NAME_PLURAL_GEN9;
    } else {
        narc = MSG_DATA_ITEM_NAME_PLURAL_CUSTOM;
    }

    BufferItemNameFromNarc(msgFmt, fieldno, itemId, narc);
}

void LONG_CALL BufferItemNameGiveItem(MessageFormat *msgFmt, u32 fieldno, u32 itemId) {
    u32 narc;
    if (IS_ITEM_GEN4(itemId)) {
        narc = MSG_DATA_ITEM_GIVE_ITEM_GEN4;
    } else if (IS_ITEM_GEN5(itemId)) {
        narc = MSG_DATA_ITEM_GIVE_ITEM_GEN5;
    } else if (IS_ITEM_GEN6(itemId)) {
        narc = MSG_DATA_ITEM_GIVE_ITEM_GEN6;
    } else if (IS_ITEM_GEN7(itemId)) {
        narc = MSG_DATA_ITEM_GIVE_ITEM_GEN7;
    } else if (IS_ITEM_GEN8(itemId)) {
        narc = MSG_DATA_ITEM_GIVE_ITEM_GEN8;
    } else if (IS_ITEM_GEN9(itemId)) {
        narc = MSG_DATA_ITEM_GIVE_ITEM_GEN9;
    } else {
        narc = MSG_DATA_ITEM_GIVE_ITEM_CUSTOM;
    }

    BufferItemNameFromNarc(msgFmt, fieldno, itemId, narc);
}