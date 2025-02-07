#include "../../include/types.h"
#include "../../include/config.h"
#include "../../include/battle.h"
#include "../../include/item.h"
#include "../../include/mega.h"
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

// TODO
#define TAG_NONE                                            0
#define TAG_NONE_SIDE                                       1
#define TAG_NICKNAME                                        2
#define TAG_MOVE                                            3
#define TAG_STAT                                            4
#define TAG_ITEM                                            5
#define TAG_NUMBER                                          6
#define TAG_NUMBERS                                         7
#define TAG_TRNAME                                          8
#define TAG_NICKNAME_NICKNAME                               9
#define TAG_NICKNAME_MOVE                                   10
#define TAG_NICKNAME_ABILITY                                11
#define TAG_NICKNAME_STAT                                   12
#define TAG_NICKNAME_TYPE                                   13
#define TAG_NICKNAME_POKE                                   14
#define TAG_NICKNAME_ITEM                                   15
#define TAG_NICKNAME_POFFIN                                 16
#define TAG_NICKNAME_NUM                                    17
#define TAG_NICKNAME_TRNAME                                 18
#define TAG_NICKNAME_BOX                                    19
#define TAG_MOVE_SIDE                                       20
#define TAG_MOVE_NICKNAME                                   21
#define TAG_MOVE_MOVE                                       22
#define TAG_ABILITY_NICKNAME                                23
#define TAG_ITEM_MOVE                                       24
#define TAG_NUMBER_NUMBER                                   25
#define TAG_TRNAME_TRNAME                                   26
#define TAG_TRNAME_NICKNAME                                 27
#define TAG_TRNAME_ITEM                                     28
#define TAG_TRNAME_NUM                                      29
#define TAG_TRCLASS_TRNAME                                  30
#define TAG_NICKNAME_NICKNAME_MOVE                          31
#define TAG_NICKNAME_NICKNAME_ABILITY                       32
#define TAG_NICKNAME_NICKNAME_ITEM                          33
#define TAG_NICKNAME_MOVE_MOVE                              34
#define TAG_NICKNAME_MOVE_NUMBER                            35
#define TAG_NICKNAME_ABILITY_NICKNAME                       36
#define TAG_NICKNAME_ABILITY_MOVE                           37
#define TAG_NICKNAME_ABILITY_ITEM                           38
#define TAG_NICKNAME_ABILITY_STAT                           39
#define TAG_NICKNAME_ABILITY_TYPE                           40
#define TAG_NICKNAME_ABILITY_STATUS                         41
#define TAG_NICKNAME_ABILITY_NUMBER                         42
#define TAG_NICKNAME_ITEM_NICKNAME                          43
#define TAG_NICKNAME_ITEM_MOVE                              44
#define TAG_NICKNAME_ITEM_STAT                              45
#define TAG_NICKNAME_ITEM_STATUS                            46
#define TAG_NICKNAME_BOX_BOX                                47
#define TAG_ITEM_NICKNAME_FLAVOR                            48
#define TAG_TRNAME_NICKNAME_NICKNAME                        49
#define TAG_TRCLASS_TRNAME_NICKNAME                         50
#define TAG_TRCLASS_TRNAME_ITEM                             51
#define TAG_NICKNAME_ABILITY_NICKNAME_MOVE                  52
#define TAG_NICKNAME_ABILITY_NICKNAME_ABILITY               53
#define TAG_NICKNAME_ABILITY_NICKNAME_STAT                  54
#define TAG_NICKNAME_ITEM_NICKNAME_ITEM                     55
#define TAG_TRNAME_NICKNAME_TRNAME_NICKNAME                 56
#define TAG_TRCLASS_TRNAME_NICKNAME_NICKNAME                57
#define TAG_TRCLASS_TRNAME_NICKNAME_TRNAME                  58
#define TAG_TRCLASS_TRNAME_TRCLASS_TRNAME                   59
#define TAG_TRCLASS_TRNAME_NICKNAME_TRCLASS_TRNAME_NICKNAME 60

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
        if (msg->msg_id == 513) {
            BufferItemNameWithIndefArticle(bsys->msgFormat, 1, msg->msg_para[1]);
        } else {
            BattleMessage_BufferItem(bsys, 1, msg->msg_para[1]);
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
        BattleMessage_BufferItem(bsys, 1, msg->msg_para[1]);
        BattleMessage_BufferNickname(bsys, 2, msg->msg_para[2]);
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