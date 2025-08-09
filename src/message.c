#include "../include/config.h"
#include "../include/message.h"
#include "../include/types.h"
#include "../include/constants/file.h"

/*
 * @brief Buffer the name of an item from a NARC
 * @see pret/pokeheartlgold#BufferItemName
 */
void LONG_CALL BufferItemNameFromNarc(MessageFormat *msgFmt, u32 fieldno, u32 itemId, u32 narc) {
    MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, ARC_MSG_DATA, narc, msgFmt->heapId);
    if (msgData != NULL) {
        ReadMsgDataIntoString(msgData, itemId, msgFmt->buffer);
        SetStringAsPlaceholder(msgFmt, fieldno, msgFmt->buffer, NULL);
        DestroyMsgData(msgData);
    }
}