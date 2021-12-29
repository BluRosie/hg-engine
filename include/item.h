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
    u8 natural_gift;

    u16	natural_gift_type:5;		// しぜんのめぐみタイプ
	u16	imp:1;				// 重要
	u16	cnv_btn:1;			// 便利ボタン
	u16	feild_pocket:4;		// フィールド保存先（ポケット番号）
	u16	battle_pocket:5;		// 戦闘保存先（ポケット番号）

    u8	field_func;			// field機0
	u8	battle_func;		// battle機0
	u8	work_type;			// ワークタイプ

	u8	dmy;				// ダミー

    u8 reciver;

	u8 feild_recive;

	u8 exp_up1;

	u8 exp_up2;

	u8 exp_up3;

	u8	nulizhi;

	u8	friend;

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

#endif //POKEDIAMOND_ITEM_H