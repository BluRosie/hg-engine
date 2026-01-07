#include "../../include/types.h"
#include "../../include/config.h"
#include "../../include/battle.h"
#include "../../include/item.h"
#include "../../include/mega.h"
#include "../../include/message.h"
#include "../../include/pokemon.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/file.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/species.h"
#include "../../include/constants/system_control.h"

static int GetKeyStoneVariantFromTrainerClass(int trainerClass) {
    switch (trainerClass) {
        default:
            return ITEM_KEY_STONE;
            break;
    }
}

void BattleSystem_BufferMessage(struct BattleSystem *bsys, MESSAGE_PARAM *msg) {
    // debug_printf("In BattleSystem_BufferMessage (overlay)\n");

    // https://github.com/pret/pokeplatinum/blob/main/include/constants/battle/message_tags.h#L7
    switch (msg->msg_tag & TAG_NO_DIR_OFF) {
    case TAG_NONE:
    case TAG_NONE_SIDE:
        break;
    case TAG_NICKNAME:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        break;
    case TAG_MOVE:
    case TAG_MOVE_SIDE:
        BattleMessage_BufferMove(bsys, 0, msg->msg_para[0]);
        break;
    case TAG_STAT:
        BattleMessage_BufferStat(bsys, 0, msg->msg_para[0]);
        break;
    case TAG_ITEM:
        BattleMessage_BufferItem(bsys, 0, msg->msg_para[0]);
        break;
    case TAG_NUMBER:
        BattleMessage_BufferNumber(bsys, 0, msg->msg_para[0]);
        break;
    case TAG_NUMBERS:
        BattleMessage_BufferNumbers(bsys, 0, msg->msg_para[0], msg->msg_keta);
        break;
    case TAG_TRNAME:
        BattleMessage_BufferTrainerName(bsys, 0, msg->msg_para[0]);
        break;
    case TAG_NICKNAME_NICKNAME:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferMove(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_ABILITY:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_STAT:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferStat(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_TYPE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferType(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_POKE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferPokemon(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_ITEM:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        if (((msg->msg_id >= BATTLE_MSG_OBTAINED_ITEM) && (msg->msg_id < (BATTLE_MSG_OBTAINED_ITEM + 3)))
         || ((msg->msg_id >= BATTLE_MSG_PICKED_UP_ITEM) && (msg->msg_id < (BATTLE_MSG_PICKED_UP_ITEM + 3))))
        { // get article added to each of these
            BufferItemNameWithIndefArticle(bsys->msgFormat, 1, msg->msg_para[1]);
        } else {
            BattleMessage_BufferItem(bsys, 1, msg->msg_para[1]);
        }
        if ((msg->msg_id - BATTLE_MSG_MEGA_EVOLUTION) < 3) {
            Trainer *trainer = BattleSystem_GetTrainer(bsys, msg->msg_para[0]);
            BattleMessage_BufferItem(bsys, 2, GetKeyStoneVariantFromTrainerClass(trainer->data.trainerClass));
        }
        break;
    case TAG_NICKNAME_POFFIN: // unused
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferPoffin(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_NUM:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNumber(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_TRNAME:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_BOX:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferBoxName(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_MOVE_NICKNAME:
        BattleMessage_BufferMove(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_MOVE_MOVE:
        BattleMessage_BufferMove(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferMove(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_ABILITY_NICKNAME:
        BattleMessage_BufferAbility(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_ITEM_MOVE:
        BattleMessage_BufferItem(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferMove(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NUMBER_NUMBER:
        BattleMessage_BufferNumber(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNumber(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_TRNAME_TRNAME:
        BattleMessage_BufferTrainerName(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_TRNAME_NICKNAME:
        BattleMessage_BufferTrainerName(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_TRNAME_ITEM:
        BattleMessage_BufferTrainerName(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferItem(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_TRNAME_NUM:
        BattleMessage_BufferTrainerName(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNumber(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_TRCLASS_TRNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        break;
    case TAG_NICKNAME_NICKNAME_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferMove(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_NICKNAME_ABILITY:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferAbility(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_NICKNAME_ITEM:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferItem(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_MOVE_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferMove(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferMove(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_MOVE_NUMBER:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferMove(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNumber(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ABILITY_NICKNAME:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ABILITY_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferMove(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ABILITY_ITEM:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferItem(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ABILITY_STAT:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferStat(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ABILITY_TYPE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferType(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ABILITY_STATUS:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferStatus(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ABILITY_NUMBER:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNumber(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ITEM_NICKNAME:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferItem(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ITEM_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferItem(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferMove(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ITEM_STAT:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferItem(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferStat(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ITEM_STATUS:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferItem(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferStatus(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_BOX_BOX:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferBoxName(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferBoxName(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_ITEM_NICKNAME_FLAVOR:
        BattleMessage_BufferItem(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferFlavorPreference(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_TRNAME_NICKNAME_NICKNAME:
        BattleMessage_BufferTrainerName(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_TRCLASS_TRNAME_NICKNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_TRCLASS_TRNAME_ITEM:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferItem(bsys, 2, msg->msg_para[2]);
        break;
    case TAG_NICKNAME_ABILITY_NICKNAME_MOVE:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        BattleMessage_BufferMove(bsys, 3, msg->msg_para[3]);
        break;
    case TAG_NICKNAME_ABILITY_NICKNAME_ABILITY:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        BattleMessage_BufferAbility(bsys, 3, msg->msg_para[3]);
        break;
    case TAG_NICKNAME_ABILITY_NICKNAME_STAT:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferAbility(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        BattleMessage_BufferStat(bsys, 3, msg->msg_para[3]);
        break;
    case TAG_NICKNAME_ITEM_NICKNAME_ITEM:
        BattleMessage_BufferNickname(bsys, 0, msg->msg_para[0]);
        if ((msg->msg_id >= BATTLE_MSG_OBTAINED_ITEM_OBTAINED_ITEM) && (msg->msg_id < BATTLE_MSG_OBTAINED_ITEM_OBTAINED_ITEM + 7))
            BufferItemNameWithIndefArticle(bsys->msgFormat, 1, msg->msg_para[1]);
        else
            BattleMessage_BufferItem(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        if ((msg->msg_id >= BATTLE_MSG_OBTAINED_ITEM_OBTAINED_ITEM) && (msg->msg_id < BATTLE_MSG_OBTAINED_ITEM_OBTAINED_ITEM + 7))
            BufferItemNameWithIndefArticle(bsys->msgFormat, 3, msg->msg_para[3]);
        else
            BattleMessage_BufferItem(bsys, 3, msg->msg_para[3]);
        break;
    case TAG_TRNAME_NICKNAME_TRNAME_NICKNAME:
        BattleMessage_BufferTrainerName(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferNickname(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferTrainerName(bsys, 2, msg->msg_para[2]);
        BattleMessage_BufferNickname(bsys, 3, msg->msg_para[3]);
        break;
    case TAG_TRCLASS_TRNAME_NICKNAME_NICKNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        BattleMessage_BufferNickname(bsys, 3, msg->msg_para[3]);
        break;
    case TAG_TRCLASS_TRNAME_NICKNAME_TRNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        BattleMessage_BufferTrainerName(bsys, 3, msg->msg_para[3]);
        break;
    case TAG_TRCLASS_TRNAME_TRCLASS_TRNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferTrainerClass(bsys, 2, msg->msg_para[2]);
        BattleMessage_BufferTrainerName(bsys, 3, msg->msg_para[3]);
        break;
    case TAG_TRCLASS_TRNAME_NICKNAME_TRCLASS_TRNAME_NICKNAME:
        BattleMessage_BufferTrainerClass(bsys, 0, msg->msg_para[0]);
        BattleMessage_BufferTrainerName(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
        BattleMessage_BufferTrainerClass(bsys, 3, msg->msg_para[3]);
        BattleMessage_BufferTrainerName(bsys, 4, msg->msg_para[4]);
        BattleMessage_BufferNickname(bsys, 5, msg->msg_para[5]);
        break;
    default:
        GF_ASSERT(FALSE);
    }
}
