#ifndef POKEDIAMOND_ITEM_H
#define POKEDIAMOND_ITEM_H

#include "types.h"

struct ItemTable
{
    u16 price;
    u8 effect;
    u8 damage;

    u8 pluck_effect;
    u8 fling_effect;
    u8 fling_damage;
    u8 naturalgift_power;

    u16	naturalgift_type:5;		// しぜんのめぐみタイプ
    u16	cant_discard:1;
    u16	register_able:1;
    u16	field_pocket:4;
    u16	battle_pocket:5;

    u8	field_function;
    u8	battle_function;
    u8	item_type;

	u8	dmy;				// ダミー

    u8 recovery;

	u8 field_effects;

	u8 exp_up1;

	u8 exp_up2;

	u8 exp_up3;

	u8	recovery_ev_changes;

	u8	happiness;

	u8	prm_hp_exp;				// HP努力値
	u8	prm_pow_exp;			// 攻撃努力値
	u8	prm_def_exp;			// 防御努力値
	u8	prm_agi_exp;			// 素早さ努力値
	u8	prm_spa_exp;			// 特攻努力値
	u8	prm_spd_exp;			// 特防努力値
	u8	prm_hp_rcv;				// HP回復値
	u8	prm_pp_rcv;				// pp回復値
	u8	prm_friend1;			// なつき度1
	u8	prm_friend2;			// なつき度2
	u8	prm_friend3;			// なつき度3

	u8	dummy1;
    u8  dummy2;		// ダミー（余り）
	u8  dummysp[2];

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
    ITEM_PARAM_ALL_DEATH_RECOVERY, // sacred sash
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

#define ITEM_DUMMY_ID (0) // ダミーID
#define ITEM_RETURN_ID (0xffff)

#define ITEMPOCKET_ITEMS 0
#define ITEMPOCKET_MEDICINE 1
#define ITEMPOCKET_POKEBALLS 2
#define ITEMPOCKET_TMHMS 3
#define ITEMPOCKET_BERRIES 4
#define ITEMPOCKET_MAIL 5
#define ITEMPOCKET_BATTLEITEMS 6
#define ITEMPOCKET_KEYITEMS 7

#define ITEMPOCKET_HP_ITEMS 0
#define ITEMPOCKET_POKEBALL 1
#define ITEMPOCKET_MEDICINE1 2
#define ITEMPOCKET_BATTLE 3

#define ITEM_WORK_TYPE_CAN_USED_IN_PARTY 1

void __attribute__((long_call)) SetUpItemScript(void *iuwk, const void *icwk, u32 scr_id);
u32 __attribute__((long_call)) GetItemData(u16 item, u32 param, u32 heap_id);

#endif //POKEDIAMOND_ITEM_H