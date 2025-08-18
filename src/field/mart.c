#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/save.h"
#include "../../include/script.h"
#include "../../include/types.h"
#include "../../include/constants/item.h"

#ifdef MART_EXPANSION

struct MartItem {
    u16 item_id;
    u16 override_cost;
};

struct BadgeMartItems {
    u16 item_id;
    u8 required_badges;
};

// note: limited to 203 items (~34 pages)
const struct BadgeMartItems sBadgeMart[] = {
    { ITEM_POKE_BALL,      0 },
    { ITEM_GREAT_BALL,     3 },
    { ITEM_ULTRA_BALL,     5 },
    { ITEM_POTION,         0 },
    { ITEM_SUPER_POTION,   1 },
    { ITEM_HYPER_POTION,   5 },
    { ITEM_MAX_POTION,     7 },
    { ITEM_FULL_RESTORE,   8 },
    { ITEM_REVIVE,         3 },
    { ITEM_ANTIDOTE,       0 },
    { ITEM_PARALYZE_HEAL,  0 },
    { ITEM_AWAKENING,      1 },
    { ITEM_BURN_HEAL,      1 },
    { ITEM_ICE_HEAL,       1 },
    { ITEM_FULL_HEAL,      5 },
    { ITEM_ESCAPE_ROPE,    1 },
    { ITEM_REPEL,          1 },
    { ITEM_SUPER_REPEL,    3 },
    { ITEM_MAX_REPEL,      5 },
};

void LONG_CALL InitMartUI(void *taskManager, FieldSystem *fieldSystem, const u16 *items, int kind, int buySell, int decoWhich, struct MartItem *priceOverrides);

u16 sCherrygroveCityMart[] = {
    ITEM_AIR_MAIL, ITEM_HEAL_BALL, 0xFFFF
};

u16 sVioletCityMart[] = {
    ITEM_TUNNEL_MAIL, ITEM_HEAL_BALL, ITEM_NET_BALL, 0xFFFF
};

u16 sAzaleaCityMart[] = {
    ITEM_BLOOM_MAIL, ITEM_HEAL_BALL, ITEM_NET_BALL, 0xFFFF
};

u16 sGoldenrodDepartmentUpper2F[] = {
    ITEM_POTION, ITEM_SUPER_POTION, ITEM_HYPER_POTION, ITEM_MAX_POTION, ITEM_REVIVE,
    ITEM_ANTIDOTE, ITEM_PARALYZE_HEAL, ITEM_BURN_HEAL, ITEM_ICE_HEAL, ITEM_AWAKENING,
    ITEM_FULL_HEAL, 0xFFFF
};

u16 sGoldenrodDepartmentLower2F[] = {
    ITEM_POKE_BALL, ITEM_GREAT_BALL, ITEM_ULTRA_BALL, ITEM_ESCAPE_ROPE, ITEM_POKE_DOLL,
    ITEM_REPEL, ITEM_SUPER_REPEL, ITEM_MAX_REPEL, ITEM_GRASS_MAIL, ITEM_FLAME_MAIL,
    ITEM_BUBBLE_MAIL, ITEM_SPACE_MAIL, 0xFFFF
};

u16 sGoldenrodDepartment3F[] = {
    ITEM_X_SPEED, ITEM_X_ATTACK, ITEM_X_DEFENSE, ITEM_GUARD_SPEC, ITEM_DIRE_HIT,
    ITEM_X_ACCURACY, ITEM_X_SPECIAL, ITEM_X_SP_DEF, 0xFFFF
};

u16 sGoldenrodDepartment4F[] = {
    ITEM_PROTEIN, ITEM_IRON, ITEM_CALCIUM, ITEM_ZINC, ITEM_CARBOS,
    ITEM_HP_UP, 0xFFFF
};

u16 sGoldenrodDepartment5F[] = {
    ITEM_TM70, ITEM_TM17, ITEM_TM54, ITEM_TM83, ITEM_TM16,
    ITEM_TM33, ITEM_TM22, ITEM_TM52, ITEM_TM38, ITEM_TM25,
    ITEM_TM14, ITEM_TM15, 0xFFFF
};

u16 sGoldenrodHerbs[] = {
    ITEM_HEAL_POWDER, ITEM_ENERGY_POWDER, ITEM_ENERGY_ROOT, ITEM_REVIVAL_HERB, 0xFFFF
};

u16 sEcruteakMart[] = {
    ITEM_HEART_MAIL, ITEM_HEAL_BALL, ITEM_NET_BALL, 0xFFFF
};

u16 sOlivineMart[] = {
    ITEM_HEART_MAIL, ITEM_HEAL_BALL, ITEM_NET_BALL, 0xFFFF
};

u16 sCianwoodPharmacy[] = {
    ITEM_POTION, ITEM_SUPER_POTION, ITEM_HYPER_POTION, ITEM_FULL_HEAL, ITEM_REVIVE,
    0xFFFF
};

u16 sBlackthornAndBattleFrontierMart[] = {
    ITEM_AIR_MAIL, ITEM_NET_BALL, ITEM_DUSK_BALL, 0xFFFF
};

u16 sIndigoPlateau[] = {
    ITEM_ULTRA_BALL, ITEM_MAX_REPEL, ITEM_HYPER_POTION, ITEM_MAX_POTION, ITEM_FULL_RESTORE,
    ITEM_REVIVE, ITEM_FULL_HEAL, 0xFFFF
};

u16 sVermilionAndSafariMart[] = {
    ITEM_AIR_MAIL, ITEM_NEST_BALL, ITEM_DUSK_BALL, ITEM_QUICK_BALL, 0xFFFF
};

u16 sSaffronMart[] = {
    ITEM_AIR_MAIL, ITEM_DUSK_BALL, ITEM_QUICK_BALL, 0xFFFF
};

u16 sLavenderMart[] = {
    ITEM_AIR_MAIL, ITEM_DUSK_BALL, ITEM_QUICK_BALL, 0xFFFF
};

u16 sCeruleanMart[] = {
    ITEM_AIR_MAIL, ITEM_QUICK_BALL, 0xFFFF
};

u16 sCeladonDepartmentUpper2F[] = {
    ITEM_POTION, ITEM_SUPER_POTION, ITEM_HYPER_POTION, ITEM_MAX_POTION, ITEM_REVIVE,
    ITEM_ANTIDOTE, ITEM_PARALYZE_HEAL, ITEM_BURN_HEAL, ITEM_ICE_HEAL, ITEM_AWAKENING,
    ITEM_FULL_HEAL, 0xFFFF
};

u16 sCeladonDepartmentLower2F[] = {
    ITEM_POKE_BALL, ITEM_GREAT_BALL, ITEM_ULTRA_BALL, ITEM_ESCAPE_ROPE, ITEM_POKE_DOLL,
    ITEM_REPEL, ITEM_SUPER_REPEL, ITEM_MAX_REPEL, ITEM_GRASS_MAIL, ITEM_FLAME_MAIL,
    ITEM_BUBBLE_MAIL, ITEM_SPACE_MAIL, 0xFFFF
};

u16 sCeladonDepartment3F[] = {
    ITEM_TM21, ITEM_TM27, ITEM_TM87, ITEM_TM78, ITEM_TM12,
    ITEM_TM41, ITEM_TM20, ITEM_TM28, ITEM_TM76, ITEM_TM55,
    ITEM_TM72, ITEM_TM79, 0xFFFF
};

u16 sCeladonDepartment4F[] = {
    ITEM_AIR_MAIL, ITEM_TUNNEL_MAIL, ITEM_BLOOM_MAIL, 0xFFFF
};

u16 sCeladonDepartmentLeft5F[] = {
    ITEM_X_SPEED, ITEM_X_ATTACK, ITEM_X_DEFENSE, ITEM_GUARD_SPEC, ITEM_DIRE_HIT,
    ITEM_X_ACCURACY, ITEM_X_SPECIAL, ITEM_X_SP_DEF, 0xFFFF
};

u16 sCeladonDepartmentRight5F[] = {
    ITEM_PROTEIN, ITEM_IRON, ITEM_CALCIUM, ITEM_ZINC, ITEM_CARBOS,
    ITEM_HP_UP, 0xFFFF
};

u16 sFuschiaMart[] = {
    ITEM_STEEL_MAIL, ITEM_DUSK_BALL, ITEM_QUICK_BALL, 0xFFFF
};

u16 sPewterMart[] = {
    ITEM_STEEL_MAIL, ITEM_NEST_BALL, ITEM_QUICK_BALL, 0xFFFF
};

u16 sViridianMart[] = {
    ITEM_STEEL_MAIL, ITEM_NET_BALL, ITEM_HEAL_BALL, 0xFFFF
};

u16 sMtMoonSquare[] = {
    ITEM_POKE_DOLL, ITEM_FRESH_WATER, ITEM_SODA_POP, ITEM_LEMONADE, ITEM_REPEL,
    ITEM_HEART_MAIL, 0xFFFF
};

u16 sMahoganyPreRocketHideout[] = {
    ITEM_TINY_MUSHROOM, ITEM_POKE_BALL, ITEM_POTION, 0xFFFF
};

u16 sMahoganyPostRocketHideout[] = {
    ITEM_GREAT_BALL, ITEM_SUPER_POTION, ITEM_HYPER_POTION, ITEM_ANTIDOTE, ITEM_PARALYZE_HEAL,
    ITEM_SUPER_REPEL, ITEM_REVIVE, ITEM_AIR_MAIL, 0xFFFF
};

BOOL ScrCmd_MartBuy(SCRIPTCONTEXT *ctx) {
    u16 items[NELEMS(sBadgeMart)];
    u8 badgeCount = 0;
    u8 index = 0;

    for (int i = 0; i < 16; i++) {
        if (PlayerProfile_TestBadgeFlag(Sav2_PlayerData_GetProfileAddr(ctx->fsys->savedata), i) == TRUE) {
            badgeCount++;
        }
    }

    for (int i = 0; i < NELEMS(sBadgeMart); i++) {
        if (badgeCount >= sBadgeMart[i].required_badges) {
            items[index] = sBadgeMart[i].item_id;
            index++;
        }
    }

    items[index] = 0xFFFF;
    InitMartUI(ctx->taskman, ctx->fsys, items, 0, 0, 0, 0); // this doesn't honor price overrides
    return TRUE;
}

#endif // MART_EXPANSION

#ifdef POKEATHLON_SHOP_EXPANSION

const struct MartItem sPokeathlonShopSunday[] = {
    { ITEM_RED_APRICORN,   200  },
    { ITEM_BLUE_APRICORN,  200  },
    { ITEM_BLACK_APRICORN, 200  },
    { ITEM_MOOMOO_MILK,    100  },
    { ITEM_KINGS_ROCK,     3000 },
    { ITEM_HEART_SCALE,    1000 },
    { ITEM_FULL_RESTORE,   500  },
    { ITEM_NUGGET,         500  },
    { ITEM_SUN_STONE,      3000 },
    { ITEM_FIRE_STONE,     2500 },
    { ITEM_SHINY_STONE,    3000 },
    { ITEM_DAWN_STONE,     3000 },
    { 0xFFFF,              0    },
};

const struct MartItem sPokeathlonShopMonday[] = {
    { ITEM_RED_APRICORN,   200  },
    { ITEM_BLUE_APRICORN,  200  },
    { ITEM_GREEN_APRICORN, 200  },
    { ITEM_MOOMOO_MILK,    100  },
    { ITEM_MOON_STONE,     3000 },
    { ITEM_RARE_CANDY,     2000 },
    { ITEM_FULL_RESTORE,   500  },
    { ITEM_KINGS_ROCK,     3000 },
    { ITEM_SUN_STONE,      3000 },
    { ITEM_WATER_STONE,    2500 },
    { ITEM_SHINY_STONE,    3000 },
    { ITEM_DUSK_STONE,     3000 },
    { 0xFFFF,              0    },
};

const struct MartItem sPokeathlonShopTuesday[] = {
    { ITEM_YELLOW_APRICORN, 200  },
    { ITEM_PINK_APRICORN,   200  },
    { ITEM_WHITE_APRICORN,  200  },
    { ITEM_MOOMOO_MILK,     100  },
    { ITEM_FIRE_STONE,      2500 },
    { ITEM_PP_UP,           1000 },
    { ITEM_FULL_RESTORE,    500  },
    { ITEM_METAL_COAT,      2500 },
    { ITEM_WATER_STONE,     2500 },
    { ITEM_LEAF_STONE,      2500 },
    { ITEM_DUSK_STONE,      3000 },
    { ITEM_DAWN_STONE,      3000 },
    { 0xFFFF,               0    },
};

const struct MartItem sPokeathlonShopWednesday[] = {
    { ITEM_BLUE_APRICORN,  200  },
    { ITEM_PINK_APRICORN,  200  },
    { ITEM_BLACK_APRICORN, 200  },
    { ITEM_MOOMOO_MILK,    100  },
    { ITEM_WATER_STONE,    2500 },
    { ITEM_HEART_SCALE,    1000 },
    { ITEM_FULL_RESTORE,   500  },
    { ITEM_DRAGON_SCALE,   2500 },
    { ITEM_THUNDER_STONE,  2500 },
    { ITEM_MOON_STONE,     3000 },
    { ITEM_SHINY_STONE,    3000 },
    { ITEM_DAWN_STONE,     3000 },
    { 0xFFFF,              0    },
};

const struct MartItem sPokeathlonShopThursday[] = {
    { ITEM_YELLOW_APRICORN, 200  },
    { ITEM_PINK_APRICORN,   200  },
    { ITEM_WHITE_APRICORN,  200  },
    { ITEM_MOOMOO_MILK,     100  },
    { ITEM_THUNDER_STONE,   2500 },
    { ITEM_PP_UP,           1000 },
    { ITEM_FULL_RESTORE,    500  },
    { ITEM_KINGS_ROCK,      3000 },
    { ITEM_FIRE_STONE,      2500 },
    { ITEM_LEAF_STONE,      2500 },
    { ITEM_SHINY_STONE,     3000 },
    { ITEM_DUSK_STONE,      3000 },
    { 0xFFFF,               0    },
};

const struct MartItem sPokeathlonShopFriday[] = {
    { ITEM_RED_APRICORN,    200  },
    { ITEM_YELLOW_APRICORN, 200  },
    { ITEM_GREEN_APRICORN,  200  },
    { ITEM_MOOMOO_MILK,     100  },
    { ITEM_METAL_COAT,      2500 },
    { ITEM_NUGGET,          500  },
    { ITEM_FULL_RESTORE,    500  },
    { ITEM_DRAGON_SCALE,    2500 },
    { ITEM_WATER_STONE,     2500 },
    { ITEM_SUN_STONE,       3000 },
    { ITEM_DUSK_STONE,      3000 },
    { ITEM_DAWN_STONE,      3000 },
    { 0xFFFF,               0    },
};

const struct MartItem sPokeathlonShopSaturday[] = {
    { ITEM_GREEN_APRICORN,  200  },
    { ITEM_WHITE_APRICORN,  200  },
    { ITEM_BLACK_APRICORN,  200  },
    { ITEM_MOOMOO_MILK,     100  },
    { ITEM_LEAF_STONE,      2500 },
    { ITEM_RARE_CANDY,      2000 },
    { ITEM_FULL_RESTORE,    500  },
    { ITEM_METAL_COAT,      2500 },
    { ITEM_THUNDER_STONE,   2500 },
    { ITEM_SHINY_STONE,     3000 },
    { ITEM_DUSK_STONE,      3000 },
    { ITEM_DAWN_STONE,      3000 },
    { 0xFFFF,               0    },
};

#endif // POKEATHLON_SHOP_EXPANSION