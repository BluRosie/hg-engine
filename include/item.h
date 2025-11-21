#ifndef POKEDIAMOND_ITEM_H
#define POKEDIAMOND_ITEM_H

#include "types.h"
#include "task.h"
#include "script.h"

/*
 * Bit array describing the effects of using the item on a
 * party member.
 */
typedef struct ItemPartyUseParam
{
    u8 slp_heal:1;
    u8 psn_heal:1;
    u8 brn_heal:1;
    u8 frz_heal:1;
    u8 prz_heal:1;
    u8 cfs_heal:1;
    u8 inf_heal:1;
    u8 guard_spec:1;
    u8 revive:1;
    u8 revive_all:1;
    u8 level_up:1;
    u8 evolve:1;
    u8 atk_stages:4;
    u8 def_stages:4;
    u8 spatk_stages:4;
    u8 spdef_stages:4;
    u8 speed_stages:4;
    u8 accuracy_stages:4;
    u8 critrate_stages:2;
    u8 pp_up:1;
    u8 pp_max:1;
    u8 pp_restore:1;
    u8 pp_restore_all:1;
    u8 hp_restore:1;
    u8 hp_ev_up:1;
    u8 atk_ev_up:1;
    u8 def_ev_up:1;
    u8 speed_ev_up:1;
    u8 spatk_ev_up:1;
    u8 spdef_ev_up:1;
    u8 friendship_mod_lo:1;
    u8 friendship_mod_med:1;
    u8 friendship_mod_hi:1;
    s8 hp_ev_up_param;
    s8 atk_ev_up_param;
    s8 def_ev_up_param;
    s8 speed_ev_up_param;
    s8 spatk_ev_up_param;
    s8 spdef_ev_up_param;
    u8 hp_restore_param;
    u8 pp_restore_param;
    s8 friendship_mod_lo_param;
    s8 friendship_mod_med_param;
    s8 friendship_mod_hi_param;
    u8 padding[2];
} ITEMPARTYPARAM;

/*
 * Item parameter data, loaded from itemtool/itemdata/item_data.narc
 */
typedef struct ItemData
{
    u16 price;
    u8 holdEffect;
    u8 holdEffectParam;
    u8 pluckEffect;
    u8 flingEffect;
    u8 flingPower;
    u8 naturalGiftPower;
    u16 naturalGiftType:5;
    u16 prevent_toss:1;
    u16 selectable:1;
    u16 fieldPocket:4;
    u16 battlePocket:5;
    u8 fieldUseFunc;
    u8 battleUseFunc;
    u8 partyUse;
    u8 padding_0D;
    union {
        u8 dummy;
        ITEMPARTYPARAM partyUseParam;
    };
    u8 padding_22[2];
} ITEMDATA;

typedef void *(*FieldApplicationWorkCtor)(FieldSystem *fieldSystem);

struct ItemCheckUseData {
    u32 mapId;
    int playerState;
    u16 haveFollower:1;
    u16 haveRocketCostume:1;
    u16 facingTile;
    u16 standingTile;
    FIELD_PLAYER_AVATAR *playerAvatar;
    FieldSystem *fieldSystem;
};

struct ItemFieldUseData {
    FieldSystem *fieldSystem;      // 00
    struct ItemCheckUseData dat;   // 04
    FieldApplicationWorkCtor ctor; // 1C
    void *work;                    // 20
    u16 itemId;                    // 24
    u8 state;                      // 26
    u8 no_app;                     // 27
};

struct ItemMenuUseData {
    TaskManager *taskManager;
    u16 itemId;
    u8 unk6;
};

struct BagViewAppWork {
    int unk_0000;
    u8 filler_0004[0x22];
    u16 state; // 26
    u8 filler_0028[0x32C];
    TaskFunc atexit_TaskFunc; // 354
    u8 filler_0358[0x18];
    u32 unk_0370[4];
    void *atexit_TaskEnv; // 380
    void *unk_0384;
};

typedef void (*ItemMenuUseFunc)(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
typedef BOOL (*ItemFieldUseFunc)(struct ItemFieldUseData *data);
typedef u32 (*ItemCheckUseFunc)(const struct ItemCheckUseData *data);

struct ItemUseFuncDat {
    ItemMenuUseFunc menu;
    ItemFieldUseFunc field;
    ItemCheckUseFunc check;
};

enum
{
    ITEM_GET_DATA = 0, // アイテムデータ
    ITEM_GET_ICON_CGX, // アイコンキャラ
    ITEM_GET_ICON_PAL, // アイコンパレット
    ITEM_GET_AGB_NUM   // AGBのアイテム番号
};

enum
{
    ITEM_PARAM_PRICE,
    ITEM_PARAM_HOLD_EFFECT,
    ITEM_PARAM_ATTACK,
    ITEM_PARAM_EVENT, // ?
    ITEM_PARAM_CNV, // ?
    ITEM_PARAM_POCKET,
    ITEM_PARAM_FIELD,
    ITEM_PARAM_BATTLE,
    ITEM_PARAM_PLUCK_EFFECT,
    ITEM_PARAM_FLING_EFFECT,
    ITEM_PARAM_FLING_POWER,
    ITEM_PARAM_NATURAL_POWER_POWER,
    ITEM_PARAM_NATURAL_POWER_TYPE,
    ITEM_PARAM_BATTLE_POCKET,
    ITEM_PARAM_ITEM_TYPE,
    ITEM_PARAM_SLEEP_RECOVERY,
    ITEM_PARAM_POISON_RECOVERY,
    ITEM_PARAM_BURN_RECOVERY,
    ITEM_PARAM_FREEZE_RECOVERY,
    ITEM_PARAM_PARALYZE_RECOVERY,
    ITEM_PARAM_PANIC_RECOVERY,
    ITEM_PARAM_ATTRACT_RECOVERY,
    ITEM_PARAM_ABILITY_GUARD,
    ITEM_PARAM_DEATH_RECOVERY,
    ITEM_PARAM_ALL_DEATH_RECOVERY, // sacred ash
    ITEM_PARAM_LEVEL_UP,
    ITEM_PARAM_EVOLUTION,
    ITEM_PARAM_ATTACK_UP,
    ITEM_PARAM_DEFENSE_UP,
    ITEM_PARAM_SP_ATTACK_UP,
    ITEM_PARAM_SP_DEFENCE_UP,
    ITEM_PARAM_SPEED_UP,
    ITEM_PARAM_ACCURACY_UP,
    ITEM_PARAM_CRITICAL_UP,
    ITEM_PARAM_PP_UP,
    ITEM_PARAM_PP_MAX,
    ITEM_PARAM_PP_RECOVERY,
    ITEM_PARAM_ALL_PP_RECOVERY,
    ITEM_PARAM_HP_RECOVERY,
    ITEM_PARAM_HP_EVS,
    ITEM_PARAM_ATTACK_EVS,
    ITEM_PARAM_DEFENSE_EVS,
    ITEM_PARAM_SPEED_EVS,
    ITEM_PARAM_SP_ATTACK_EVS,
    ITEM_PARAM_SP_DEFENSE_EVS,
    ITEM_PARAM_FRIENDSHIP_1,
    ITEM_PARAM_FRIENDSHIP_2,
    ITEM_PARAM_FRIENDSHIP_3,
    ITEM_PARAM_HP_EVS_POINT,
    ITEM_PARAM_ATTACK_EVS_POINT,
    ITEM_PARAM_DEFENSE_EVS_POINT,
    ITEM_PARAM_SPEED_EVS_POINT,
    ITEM_PARAM_SP_ATTACK_EVS_POINT,
    ITEM_PARAM_SP_DEFENCE_EVS_POINT,
    ITEM_PARAM_HP_RECOVERY_POINT,
    ITEM_PARAM_PP_RECOVERY_POINT,
    ITEM_PARAM_FRIENDSHIP_1_POINT,
    ITEM_PARAM_FRIENDSHIP_2_POINT,
    ITEM_PARAM_FRIENDSHIP_3_POINT,
};

struct ITEMDATA_INDEX
{
    u16 arc_data;
    u16 arc_cgx;
    u16 arc_pal;
    u16 agb_id;
};

extern struct ITEMDATA_INDEX ItemDataIndex[];

#define ITEM_DUMMY_ID (0)
#define ITEM_RETURN_ID (0xffff)

#define ITEM_WORK_TYPE_CAN_USED_IN_PARTY 1

void LONG_CALL SetUpItemScript(void *iuwk, const void *icwk, u32 scr_id);

/**
 *  @brief grab item data field from the narc subfiles
 *
 *  @param item item index to grab data for
 *  @param param ITEM_PARAM_* constant to query for from the item data
 *  @param heap_id heap id used to allocate the item data file before clearing it
 *  @return queried data corresponding to param
 */
u32 LONG_CALL GetItemData(u16 item, u32 param, u32 heap_id);

/* item use funcs */
BOOL LONG_CALL THUMB_FUNC ItemFieldUseFunc_Generic(struct ItemFieldUseData *data);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_HealingItem(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
u32 LONG_CALL THUMB_FUNC ItemCheckUseFunc_Dummy(const struct ItemCheckUseData *data);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_Bicycle(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
BOOL LONG_CALL THUMB_FUNC ItemFieldUseFunc_Bicycle(struct ItemFieldUseData *data);
u32 LONG_CALL THUMB_FUNC ItemCheckUseFunc_Bicycle(const struct ItemCheckUseData *data);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_TMHM(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_Mail(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_Berry(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
u32 LONG_CALL THUMB_FUNC ItemCheckUseFunc_Berry(const struct ItemCheckUseData *data);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_PalPad(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
BOOL LONG_CALL THUMB_FUNC ItemFieldUseFunc_PalPad(struct ItemFieldUseData *data);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_Honey(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_OldRod(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
BOOL LONG_CALL THUMB_FUNC ItemFieldUseFunc_OldRod(struct ItemFieldUseData *data);
u32 LONG_CALL THUMB_FUNC ItemCheckUseFunc_FishingRod(const struct ItemCheckUseData *data);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_GoodRod(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
BOOL LONG_CALL THUMB_FUNC ItemFieldUseFunc_GoodRod(struct ItemFieldUseData *data);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_SuperRod(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
BOOL LONG_CALL THUMB_FUNC ItemFieldUseFunc_SuperRod(struct ItemFieldUseData *data);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_EvoStone(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_EscapeRope(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
u32 LONG_CALL THUMB_FUNC ItemCheckUseFunc_EscapeRope(const struct ItemCheckUseData *data);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_ApricornBox(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
BOOL LONG_CALL THUMB_FUNC ItemFieldUseFunc_ApricornBox(struct ItemFieldUseData *data);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_BerryPots(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
BOOL LONG_CALL THUMB_FUNC ItemFieldUseFunc_BerryPots(struct ItemFieldUseData *data);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_UnownReport(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
BOOL LONG_CALL THUMB_FUNC ItemFieldUseFunc_UnownReport(struct ItemFieldUseData *data);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_DowsingMchn(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
BOOL LONG_CALL THUMB_FUNC ItemFieldUseFunc_DowsingMchn(struct ItemFieldUseData *data);
BOOL LONG_CALL THUMB_FUNC ItemFieldUseFunc_GbSounds(struct ItemFieldUseData *data);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_Gracidea(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
BOOL LONG_CALL THUMB_FUNC ItemFieldUseFunc_Gracidea(struct ItemFieldUseData *data);
void LONG_CALL THUMB_FUNC ItemMenuUseFunc_VSRecorder(struct ItemMenuUseData *data, const struct ItemCheckUseData *dat2);
BOOL LONG_CALL THUMB_FUNC ItemFieldUseFunc_VSRecorder(struct ItemFieldUseData *data);
void *LONG_CALL sub_0203FAE8(FieldSystem *fsys, u32 heapId, u32 itemId);
void LONG_CALL sub_0203C8F0(struct BagViewAppWork *env, u32 task); // task is a func ptr
void LONG_CALL RegisteredItem_CreateGoToAppTask(struct ItemFieldUseData *data, FieldApplicationWorkCtor ctorTask, BOOL something);


// defined in item.c
/**
 *  @brief allocate memory on the heap and dump the item data narc to it, making an item data table
 *
 *  @param heapID heap id used to allocate the item data table to
 *  @return item data table allocated on the heap
 */
void *LONG_CALL ItemDataTableLoad(int heapID);

#endif //POKEDIAMOND_ITEM_H
