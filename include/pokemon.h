#ifndef POKEMON_H
#define POKEMON_H

#include "config.h"
//#include "save.h"
#include "types.h"
#include "trainer_data.h"

#define _PARTY_MENU_WINDOW_ID_MAX 40
#define _PARTY_MENU_SPRITE_ID_MAX 29

#define POKEMON_GENDER_MALE 0
#define POKEMON_GENDER_FEMALE 1
#define POKEMON_GENDER_UNKNOWN 2

#define MONS_MALE       (0)
#define MONS_FEMALE     (254)
#define MONS_UNKNOWN    (255)

// MON_DATA_RESERVED_113 (2 bits) fields
#define DUMMY_P2_1_HIDDEN_ABILITY_MASK (0x01)
#define DUMMY_P2_1_HAS_HIT_NECESSARY_CRITICAL_HITS (0x02)

// MON_DATA_RESERVED_114 (16 bits) fields
#define DUMMY_P2_2_CHANGE_ABILITY_SLOT (0x0001)
#define DUMMY_P2_2_NATURE_OVERRIDE (0x003E)
#define DUMMY_P2_2_HP_IV_OVERRIDE (0x0040)
#define DUMMY_P2_2_ATTACK_IV_OVERRIDE (0x0080)
#define DUMMY_P2_2_DEFENSE_IV_OVERRIDE (0x0100)
#define DUMMY_P2_2_SPEED_IV_OVERRIDE (0x0200)
#define DUMMY_P2_2_SP_ATTACK_IV_OVERRIDE (0x0400)
#define DUMMY_P2_2_SP_DEFENSE_IV_OVERRIDE (0x0800)

// MON_DATA_UNK_121  (8 bits) fields


#define SET_MON_HIDDEN_ABILITY_BIT(mon) { \
    u8 tempvarassumeunused = GetMonData(mon, MON_DATA_RESERVED_113, 0); \
    tempvarassumeunused |= DUMMY_P2_1_HIDDEN_ABILITY_MASK; \
    SetMonData(mon, MON_DATA_RESERVED_113, (u8 *)&tempvarassumeunused); \
}
#define SET_BOX_MON_HIDDEN_ABILITY_BIT(boxmon) { \
    u8 tempvarassumeunused = GetBoxMonData(boxmon, MON_DATA_RESERVED_113, 0); \
    tempvarassumeunused |= DUMMY_P2_1_HIDDEN_ABILITY_MASK; \
    SetBoxMonData(boxmon, MON_DATA_RESERVED_113, (u8 *)&tempvarassumeunused); \
}
#define TOGGLE_MON_HIDDEN_ABILITY_BIT(mon) { \
    u8 tempvarassumeunused = GetMonData(mon, MON_DATA_RESERVED_113, 0); \
    tempvarassumeunused ^= DUMMY_P2_1_HIDDEN_ABILITY_MASK; \
    SetMonData(mon, MON_DATA_RESERVED_113, (u8 *)&tempvarassumeunused); \
}
#define GET_MON_HIDDEN_ABILITY_BIT(mon) (GetMonData(mon, MON_DATA_RESERVED_113, 0) & DUMMY_P2_1_HIDDEN_ABILITY_MASK)
#define GET_BOX_MON_HIDDEN_ABILITY_BIT(mon) (GetBoxMonData(mon, MON_DATA_RESERVED_113, 0) & DUMMY_P2_1_HIDDEN_ABILITY_MASK)


#define SET_MON_CRITICAL_HIT_EVOLUTION_BIT(mon) { \
    u8 tempvarassumeunused = GetMonData(mon, MON_DATA_RESERVED_113, 0); \
    tempvarassumeunused |= DUMMY_P2_1_HAS_HIT_NECESSARY_CRITICAL_HITS; \
    SetMonData(mon, MON_DATA_RESERVED_113, (u8 *)&tempvarassumeunused); \
}
#define SET_BOX_MON_CRITICAL_HIT_EVOLUTION_BIT(boxmon) { \
    u8 tempvarassumeunused = GetBoxMonData(boxmon, MON_DATA_RESERVED_113, 0); \
    tempvarassumeunused |= DUMMY_P2_1_HAS_HIT_NECESSARY_CRITICAL_HITS; \
    SetBoxMonData(boxmon, MON_DATA_RESERVED_113, (u8 *)&tempvarassumeunused); \
}
#define GET_MON_CRITICAL_HIT_EVOLUTION_BIT(mon) (GetMonData(mon, MON_DATA_RESERVED_113, 0) & DUMMY_P2_1_HAS_HIT_NECESSARY_CRITICAL_HITS)


#define SET_MON_SWAP_ABILITY_SLOT_BIT(mon) { \
    u16 tempvarassumeunused = GetMonData(mon, MON_DATA_RESERVED_114, 0); \
    tempvarassumeunused |= DUMMY_P2_2_CHANGE_ABILITY_SLOT; \
    SetMonData(mon, MON_DATA_RESERVED_114, (u8 *)&tempvarassumeunused); \
}
#define SET_BOX_MON_SWAP_ABILITY_SLOT_BIT(boxmon) { \
    u16 tempvarassumeunused = GetBoxMonData(boxmon, MON_DATA_RESERVED_114, 0); \
    tempvarassumeunused |= DUMMY_P2_2_CHANGE_ABILITY_SLOT; \
    SetBoxMonData(boxmon, MON_DATA_RESERVED_114, (u8 *)&tempvarassumeunused); \
}
#define TOGGLE_MON_SWAP_ABILITY_SLOT_BIT(mon) { \
    u16 tempvarassumeunused = GetMonData(mon, MON_DATA_RESERVED_114, 0); \
    tempvarassumeunused ^= DUMMY_P2_2_CHANGE_ABILITY_SLOT; \
    SetMonData(mon, MON_DATA_RESERVED_114, (u8 *)&tempvarassumeunused); \
}
#define GET_MON_SWAP_ABILITY_SLOT_BIT(mon) (GetMonData(mon, MON_DATA_RESERVED_114, 0) & DUMMY_P2_2_CHANGE_ABILITY_SLOT)
#define GET_BOX_MON_SWAP_ABILITY_SLOT_BIT(boxmon) (GetBoxMonData(boxmon, MON_DATA_RESERVED_114, 0) & DUMMY_P2_2_CHANGE_ABILITY_SLOT)


#define SET_MON_NATURE_OVERRIDE(mon, nature) { \
    u16 tempvarassumeunused = GetMonData(mon, MON_DATA_RESERVED_114, 0); \
    tempvarassumeunused &= ~DUMMY_P2_2_NATURE_OVERRIDE; \
    tempvarassumeunused |= ((nature+1) << 1) & DUMMY_P2_2_NATURE_OVERRIDE; \
    SetMonData(mon, MON_DATA_RESERVED_114, (u8 *)&tempvarassumeunused); \
}
#define SET_BOX_MON_NATURE_OVERRIDE(boxmon, nature) { \
    u16 tempvarassumeunused = GetBoxMonData(boxmon, MON_DATA_RESERVED_114, 0); \
    tempvarassumeunused &= ~DUMMY_P2_2_NATURE_OVERRIDE; \
    tempvarassumeunused |= ((nature+1) << 1) & DUMMY_P2_2_NATURE_OVERRIDE; \
    SetBoxMonData(boxmon, MON_DATA_RESERVED_114, (u8 *)&tempvarassumeunused); \
}
#define GET_MON_NATURE_OVERRIDE(mon) (((GetMonData(mon, MON_DATA_RESERVED_114, 0) & DUMMY_P2_2_NATURE_OVERRIDE) >> 1) & 0x1F)
#define GET_BOX_MON_NATURE_OVERRIDE(boxmon) (((GetBoxMonData(boxmon, MON_DATA_RESERVED_114, 0) & DUMMY_P2_2_NATURE_OVERRIDE) >> 1) & 0x1F)


// https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-9900134
#define IS_SPECIES_LEGENDARY(species) ((species == SPECIES_MEWTWO) || (species == SPECIES_LUGIA) || (species == SPECIES_HO_OH) \
    || (species == SPECIES_KYOGRE) || (species == SPECIES_GROUDON) || (species == SPECIES_RAYQUAZA) || (species == SPECIES_DIALGA) \
    || (species == SPECIES_PALKIA) || (species == SPECIES_GIRATINA) || (species == SPECIES_RESHIRAM) || (species == SPECIES_ZEKROM) \
    || (species == SPECIES_KYUREM) || (species == SPECIES_XERNEAS) || (species == SPECIES_YVELTAL) || (species == SPECIES_ZYGARDE) \
    || (species == SPECIES_COSMOG) || (species == SPECIES_COSMOEM) || (species == SPECIES_SOLGALEO) || (species == SPECIES_LUNALA) \
    || (species == SPECIES_NECROZMA) || (species == SPECIES_ZACIAN) || (species == SPECIES_ZAMAZENTA) || (species == SPECIES_ETERNATUS) \
    || (species == SPECIES_CALYREX) || (species == SPECIES_KORAIDON) || (species == SPECIES_MIRAIDON) || (species == SPECIES_TERAPAGOS))

#define IS_SPECIES_MYTHICAL(species) ((species == SPECIES_MEW) || (species == SPECIES_CELEBI) || (species == SPECIES_JIRACHI) \
    || (species == SPECIES_DEOXYS) || (species == SPECIES_PHIONE) || (species == SPECIES_MANAPHY) || (species == SPECIES_DARKRAI) \
    || (species == SPECIES_SHAYMIN) || (species == SPECIES_ARCEUS) || (species == SPECIES_VICTINI) || (species == SPECIES_KELDEO) \
    || (species == SPECIES_MELOETTA) || (species == SPECIES_GENESECT) || (species == SPECIES_DIANCIE) || (species == SPECIES_HOOPA) \
    || (species == SPECIES_VOLCANION) || (species == SPECIES_SHIINOTIC) /* || (species == SPECIES_MARSHADOW) */ || (species == SPECIES_MAGEARNA) \
    || (species == SPECIES_ZERAORA) || (species == SPECIES_MELTAN) || (species == SPECIES_MELMETAL) || (species == SPECIES_ZARUDE) \
    || (species == SPECIES_PECHARUNT))

#define IS_SPECIES_SUBLEGEND(species) ((species == SPECIES_ARTICUNO) || (species == SPECIES_ZAPDOS) || (species == SPECIES_MOLTRES) \
    || (species == SPECIES_RAIKOU) || (species == SPECIES_ENTEI) || (species == SPECIES_SUICUNE) || (species == SPECIES_REGIROCK) \
    || (species == SPECIES_REGICE) || (species == SPECIES_REGISTEEL) || (species == SPECIES_LATIAS) || (species == SPECIES_LATIOS) \
    || (species == SPECIES_UXIE) || (species == SPECIES_MESPRIT) || (species == SPECIES_AZELF) || (species == SPECIES_HEATRAN) \
    || (species == SPECIES_REGIGIGAS) || (species == SPECIES_CRESSELIA) || (species == SPECIES_COBALION) || (species == SPECIES_TERRAKION) \
    || (species == SPECIES_VIRIZION) || (species == SPECIES_TORNADUS) || (species == SPECIES_THUNDURUS) || (species == SPECIES_LANDORUS) \
    || (species == SPECIES_TYPE_NULL) || (species == SPECIES_SILVALLY) || (species == SPECIES_TAPU_KOKO) || (species == SPECIES_TAPU_LELE) \
    || (species == SPECIES_TAPU_BULU) || (species == SPECIES_TAPU_FINI) || (species == SPECIES_KUBFU) || (species == SPECIES_URSHIFU) \
    || (species == SPECIES_REGIELEKI) || (species == SPECIES_REGIDRAGO) || (species == SPECIES_GLASTRIER) || (species == SPECIES_SPECTRIER) \
    || (species == SPECIES_ENAMORUS) || (species == SPECIES_TING_LU) || (species == SPECIES_CHIEN_PAO) || (species == SPECIES_WO_CHIEN) \
    || (species == SPECIES_CHI_YU) || (species == SPECIES_OGERPON) || (species == SPECIES_OKIDOGI) || (species == SPECIES_MUNKIDORI) \
    || (species == SPECIES_FEZANDIPITI))

#define IS_SPECIES_ULTRA_BEAST(species) ((species >= SPECIES_NIHILEGO && species <= SPECIES_BLACEPHALON))

#define IS_SPECIES_PARADOX_FORM(species) ((species >= SPECIES_GREAT_TUSK && species <= SPECIES_IRON_THORNS) || (species == SPECIES_ROARING_MOON) || (species == SPECIES_IRON_VALIANT) || (species == SPECIES_WALKING_WAKE) \
    || (species == SPECIES_IRON_LEAVES) /*|| (species >= SPECIES_GOUGING_FIRE && species <= SPECIES_IRON_CROWN)*/)


// personal narc fields
enum
{
    PERSONAL_BASE_HP = 0,
    PERSONAL_BASE_ATTACK,
    PERSONAL_BASE_DEFENSE,
    PERSONAL_BASE_SPEED,
    PERSONAL_BASE_SP_ATTACK,
    PERSONAL_BASE_SP_DEFENSE,
    PERSONAL_TYPE_1,
    PERSONAL_TYPE_2,
    PERSONAL_CATCH_RATE,
    PERSONAL_EXP_YIELD,
    PERSONAL_EV_YIELD_HP,
    PERSONAL_EV_YIELD_ATTACK,
    PERSONAL_EV_YIELD_DEFENSE,
    PERSONAL_EV_YIELD_SPEED,
    PERSONAL_EV_YIELD_SP_ATTACK,
    PERSONAL_EV_YIELD_SP_DEFENSE,
    PERSONAL_ITEM_1,
    PERSONAL_ITEM_2,
    PERSONAL_GENDER_RATIO,
    PERSONAL_EGG_CYCLES,
    PERSONAL_BASE_FRIENDSHIP,
    PERSONAL_EXP_GROUP,
    PERSONAL_EGG_GROUP_1,
    PERSONAL_EGG_GROUP_2,
    PERSONAL_ABILITY_1,
    PERSONAL_ABILITY_2,
    PERSONAL_RUN_CHANCE,
    PERSONAL_BODY_COLOR,
    PERSONAL_FLIP,
    PERSONAL_TM_ARRAY_1,
    PERSONAL_TM_ARRAY_2,
    PERSONAL_TM_ARRAY_3,
    PERSONAL_TM_ARRAY_4,
};

#define MAX_IVS (31)

#define RND_NO_SET  (0)
#define RND_SET (1)

#define ID_NO_SET   (0)
#define ID_SET  (1)
#define ID_NO_SHINY (2)
#define NO_MOVES_SET    (0xffff)
#define SAME_MOVES_SET  (0xfffe)

typedef struct SEAL {
    u8 kind;           // ID of the seal
    u8 x;              // X coordinate on the capsule
    u8 y;              // Y coordinate on the capsule
} SEAL;

/*
 * Capsule that you put on your ball
 */
typedef struct CAPSULE {
    SEAL seals[8];  // The seals on the capsule
} CAPSULE;

typedef struct {
    /* 0x00 */ u16 species;
    /* 0x02 */ u16 heldItem;
    /* 0x04 */ u32 otID; // low 16: visible; high 16: secret
    /* 0x08 */ u32 exp;
    /* 0x0C */ u8 friendship;
    /* 0x0D */ u8 ability;
    /* 0x0E */ u8 markings; // circle, triangle, square, heart, star, diamond
    /* 0x0F */ u8 originLanguage;
    /* 0x10 */ u8 hpEV;
    /* 0x11 */ u8 atkEV;
    /* 0x12 */ u8 defEV;
    /* 0x13 */ u8 spdEV;
    /* 0x14 */ u8 spatkEV;
    /* 0x15 */ u8 spdefEV;
    /* 0x16 */ u8 coolStat;
    /* 0x17 */ u8 beautyStat;
    /* 0x18 */ u8 cuteStat;
    /* 0x19 */ u8 smartStat;
    /* 0x1A */ u8 toughStat;
    /* 0x1B */ u8 sheen;
    // TODO: Finish SinnohRibbonSet1
    /* 0x1C */ u32 sinnohRibbons;
//    u8 sinnohChampRibbon:1, abilityRibbon:1;
//    u8 field_0x1d;
//    u8 gorgeousRoyalRibbon:1, footprintRibbon:1;
//    u8 field_0x1f;
} PokemonDataBlockA;

typedef struct {
    /* 0x00 */ u16 moves[4];
    /* 0x08 */ u8 movePP[4];
    /* 0x0C */ u8 movePpUps[4];
    /* 0x10 */ u32 hpIV:5, atkIV:5, defIV:5, spdIV:5, spatkIV:5, spdefIV:5, isEgg:1, isNicknamed:1;
    // TODO: Finish HoennRibbonSet
    /* 0x14 */ u32 ribbonFlags; // cool, ...
    /* 0x18 */ u8 fatefulEncounter:1, gender:2, alternateForm:5;
    /* 0x19 */ u8 HGSS_shinyLeaves:6;
    /* 0x19 */ u8 unk_19_6:2;
    /* 0x1A */ u16 Unused;
    /* 0x1C */ u16 Platinum_EggLocation;
    /* 0x1E */ u16 Platinum_MetLocation;
} PokemonDataBlockB;

typedef struct {
    /* 0x00 */ u16 nickname[11];
    /* 0x16 */ u8 Unused;
    /* 0x17 */ u8 originGame;
    // TODO: Finish SinnohRibbonSet2
    /* 0x18 */ u64 sinnohRibbons2; // cool, ...
} PokemonDataBlockC;

typedef struct {
    /* 0x00 */ u16 otTrainerName[8];
    /* 0x10 */ u8 dateEggReceived[3];
    /* 0x13 */ u8 dateMet[3];
    /* 0x16 */ u16 DP_EggLocation;
    /* 0x18 */ u16 DP_MetLocation;
    /* 0x1A */ u8 pokerus;
    /* 0x1B */ u8 pokeball;
    /* 0x1C */ u8 metLevel:7;
    u8 metGender:1;
    /* 0x1D */ u8 encounterType;
    /* 0x1E */ u8 HGSS_Pokeball;
    /* 0x1F */ s8 mood;
} PokemonDataBlockD;

typedef union {
    PokemonDataBlockA blockA;
    PokemonDataBlockB blockB;
    PokemonDataBlockC blockC;
    PokemonDataBlockD blockD;
} PokemonDataBlock;

struct BoxPokemon {
    /* 0x000 */ u32 pid;
    /* 0x004 */ u16 party_lock:1;
                u16 box_lock:1;
                u16 checksum_fail:1;
                u16 Unused:13;    // Might be used for validity checks
    /* 0x006 */ u16 checksum;  // Stored checksum of pokemon
    /* 0x008 */ PokemonDataBlock substructs[4];
};

union MailPatternData
{
    u16 raw;
    struct {
        u16 icon:12;
        u16 pal:4;
    };
};

#define MAILMSG_BANK_NONE           (0xFFFF)
#define MAILMSG_FIELDS_MAX          (2)

typedef struct MailMessage {
    u16 msg_bank;
    u16 msg_no;
    u16 fields[MAILMSG_FIELDS_MAX];
} MAIL_MESSAGE;

typedef struct Mail
{
    u32 author_otId;
    u8 author_gender;
    u8 author_language;
    u8 author_version;
    u8 mail_type;
    u16 author_name[7 + 1];
    union MailPatternData mon_icons[3];
    u16 forme_flags; // bitfield of three 5-bit values
    MAIL_MESSAGE unk_20[3];
} MAIL;

typedef struct PartyOnlyPokemon {
    /* 0x088 */ u32 status; // slp:3, psn:1, brn:1, frz:1, prz:1, tox:1, ...
    /* 0x08C */ u8 level;
    /* 0x08D */ u8 capsule;
    /* 0x08E */ u16 hp;
    /* 0x090 */ u16 maxHp;
    /* 0x092 */ u16 atk;
    /* 0x094 */ u16 def;
    /* 0x096 */ u16 speed;
    /* 0x098 */ u16 spatk;
    /* 0x09A */ u16 spdef;
    /* 0x09C */ MAIL mail;
    /* 0x0D4 */ CAPSULE sealCoords; // seal coords
} PARTYONLYMON;

struct PartyPokemon {
    /* 0x000 */ struct BoxPokemon box;
    /* 0x088 */ PARTYONLYMON party;
}; // size: 0xEC

struct Party
{
    s32 maxPossibleCount;
    s32 count;
    struct PartyPokemon members[6];
};

enum
{
    MON_DATA_PERSONALITY = 0,
    MON_DATA_PARTY_LOCK,
    MON_DATA_BOX_LOCK,
    MON_DATA_CHECKSUM_FAILED,
    MON_DATA_CHECKSUM,
    MON_DATA_SPECIES,
    MON_DATA_HELD_ITEM,
    MON_DATA_OTID,
    MON_DATA_EXPERIENCE,
    MON_DATA_FRIENDSHIP,
    MON_DATA_ABILITY,
    MON_DATA_MARKINGS,
    MON_DATA_GAME_LANGUAGE,
    MON_DATA_HP_EV,
    MON_DATA_ATK_EV,
    MON_DATA_DEF_EV,
    MON_DATA_SPEED_EV,
    MON_DATA_SPATK_EV,
    MON_DATA_SPDEF_EV,
    MON_DATA_COOL,
    MON_DATA_BEAUTY,
    MON_DATA_CUTE,
    MON_DATA_SMART,
    MON_DATA_TOUGH,
    MON_DATA_SHEEN,
    MON_DATA_SINNOH_CHAMP_RIBBON,
    MON_DATA_ABILITY_RIBBON,
    MON_DATA_GREAT_ABILITY_RIBBON,
    MON_DATA_DOUBLE_ABILITY_RIBBON,
    MON_DATA_MULTI_ABILITY_RIBBON,
    MON_DATA_PAIR_ABILITY_RIBBON,
    MON_DATA_WORLD_ABILITY_RIBBON,
    MON_DATA_ALERT_RIBBON,
    MON_DATA_SHOCK_RIBBON,
    MON_DATA_DOWNCAST_RIBBON,
    MON_DATA_CARELESS_RIBBON,
    MON_DATA_RELAX_RIBBON,
    MON_DATA_SNOOZE_RIBBON,
    MON_DATA_SMILE_RIBBON,
    MON_DATA_GORGEOUS_RIBBON,
    MON_DATA_ROYAL_RIBBON,
    MON_DATA_GORGEOUS_ROYAL_RIBBON,
    MON_DATA_FOOTPRINT_RIBBON,
    MON_DATA_RECORD_RIBBON,
    MON_DATA_HISTORY_RIBBON,
    MON_DATA_LEGEND_RIBBON,
    MON_DATA_RED_RIBBON,
    MON_DATA_GREEN_RIBBON,
    MON_DATA_BLUE_RIBBON,
    MON_DATA_FESTIVAL_RIBBON,
    MON_DATA_CARNIVAL_RIBBON,
    MON_DATA_CLASSIC_RIBBON,
    MON_DATA_PREMIER_RIBBON,
    MON_DATA_SINNOH_RIBBON_53,
    MON_DATA_MOVE1,
    MON_DATA_MOVE2,
    MON_DATA_MOVE3,
    MON_DATA_MOVE4,
    MON_DATA_MOVE1PP,
    MON_DATA_MOVE2PP,
    MON_DATA_MOVE3PP,
    MON_DATA_MOVE4PP,
    MON_DATA_MOVE1PPUP,
    MON_DATA_MOVE2PPUP,
    MON_DATA_MOVE3PPUP,
    MON_DATA_MOVE4PPUP,
    MON_DATA_MOVE1MAXPP,
    MON_DATA_MOVE2MAXPP,
    MON_DATA_MOVE3MAXPP,
    MON_DATA_MOVE4MAXPP,
    MON_DATA_HP_IV,
    MON_DATA_ATK_IV,
    MON_DATA_DEF_IV,
    MON_DATA_SPEED_IV,
    MON_DATA_SPATK_IV,
    MON_DATA_SPDEF_IV,
    MON_DATA_IS_EGG,
    MON_DATA_HAS_NICKNAME,
    MON_DATA_HOENN_COOL_RIBBON,
    MON_DATA_HOENN_COOL_RIBBON_SUPER,
    MON_DATA_HOENN_COOL_RIBBON_HYPER,
    MON_DATA_HOENN_COOL_RIBBON_MASTER,
    MON_DATA_HOENN_BEAUTY_RIBBON,
    MON_DATA_HOENN_BEAUTY_RIBBON_SUPER,
    MON_DATA_HOENN_BEAUTY_RIBBON_HYPER,
    MON_DATA_HOENN_BEAUTY_RIBBON_MASTER,
    MON_DATA_HOENN_CUTE_RIBBON,
    MON_DATA_HOENN_CUTE_RIBBON_SUPER,
    MON_DATA_HOENN_CUTE_RIBBON_HYPER,
    MON_DATA_HOENN_CUTE_RIBBON_MASTER,
    MON_DATA_HOENN_SMART_RIBBON,
    MON_DATA_HOENN_SMART_RIBBON_SUPER,
    MON_DATA_HOENN_SMART_RIBBON_HYPER,
    MON_DATA_HOENN_SMART_RIBBON_MASTER,
    MON_DATA_HOENN_TOUGH_RIBBON,
    MON_DATA_HOENN_TOUGH_RIBBON_SUPER,
    MON_DATA_HOENN_TOUGH_RIBBON_HYPER,
    MON_DATA_HOENN_TOUGH_RIBBON_MASTER,
    MON_DATA_HOENN_CHAMPION_RIBBON,
    MON_DATA_HOENN_WINNING_RIBBON,
    MON_DATA_HOENN_VICTORY_RIBBON,
    MON_DATA_HOENN_ARTIST_RIBBON,
    MON_DATA_HOENN_EFFORT_RIBBON,
    MON_DATA_HOENN_MARINE_RIBBON,
    MON_DATA_HOENN_LAND_RIBBON,
    MON_DATA_HOENN_SKY_RIBBON,
    MON_DATA_HOENN_COUNTRY_RIBBON,
    MON_DATA_HOENN_NATIONAL_RIBBON,
    MON_DATA_HOENN_EARTH_RIBBON,
    MON_DATA_HOENN_WORLD_RIBBON,
    MON_DATA_FATEFUL_ENCOUNTER,
    MON_DATA_GENDER,
    MON_DATA_FORM,
    MON_DATA_RESERVED_113,
    MON_DATA_RESERVED_114,
    MON_DATA_HGSS_EGG_MET_LOCATION,
    MON_DATA_HGSS_MET_LOCATION,
    MON_DATA_NICKNAME,
    MON_DATA_NICKNAME_2,
    MON_DATA_NICKNAME_3,
    MON_DATA_NICKNAME_4,
    MON_DATA_UNK_121,
    MON_DATA_GAME_VERSION,
    MON_DATA_COOL_RIBBON,
    MON_DATA_COOL_RIBBON_GREAT,
    MON_DATA_COOL_RIBBON_ULTRA,
    MON_DATA_COOL_RIBBON_MASTER,
    MON_DATA_BEAUTY_RIBBON,
    MON_DATA_BEAUTY_RIBBON_GREAT,
    MON_DATA_BEAUTY_RIBBON_ULTRA,
    MON_DATA_BEAUTY_RIBBON_MASTER,
    MON_DATA_CUTE_RIBBON,
    MON_DATA_CUTE_RIBBON_GREAT,
    MON_DATA_CUTE_RIBBON_ULTRA,
    MON_DATA_CUTE_RIBBON_MASTER,
    MON_DATA_SMART_RIBBON,
    MON_DATA_SMART_RIBBON_GREAT,
    MON_DATA_SMART_RIBBON_ULTRA,
    MON_DATA_SMART_RIBBON_MASTER,
    MON_DATA_TOUGH_RIBBON,
    MON_DATA_TOUGH_RIBBON_GREAT,
    MON_DATA_TOUGH_RIBBON_ULTRA,
    MON_DATA_TOUGH_RIBBON_MASTER,
    MON_DATA_SINNOH_RIBBON_143,
    MON_DATA_OT_NAME,
    MON_DATA_OT_NAME_2,
    MON_DATA_EGG_MET_YEAR,
    MON_DATA_EGG_MET_MONTH,
    MON_DATA_EGG_MET_DAY,
    MON_DATA_MET_YEAR,
    MON_DATA_MET_MONTH,
    MON_DATA_MET_DAY,
    MON_DATA_EGG_MET_LOCATION,
    MON_DATA_MET_LOCATION,
    MON_DATA_POKERUS,
    MON_DATA_POKEBALL,
    MON_DATA_MET_LEVEL,
    MON_DATA_MET_GENDER,
    MON_DATA_ENCOUNTER_TYPE,
    MON_DATA_RESERVED_159,
    MON_DATA_STATUS,
    MON_DATA_LEVEL,
    MON_DATA_CAPSULE,
    MON_DATA_HP,
    MON_DATA_MAXHP,
    MON_DATA_ATTACK,
    MON_DATA_DEFENSE,
    MON_DATA_SPEED,
    MON_DATA_SPECIAL_ATTACK,
    MON_DATA_SPECIAL_DEFENSE,
    MON_DATA_MAIL_STRUCT,
    MON_DATA_SEAL_COORDS,
    MON_DATA_SPECIES_EXISTS,
    MON_DATA_SANITY_IS_EGG,
    MON_DATA_SPECIES_OR_EGG,
    MON_DATA_IVS_WORD,
    MON_DATA_UNK_176,
    MON_DATA_TYPE_1,
    MON_DATA_TYPE_2,
    MON_DATA_SPECIES_NAME,
    MON_DATA_DP_POKEBALL,
    MON_DATA_SHINY_LEAF_A,
    MON_DATA_SHINY_LEAF_B,
    MON_DATA_SHINY_LEAF_C,
    MON_DATA_SHINY_LEAF_D,
    MON_DATA_SHINY_LEAF_E,
    MON_DATA_SHINY_LEAF_CROWN,
    MON_DATA_MOOD,
    MON_DATA_END
};

struct OVERWORLD_TAG
{
    u16 tag;
    u16 gfx; // index in a081
    u16 callback_params;
};


// frick new formes
struct PLIST_DATA
{
    /* 0x00 */ struct Party *pp;
    /* 0x04 */ void *myitem;
    /* 0x08 */ void *mailblock;
    /* 0x0C */ void *cfg;
    /* 0x10 */ void *tvwk;
    /* 0x14 */ void *reg;
    /* 0x18 */ void *scwk;
    /* 0x1C */ void *fsys;
               void *padsmth;
    /* 0x20+4 */ u8 mode;
    /* 0x21+4 */ u8 type;
    /* 0x22+4 */ u8 ret_sel;
    /* 0x23+4 */ u8 ret_mode;
    /* 0x24+4 */ u16 item; // this is actually 0x28
    /* 0x26+4 */ u16 move;
    /* 0x28+4 */ u8 movepos;
    /* 0x29+4 */ u8 con_mode;
    /* 0x2A+4 */ u8 con_type;
    /* 0x2B+4 */ u8 con_rank;
    /* 0x2C+4 */ u8 in_num[6];
    /* 0x32+4 */ u8 in_min:4;
                 u8 in_max:4;
    /* 0x33+4 */ u8 in_lv;
    /* 0x34+4 */ s32 lv_cnt;
    /* 0x38+4 */ u16 after_mons;
    /* 0x3C+4 */ s32 shinka_cond;
};

struct Window
{
    void* /* BgConfig **/ bgConfig;
    u8 bgId;
    u8 tilemapLeft;
    u8 tilemapTop;
    u8 width;
    u8 height;
    u8 paletteNum;
    u16 baseTile  : 15;
    u16 colorMode : 1;
    void *pixelBuffer;
}; //size 0x10


struct PLIST_WORK
{
    /* 0x0 */ void* /* BgConfig **/ bgConfig;
    /* 0x4 */ struct Window windows[_PARTY_MENU_WINDOW_ID_MAX];
    /* 0x284 */ struct Window levelUpStatsWindow[1];       // 0x284
    /* 0x294 */ struct Window contextMenuButtonWindows[8]; // 0x294
    /* 0x314 */ u8 padding_x0[0x654-0x314];
    /* 0x654 */ struct PLIST_DATA *dat;
    /* 0x658 */ void* /*SpriteRenderer **/ spriteRenderer;
    /* 0x65C */ void* /*SpriteGfxHandler **/ spriteGfxHandler;
    /* 0x660 */ void* /*Sprite **/ sprites[_PARTY_MENU_SPRITE_ID_MAX]; // 0x660
    /* 0x6D4 */ u8 padding_x6D4[0xC65-0x660-0x74];
    u8 pos;
};


struct SAVE_MISC_DATA;


// defines from pokeheartgold + new ones
typedef enum EvoMethod
{
    EVO_NONE = 0,
    EVO_FRIENDSHIP,
    EVO_FRIENDSHIP_DAY,
    EVO_FRIENDSHIP_NIGHT,
    EVO_LEVEL,
    EVO_TRADE,
    EVO_TRADE_ITEM,
    EVO_STONE,
    EVO_LEVEL_ATK_GT_DEF,
    EVO_LEVEL_ATK_EQ_DEF,
    EVO_LEVEL_ATK_LT_DEF,
    EVO_LEVEL_PID_LO,
    EVO_LEVEL_PID_HI,
    EVO_LEVEL_NINJASK,
    EVO_LEVEL_SHEDINJA,
    EVO_BEAUTY,
    EVO_STONE_MALE,
    EVO_STONE_FEMALE,
    EVO_ITEM_DAY,
    EVO_ITEM_NIGHT,
    EVO_HAS_MOVE,
    EVO_OTHER_PARTY_MON,
    EVO_LEVEL_MALE,
    EVO_LEVEL_FEMALE,
    EVO_CORONET,
    EVO_ETERNA,
    EVO_ROUTE217,
    EVO_LEVEL_DAY,
    EVO_LEVEL_NIGHT,
    EVO_LEVEL_DUSK,
    EVO_LEVEL_RAIN,
    EVO_HAS_MOVE_TYPE,
    EVO_LEVEL_DARK_TYPE_MON_IN_PARTY,
    EVO_TRADE_SPECIFIC_MON,
    EVO_LEVEL_NATURE_AMPED,
    EVO_LEVEL_NATURE_LOW_KEY,
    EVO_AMOUNT_OF_CRITICAL_HITS,
    EVO_HURT_IN_BATTLE_AMOUNT,
    //EVO_DARK_SCROLL,  // implemented through a forme-change-esque cut scene
    //EVO_WATER_SCROLL, // implemented through a forme-change-esque cut scene
} EvoMethod;

typedef enum {
    EVOCTX_LEVELUP,
    EVOCTX_TRADE,
    EVOCTX_ITEM_CHECK,
    EVOCTX_ITEM_USE,
} EvolveContext;

struct Evolution {
    u16 method;
    u16 param;
    u16 target;
};

typedef struct
{
    u16 arc_no;
    u16 index_chr;
    u16 index_pal;
    u16 strike_mons;
    u8 form_no;
    u8 dummy[3];
    u32 personal_rnd;
} MON_PIC;

#define NEEDS_REVERSION 0x8000

typedef struct EncounterInfo
{
    u32 trainerID;
    BOOL unk4;
    BOOL unk8;
    u8 level;
    u8 isEgg;
    u8 ability;
    u8 unkE[2];
    u8 unk11;
} EncounterInfo; // size = 0x12


// Daycare structures
typedef struct DaycareMail {
    struct Mail mail;
    u16 ot_name[7 + 1];
    u16 nickname[10 + 1];
    u8 padding_5E[2];
} DaycareMail;

typedef struct DaycareMon {
    struct BoxPokemon mon;
    DaycareMail mail;
    u32 steps;
} DaycareMon;

typedef struct Daycare {
    DaycareMon mons[2];
    u32 egg_pid;
    u8 egg_cycles;
    u8 padding_1DD[3];
} Daycare;


// BattleMove fields for GetMoveData below
enum
{
    MOVE_DATA_EFFECT,
    MOVE_DATA_PSS_SPLIT,
    MOVE_DATA_BASE_POWER,
    MOVE_DATA_TYPE,
    MOVE_DATA_ACCURACY,
    MOVE_DATA_BASE_PP,
    MOVE_DATA_SECONDARY_EFFECT_CHANCE,
    MOVE_DATA_TARGET,
    MOVE_DATA_PRIORITY,
    MOVE_DATA_FLAGS,
    MOVE_DATA_UNK,
};


// natures
#define NATURE_HARDY    (0)
#define NATURE_LONELY   (1)
#define NATURE_BRAVE    (2)
#define NATURE_ADAMANT  (3)
#define NATURE_NAUGHTY  (4)
#define NATURE_BOLD     (5)
#define NATURE_DOCILE   (6)
#define NATURE_RELAXED  (7)
#define NATURE_IMPISH   (8)
#define NATURE_LAX      (9)
#define NATURE_TIMID   (10)
#define NATURE_HASTY   (11)
#define NATURE_SERIOUS (12)
#define NATURE_JOLLY   (13)
#define NATURE_NAIVE   (14)
#define NATURE_MODEST  (15)
#define NATURE_MILD    (16)
#define NATURE_QUIET   (17)
#define NATURE_BASHFUL (18)
#define NATURE_RASH    (19)
#define NATURE_CALM    (20)
#define NATURE_GENTLE  (21)
#define NATURE_SASSY   (22)
#define NATURE_CAREFUL (23)
#define NATURE_QUIRKY  (24)


#define MAX_EVOS_PER_POKE (9)


#define gDimorphismTable ((u8 *)(0x020FECAE))
#define EGG_MOVES_PER_MON 16 // need to go through later and make this editable
#define NUM_EGG_MOVES_TOTAL 8000


/**Trainer Data File Bitfield**/
#define TRAINER_DATA_TYPE_NOTHING 0x00
#define TRAINER_DATA_TYPE_MOVES 0x01
#define TRAINER_DATA_TYPE_ITEMS 0x02
#define TRAINER_DATA_TYPE_ABILITY 0x04
#define TRAINER_DATA_TYPE_BALL 0x08
#define TRAINER_DATA_TYPE_IV_EV_SET 0x10
#define TRAINER_DATA_TYPE_NATURE_SET 0x20
#define TRAINER_DATA_TYPE_SHINY_LOCK 0x40
#define TRAINER_DATA_TYPE_ADDITIONAL_FLAGS 0x80 //whether or not to read extra flags in trpoke entry


/**Trainer Pokemon File Extra Bitfield**/
#define TRAINER_DATA_EXTRA_TYPE_NOTHING 0x00
#define TRAINER_DATA_EXTRA_TYPE_STATUS 0x01
#define TRAINER_DATA_EXTRA_TYPE_HP 0x02
#define TRAINER_DATA_EXTRA_TYPE_ATK 0x04
#define TRAINER_DATA_EXTRA_TYPE_DEF 0x08
#define TRAINER_DATA_EXTRA_TYPE_SPEED 0x10
#define TRAINER_DATA_EXTRA_TYPE_SP_ATK 0x20
#define TRAINER_DATA_EXTRA_TYPE_SP_DEF 0x40
#define TRAINER_DATA_EXTRA_TYPE_TYPES 0x80
#define TRAINER_DATA_EXTRA_TYPE_PP_COUNTS 0x100
#define TRAINER_DATA_EXTRA_TYPE_NICKNAME 0x200

// kinda weird, specifically tracked in the RAM
typedef struct WildEncounterWork
{
    u16 species:11;
    u16 form:5;
    u16 padding;
    u16 maxLevel;
    u16 minLevel;
} WildEncounterWork;


/**
 *  @brief allocate enough space for a PartyPokemon and zero it out
 *
 *  @param heapid heap to allocate the PartyPokemon on
 *  @return pointer to zero'd PartyPokemon
 */
struct PartyPokemon *LONG_CALL AllocMonZeroed(u32 heapid);

/**
 *  @brief zero out a PartyPokemon
 *
 *  @param pokemon PartyPokemon to 0 out
 */
void LONG_CALL ZeroMonData(struct PartyPokemon *pokemon);

/**
 *  @brief initialize PartyPokemon with specified parameters
 *
 *  @param pp PartyPokemon to initialize
 *  @param species species index
 *  @param level level to set
 *  @param ivs iv's to set to.  random if > 31
 *  @param chr nature?
 */
void LONG_CALL PokeParaSetChr(struct PartyPokemon *pp, u16 species, u8 level, u8 ivs, u8 chr);

/**
 *  @brief initialize PartyPokemon with specified parameters
 *
 *  @param pp PartyPokemon to initialize
 *  @param mons_no species index
 *  @param level level to set
 *  @param ivs iv's to set to.  random if > 31
 *  @param rndflag if TRUE set pid to rnd
 *  @param rnd if rndflag is TRUE, personality id
 *  @param idflag if TRUE set ot id to id
 *  @param id if idflag is TRUE, ot id
 */
void LONG_CALL PokeParaSet(struct PartyPokemon *pp, int mons_no, int level, int ivs, int rndflag, u32 rnd, int idflag, u32 id);

/**
 *  @brief set PartyPokemon as seen in the pokédex
 *
 *  @param zw pokédex save structure, i.e. SaveData_GetDexPtr(SaveBlock2_get())
 *  @param pp PartyPokemon whose species to register as seen
 */
void LONG_CALL SetPokemonSee(void *zw, struct PartyPokemon *pp);

/**
 *  @brief set PartyPokemon as caught in the pokédex
 *
 *  @param zw pokédex save structure, i.e. SaveData_GetDexPtr(SaveBlock2_get())
 *  @param pp PartyPokemon whose species to register as caught
 */
void LONG_CALL SetPokemonGet(void *zw, struct PartyPokemon *pp);

/**
 *  @brief grab PartyPokemon or BoxPokemon that is currently being viewed in the PC
 *
 *  @param ptr pc work structure
 *  @return BoxPokemon or PartyPokemon that is currently being viewed in the PC
 */
void *LONG_CALL PokeStatusPokeParamGet(void *ptr);

/**
 *  @brief recalculate a PartyPokemon's stats
 *
 *  @param pp PartyPokemon whose stats to recalculate
 */
void LONG_CALL RecalcPartyPokemonStats(struct PartyPokemon *pp);

/**
 *  @brief reset a PartyPokemon's ability
 *
 *  @param pp PartyPokemon whose ability to reset
 */
void LONG_CALL ResetPartyPokemonAbility(void *pp);

/**
 *  @brief initialize PartyPokemon with specified parameters
 *
 *  @param pp PartyPokemon to intialize
 *  @param pokeno species index
 *  @param level level to set to
 *  @param ivs iv's to set to.  random if > 31
 *  @param sex sex to aim for, specifically POKEMON_GENDER_* constant
 *  @param chr nature?
 *  @param unownLetter unown letter to set to
 */
void LONG_CALL PokeParaSetSexChr(struct PartyPokemon *pp, u16 pokeno, u8 level, u8 ivs, u8 sex, u8 chr, u8 unownLetter);

/**
 *  @brief get specific field from an encrypted PartyPokemon
 *
 *  @param mon PartyPokemon to grab data from
 *  @param field MON_DATA_* constant to determine which data to grab
 *  @param buffer NULL or pointer to store return array at
 *  @return requested data; data may be in buffer if an array was requested (i.e. MON_DATA_NICKNAME)
 */
u32 LONG_CALL GetMonData(struct PartyPokemon *mon, int field, void *buffer);

/**
 *  @brief set specific field on an encrypted PartyPokemon
 *
 *  @param mon PartyPokemon to set data on
 *  @param field MON_DATA_* constant to determine which data to set
 *  @param buffer pointer to data to set.  always a pointer, even for simple values
 */
void LONG_CALL SetMonData(struct PartyPokemon *mon, int field, void *buffer);

/**
 *  @brief sanitize the form for species that already have forms in game (set to 0 if invalid)
 *
 *  @param mons_no species index
 *  @param form_no form number
 *  @return corrected form number
 */
u8 LONG_CALL SanitizeFormNumber(u16 mons_no, u8 form_no);

/**
 *  @brief set specific field on an encrypted BoxPokemon
 *
 *  @param boxmon BoxPokemon to grab data from
 *  @param field MON_DATA_* constant to determine which data to grab
 *  @param buffer NULL or pointer to store return array at
 *  @return requested data; data may be in buffer if an array was requested (i.e. MON_DATA_NICKNAME)
 */
u32 LONG_CALL GetBoxMonData(struct BoxPokemon *boxmon, int field, void *buffer);

/**
 *  @brief set specific field on an encrypted BoxPokemon
 *
 *  @param mon BoxPokemon to set data on
 *  @param field MON_DATA_* constant to determine which data to set
 *  @param buffer pointer to data to set.  always a pointer, even for simple values
 */
void  LONG_CALL SetBoxMonData(struct BoxPokemon *boxmon, int id, const void *buf);

/**
 *  @brief grab the pointer to a member in a Party
 *
 *  @param party Party whose member to grab
 *  @param pos position to grab
 *  @return PartyPokemon requested
 */
struct PartyPokemon * LONG_CALL Party_GetMonByIndex(struct Party *party, int pos);

/**
 *  @brief grab personal field accounting for form (for vanilla forms)
 *
 *  @param mons_no base species index
 *  @param form_no form number
 *  @param para PERSONAL_* constant representing data requested
 *  @return requested data from the personal narc
 */
u32 LONG_CALL PokeFormNoPersonalParaGet(int mons_no, int form_no, int para);

/**
 *  @brief get the gender of a BoxPokemon
 *
 *  @param boxmon BoxPokemon whose gender to grab
 *  @return POKEMON_GENDER_* constant representing gender of the BoxPokemon
 */
u8 LONG_CALL GetBoxMonGender(struct BoxPokemon *boxmon);

/**
 *  @brief get the gender of a pokémon given species and pid
 *
 *  @param monsno species index
 *  @param rnd personality id
 *  @return POKEMON_GENDER_* constant
 */
u8 LONG_CALL PokeSexGetMonsNo(u16 monsno, u32 rnd);

/**
 *  @brief reencrypt a BoxPokemon for easy access to fields (undo BoxMonSetFastModeOn)
 *
 *  @see BoxMonSetFastModeOn
 *  @param boxmon BoxPokemon to reencrypt
 *  @param trigger TRUE to set fast mode off; FALSE do nothing
 *  @return TRUE if fast mode was set off; FALSE otherwise
 */
BOOL LONG_CALL BoxMonSetFastModeOff(struct BoxPokemon *boxmon, BOOL trigger);

/**
 *  @brief decrypt a BoxPokemon structure for easy access to fields (fast mode)
 *
 *  @param boxmon BoxPokemon to decrypt
 *  @return TRUE if successfully decrypted BoxPokemon, FALSE otherwise
 */
BOOL LONG_CALL BoxMonSetFastModeOn(struct BoxPokemon *boxmon);

/**
 *  @brief grab a BoxPokemon from a pokémon in the daycare
 *
 *  @param daycare Daycare structure ( i.e. Save_Daycare_Get(SaveBlock2_get()) )
 *  @param idx which daycare BoxPokemon to grab
 *  @return BoxPokemon requested
 */
struct BoxPokemon *LONG_CALL Daycare_GetBoxMonI(Daycare *daycare, int idx);

/**
 *  @brief set a PartyPokemon's personality
 *
 *  @param mon PartyPokemon whose personality to change
 *  @param personal_rnd new pid
 */
void LONG_CALL SetMonPersonality(struct PartyPokemon *mon, u32 personal_rnd);

/**
 *  @brief grab nature from personality
 *
 *  @param personality pid from pokémon
 *  @return nature (i.e. personality % 25)
 */
u8 LONG_CALL GetNatureFromPersonality(u32 personality);

/**
 *  @brief grab nature from PartyPokemon
 *
 *  @param pp PartyPokemon whose nature to grab
 *  @return nature
 */
u8 LONG_CALL GetMonNature(struct PartyPokemon *pp);

/**
 *  @brief intialize a BoxPokemon's moves depending on level and such that are already set
 *
 *  @param boxmon BoxPokemon whose moves to initialize
 */
void LONG_CALL FillInBoxMonLearnset(struct BoxPokemon *boxmon);

/**
 *  @brief get data from personal narc for a species
 *
 *  @param species species index to grab from the narc for
 *  @param parameter PERSONAL_* constant to request for
 *  @return data requested
 */
u32 LONG_CALL PokePersonalParaGet(int species, int parameter);

/**
 *  @brief get the experience required to reach a specific level for a species
 *
 *  @param species species to get experience curve for
 *  @param level level to get the experience for
 *  @return experience required to reach level specified
 */
u32 LONG_CALL PokeLevelExpGet(int species, int level);

/**
 *  @brief intiailize a BoxPokemon structure with zeros
 *
 *  @param BoxPokemon to initialize
 */
void LONG_CALL BoxMonInit(struct BoxPokemon *boxmon);

/**
 *  @brief handle giratina's form change with a BoxPokemon
 *         handles checking if the BoxPokemon is actually giratina and such
 *
 *  @param bp BoxPokemon to check for a form change
 */
void LONG_CALL GiratinaBoxPokemonFormChange(struct BoxPokemon *bp);

/**
 *  @brief check if the gracidea flower can be used on a PartyPokemon
 *
 *  @param pp PartyPokemon to check for gracidea validity
 *  @return TRUE if the gracidea can be used on the PartyPokemon
 */
BOOL LONG_CALL GrashideaFeasibleCheck(struct PartyPokemon *pp);

/**
 *  @brief load in the party overlay
 *
 *  @param wk poke list work
 */
void LONG_CALL PokeList_FormDemoOverlayLoad(struct PLIST_WORK *wk);

/**
 *  @brief add a PartyPokemon to an available slot in the Party
 *
 *  @param party Party to add to
 *  @param poke PartyPokemon to add
 *  @return TRUE if the add was successful; FALSE otherwise
 */
BOOL LONG_CALL PokeParty_Add(struct Party *party, struct PartyPokemon *poke);

/**
 *  @brief delete a PartyPokemon from a Party
 *
 *  @param party Party to delete from
 *  @param pos position in Party to delete
 */
void LONG_CALL PokeParty_Delete(struct Party *party, u32 pos);

/**
 *  @brief task to handle party rendering
 *
 *  @param proc task structure
 *  @param seq step in rendering
 *  @return TRUE if should end?
 */
u32 LONG_CALL PokeListProc_End(void *proc, int *seq);

/**
 *  @brief return the amount of experience required to level up given a PartyPokemon
 *
 *  @param pp PartyPokemon to grab experience for
 *  @return amount of experience required to level up
 */
u32 LONG_CALL PokeParaLevelExpGet(struct PartyPokemon *pp);

/**
 *  @brief check if a PartyPokemon should level up
 *
 *  @param pp PartyPokemon to potentially level up
 *  @return TRUE if the PartyPokemon should level up; FALSE otherwise
 */
u32 LONG_CALL PokeLevelUpCheck(struct PartyPokemon *pp);

/**
 *  @brief check if a Party has a specific species
 *
 *  @param party Party to check through
 *  @param species species index
 *  @return TRUE if the Party contains a PartyPokemon with the requested species; FALSE otherwise
 */
BOOL LONG_CALL PartyHasMon(struct Party *party, u16 species);

/**
 *  @brief check if a PartyPokemon has a move
 *
 *  @param mon PartyPokemon whose moves to check
 *  @param move move to check for
 *  @return TRUE if the PartyPokemon has the move; FALSE otherwise
 */
BOOL LONG_CALL MonHasMove(struct PartyPokemon *mon, u16 move);

/**
 *  @brief see if passed species has sexual dimorphism that would be visible in the overworld
 *
 *  @param species species index
 *  @return TRUE if the species has sexual dimorphism visible in the overworld; FALSE otherwise
 */
BOOL LONG_CALL does_species_have_dimorphism(u32 species);

/**
 *  @brief intialize various values to a PartyPokemon (location caught, caught ball, etc.)
 *
 *  @param pp PartyPokemon to initialize
 *  @param profile save data profile, i.e. Sav2_PlayerData_GetProfileAddr(SaveBlock2_get())
 *  @param item item to register as caught ball?  not held item
 *  @param ball caught ball
 *  @param encounterType encounter type
 *  @param heapId heap to use for memory allocations
 *  @return
 */
BOOL LONG_CALL sub_020720FC(struct PartyPokemon *pp, void *profile, u16 item, u16 ball, u32 encounterType, int heapId);

/**
 *  @brief update pokédex status for the given PartyPokemon's species
 *
 *  @param saveData player save data, i.e. SaveBlock2_get()
 *  @param pokemon PartyPokemon whose species should update the pokédex with
 */
void LONG_CALL UpdatePokedexWithReceivedSpecies(void *saveData, struct PartyPokemon *pokemon);

/**
 *  @brief fill in a BoxPokemon's default moves
 *
 *  @param pokemon BoxPokemon whose initial moves should be filled in
 */
void LONG_CALL InitBoxMonMoveset(struct BoxPokemon *pokemon);

/**
 *  @brief potentially set the held item of a PartyPokemon to one that it has specified in its personal data
 *
 *  @param pokemon PartyPokemon whose held item to set
 *  @param fight_type current battle type
 *  @param item_type 1 if compound eyes is present, 0 otherwise
 */
void LONG_CALL WildMonSetRandomHeldItem(struct PartyPokemon *pokemon, u32 fight_type, u32 item_type);

/**
 *  @brief register unown form as seen in the pokédex
 *
 *  @param encounterInfo encounter information to extract unown from
 *  @return TRUE if was successful; FALSE otherwise
 */
BOOL LONG_CALL GrabAndRegisterUnownForm(EncounterInfo *encounterInfo);

// shiny convenience macro
#define SHINY_VALUE(otid, pid) (((otid & 0xffff0000) >> 16) ^ (otid & 0xffff) ^ ((pid & 0xffff0000) >> 16) ^ (pid & 0xffff))
#define SHINY_CHECK(otid, pid) (SHINY_VALUE(otid, pid) <= SHINY_ODDS)

/**
 *  @brief check if PartyPokemon is shiny
 *
 *  @param pokemon PartyPokemon to check shininess on
 *  @return TRUE if pokemon is shiny; FALSE otherwise
 */
BOOL LONG_CALL MonIsShiny(struct PartyPokemon *pokemon);

/**
 *  @brief check if BoxPokemon is shiny
 *
 *  @param pokemon BoxPokemon to check shininess on
 *  @return TRUE if pokemon is shiny; FALSE otherwise
 */
BOOL LONG_CALL BoxMonIsShiny(struct BoxPokemon *pokemon);

/**
 *  @brief initialize a Party
 *
 *  @param party Party to initialize
 *  @param max amount of members
 */
void LONG_CALL PokeParty_Init(struct Party *party, int max);

/**
 *  @brief grab trainer party data from ARC_TRAINER_PARTY_DATA
 *
 *  @param tr_id trainer id
 *  @param tpd buffer to dump to
 */
void LONG_CALL TT_TrainerPokeDataGet(int tr_id, void *tpd);

/**
 *  @brief grab trainer sex from trainer class read from ARC_TRAINER_DATA
 *
 *  @param trtype trainer class
 *  @return trainer sex; 1 if female, 0 if male
 */
TrainerGender LONG_CALL TT_TrainerTypeSexGet(int trtype);

/**
 *  @brief set ball seal on a trainer PartyPokemon
 *
 *  @param index ball seal to set
 *  @param pp PartyPokemon to set seals on
 *  @param heap memory heap to use
 *  @return
 */
u32 LONG_CALL TrainerCBSet(int index, struct PartyPokemon *pp, int heap);

/**
 *  @brief try and generate a pid that forces a specific gender
 *
 *  @param species species index
 *  @param formnum form number
 *  @param a2 ability slot
 *  @param personality generated personality id
 */
void LONG_CALL try_force_gender_maybe(int species, int formnum, u8 a2, u32 *personality);

/**
 *  @brief set a PartyPokemon's friendship to 0 if it has the move frustration
 *
 *  @param pp PartyPokemon to manipulate
 */
void LONG_CALL TrainerMonHandleFrustration(struct PartyPokemon *pp);

/**
 *  @brief overwrite a PartyPokemon's move with a different one
 *
 *  @param pp PartyPokemon whose moves to mess with
 *  @param movenum move index to overwrite with
 *  @param pos which move position to overwrite
 */
void LONG_CALL SetPartyPokemonMoveAtPos(struct PartyPokemon *pp, u16 movenum, u8 pos);

/**
 *  @brief seed PRNG so that future gf_rand() calls are adjusted
 *
 *  @param seed seed to start the PRNG from moving forward
 */
void LONG_CALL gf_srand(u32 seed);

/**
 *  @brief grab arceus type from held effect
 *
 *  @param held_effect held item effect
 *  @return the type that arceus would be with this held item effect
 */
u8 LONG_CALL GetArceusType(u16 held_effect);

/**
 *  @brief something with eggs
 *
 *  @param mapsectype
 *  @param offset variable value
 *  @return
 */
int LONG_CALL sub_02017FE4(u32 mapsectype, u32);

/**
 *  @brief set egg stats for a PartyPokemon
 *
 *  @param pokemon PartyPokemon to manipulate
 *  @param species species of egg
 *  @param metLocation met location for the egg
 *  @param profile profile in save data, i.e. Sav2_PlayerData_GetProfileAddr(SaveBlock2_get())
 *  @param a4
 *  @param a5
 */
void LONG_CALL SetEggStats(struct PartyPokemon *pokemon, int species, u8 metLocation, void *profile, int a4, int a5);

/**
 *  @brief set togepi egg personality and id in the save
 *         used for the professor elm call when he tells you to stop by with the togepi when it hatches
 *
 *  @param saveMiscData misc save data, i.e. Sav2_Misc_get(SaveBlock2_get())
 */
void LONG_CALL SaveMisc_SetTogepiPersonalityGender(struct SAVE_MISC_DATA * saveMiscData, int personality, u8 gender);

/**
 *  @brief grab hatched togepi pid and gender
 *
 *  @param saveMiscData misc save data, i.e. Sav2_Misc_get(SaveBlock2_get())
 *  @param pid pointer to store saved togepi pid to
 *  @param gender pointer to store saved togepi gender to
 */
void LONG_CALL SaveMisc_GetTogepiPersonalityGender(struct SAVE_MISC_DATA * saveMiscData, int *pid, u8 *gender);

/**
 *  @brief clear a PartyPokemon and carry over certain persistent values
 *
 *  @param pokemon PartyPokemon to use for hatching
 *  @param heapId heap to use for memory allocations
 */
void LONG_CALL sub_0206D038(struct PartyPokemon *pokemon, u32 heapId);

/**
 *  @brief load terminated species name into array
 *
 *  @param species species name to load
 *  @param heap_id heap to use for memory allocations
 *  @param dest destination array to throw the species name into
 */
void LONG_CALL GetSpeciesNameIntoArray(u16 species, u32 heap_id, u16 *dest);

/**
 *  @brief add a PartyPokemon to wild battler team
 *
 *  @param pp uninitialized PartyPokemon to init and add to enemy team
 *  @param rodType rod type (255 if N/A)
 *  @param encInfo
 *  @param encArea
 *  @param encounterType
 *  @param battler battler whose team to add to
 *  @param bw battle work structure
 *  @return TRUE if PartyPokemon was successfully generated and added; FALSE otherwise
 */
u32 LONG_CALL SetEncountData(struct PartyPokemon *pp, u32 rodType, void *encInfo, void *encArea, u32 encounterType, u32 battler, void *bw);

/**
 *  @brief add a PartyPokemon to wild battler team for swarms potentially
 *
 *  @param fsys field system structure
 *  @param pp uninitialized PartyPokemon to init and add to enemy team
 *  @param rodType rod type (255 if N/A)
 *  @param encInfo
 *  @param encounterType
 *  @param battler battler whose team to add to
 *  @param bw battle work structure
 *  @return TRUE if PartyPokemon was successfully generated and added; FALSE otherwise
 */
u32 LONG_CALL SetEncountDataSwarm_maybe(void *fsys, struct PartyPokemon *pp, u32 rodType, void *encInfo, u32 encounterType, u32 battler, void *bw);

/**
 *  @brief initialize a PartyPokemon given a BoxPokemon
 *
 *  @param src BoxPokemon to fill out to a PartyPokemon
 *  @param dest PartyPokemon return
 */
void LONG_CALL CopyBoxPokemonToPokemon(const struct BoxPokemon *src, struct PartyPokemon *dest);

/**
 *  @brief grab experience needed to reach a specific level by growth rate
 *
 *  @param growthrate GROWTH_* constant as defined in personal entry
 *  @param level level asked for
 *  @return experience needed to reach specified level
 */
int LONG_CALL GetExpByGrowthRateAndLevel(int growthrate, u32 level);

/**
 *  @brief restore the pp of a BoxPokemon's moves
 *
 *  @param boxMon BoxPokemon whose move power points to restore
 */
void LONG_CALL RestoreBoxMonPP(struct BoxPokemon *boxMon);

#define LEVEL_UP_LEARNSET_END 0xFFFF
#define LEVEL_UP_LEARNSET_LEVEL_MASK 0xFFFF0000
#define LEVEL_UP_LEARNSET_MOVE_MASK 0xFFFF
#define LEVEL_UP_LEARNSET_LEVEL_SHIFT 16
#define LEVEL_UP_LEARNSET_MOVE(move) (move & LEVEL_UP_LEARNSET_MOVE_MASK)
#define LEVEL_UP_LEARNSET_LEVEL(move) ((move & LEVEL_UP_LEARNSET_LEVEL_MASK) >> LEVEL_UP_LEARNSET_LEVEL_SHIFT)

/**
 *  @brief load the level up learnset to a u32 destination array.  account for form for this one
 *
 *  @param species species to load
 *  @param form form to account for (adjust the species if necessary)
 *  @param levelUpLearnset u32 array to store the level up learnset to
 */
void LONG_CALL LoadLevelUpLearnset_HandleAlternateForm(int species, int form, u32 *levelUpLearnset);

/**
 *  @brief try appending a move to a mon's learnset
 *
 *  @param mon PartyPokemon to try to give a move to
 *  @param move move index to try to give to the mon
 *  @return (u16)-1u if the mon's learnset is full, (u16)-2u if the mon already knows the move, and the move index if the mon had the move successfully added
 */
u32 LONG_CALL TryAppendMonMove(struct PartyPokemon *mon, u16 move);

#define gIconPalTable ((u8 *)(0x023D8000 + START_ADDRESS))

// defined in src/pokemon.c

/**
 *  @brief set up the indices for the new form system pictures.  if necessary, loop through the form table, searching for the new form index to load sprites from
 *         this function does not account for existing forms already covered by otherpoke.narc
 *
 *  @param picdata MON_PIC structure to store values in
 *  @param mons_no species of pokémon
 *  @param dir direction of the pokémon
 *  @param col shininess of the pokémon
 *  @param form_no form number of the pokémon
 *  @return FALSE if there is no need to look through the form table or a matching entry is not found; TRUE otherwise
 */
BOOL LONG_CALL GetOtherFormPic(MON_PIC *picdata, u16 mons_no, u8 dir, u8 col, u8 form_no);

/**
 *  @brief pass species and form to get new species for personal narc, parsing through form table if necessary
 *
 *  @param mons_no base species
 *  @param form_no form number
 *  @return adjusted species for personal narc
 */
int LONG_CALL PokeOtherFormMonsNoGet(int mons_no, int form_no);

/**
 *  @brief pass species and form to get new species
 *
 *  @param mons_no species
 *  @param form_no form number
 *  @return adjusted species given base species and form number
 */
u16 LONG_CALL GetSpeciesBasedOnForm(int mons_no, int form_no);

/**
 *  @brief pass adjusted species and return base species
 *
 *  @param mons_no species that has already been adjusted by form number by GetSpeciesBasedOnForm
 *  @return base species
 */
u16 LONG_CALL GetBaseSpeciesFromAdjustedForm(u32 mons_no);

/**
 *  @brief pass adjusted species and return form of the base species it applies to
 *
 *  @param mons_no species that has already been adjusted by form number by GetSpeciesBasedOnForm
 *  @return form of adjusted species
 */
u16 LONG_CALL GetFormFromAdjustedForm(u32 mons_no);

/**
 *  @brief grab index in ARC_POKEICON from original species, egg status, and form number
 *
 *  @param mons base species index
 *  @param egg TRUE if pokémon is an egg; FALSE otherwise
 *  @param form_no form number
 *  @return icon index in ARC_POKEICON
 */
u32 LONG_CALL PokeIconIndexGetByMonsNumber(u32 mons, u32 egg, u32 form_no);

/**
 *  @brief grab form if necessary for icons from BoxPokemon structure
 *
 *  @param ppp BoxPokemon structure to grab form for icon
 *  @return form if applicable; 0 otherwise
 */
u16 LONG_CALL PokeIconCgxPatternGet(struct BoxPokemon *ppp);

/**
 *  @brief grab index for pal number for the icon that is loaded
 *
 *  @param mons species index
 *  @param form form number
 *  @param isegg TRUE if is egg
 *  @return index for palette number for the icon to load
 */
u32 LONG_CALL PokeIconPalNumGet(u32 mons, u32 form, u32 isegg);

/**
 *  @brief grab mon icon palette number, 0-2
 *
 *  @param mons species index
 *  @param form form number
 *  @param isegg TRUE if pokémon is in an egg
 *  @return palette number 0-2
 */
u32 LONG_CALL GetMonIconPalette(u32 mons, u32 form, u32 isegg);

/**
 *  @brief grab pokémon overworld number
 *
 *  @param species base species
 *  @return pokémon overworld number
 */
u16 LONG_CALL GetPokemonOwNum(u16 species);

/**
 *  @brief grab the hidden ability for a species and form
 *
 *  @param species pokémon species
 *  @param form form number
 *  @return hidden ability of specific pokémon
 */
u16 LONG_CALL GetMonHiddenAbility(u16 species, u32 form);

/**
 *  @brief set a box mon's ability--modified to account for hidden ability flag--should only be used in scripted wild encounters/givepokemon contexts
 *
 *  @param boxmon struct BoxPokemon whose ability to set when being generated
 */
void LONG_CALL SetBoxMonAbility(struct BoxPokemon *boxmon);

/**
 *  @brief get species base experience, modified for form.  base experience is no longer in personal
 *
 *  @param species species index
 *  @param form form number
 *  @return base experience
 */
u32 LONG_CALL GetSpeciesBaseExp(u32 species, u32 form);

//struct OVERWORLD_TAG * LONG_CALL grab_overworld_ptr(u16 tag);

//u16 LONG_CALL get_a081_index_from_tag(u16 tag);

//u32 LONG_CALL grab_overworld_a081_index(u16 species, u32 form, u32 isFemale);

/**
 *  @brief get genesect type from held item
 *
 *  @param item held item
 *  @return type from held item
 */
u32 LONG_CALL GetGenesectType(u16 item);

/**
 *  @brief get genesect form from held item
 *
 *  @param item held item
 *  @return form from held item
 */
u32 LONG_CALL GetGenesectForme(u16 item);

/**
 *  @brief handle form change for arceus and genesect in the box when changing held item
 *
 *  @param bp struct BoxPokemon whose form to update
 */
void LONG_CALL ArceusBoxPokemonFormeChange(struct BoxPokemon *bp);

/**
 *  @brief extension of ArceusBoxPokemonFormeChange to account for giratina as well
 *
 *  @see ArceusBoxPokemonFormeChange
 *  @param bp struct BoxPokemon whose form to update
 *  @return TRUE if form needs updating; FALSE otherwise
 */
BOOL LONG_CALL HandleBoxPokemonFormeChanges(struct BoxPokemon* bp);

/**
 *  @brief check if a reveal glass can be used on a PartyPokemon
 *
 *  @param pp PartyPokemon to check reveal glass against
 *  @return TRUE if reveal glass can be used; FALSE otherwise
 */
BOOL LONG_CALL CanUseRevealGlass(struct PartyPokemon *pp);

/**
 *  @brief check if DNA splicers can be used, return position in party if so
 *
 *  @param pp PartyPokemon to check for
 *  @param party Party to search through for matching DNA splicers pokémon
 *  @return party position of pokémon that can be stored by the DNA splicers or'd with RESHIRAM_MASK if reshiram is the first pokémon found
 */
u32 LONG_CALL CanUseDNASplicersGrabSplicerPos(struct PartyPokemon *pp, struct Party *party);

/**
 *  @brief see if an item changes attributes of the pokémon or not
 *
 *  @param wk work structure
 *  @param dat data structure
 */
u32 LONG_CALL UseItemMonAttrChangeCheck(struct PLIST_WORK *wk, void *dat);

/**
 *  @brief modify PokeListProc_End to increase party size so that when Reshiram/Zekrom are added back from DNA Splicers there are no crashes
 *
 *  @param proc work structure
 *  @param seq step in PokeListProc_End sequence
 */
u32 LONG_CALL PokeListProc_End_Extend(void *proc, int *seq);

/**
 *  @brief change a PartyPokemon to form, recalculating stats and ability
 *
 *  @param pp PartyPokemon whose form to change
 *  @param form form number
 */
void LONG_CALL ChangePartyPokemonToForm(struct PartyPokemon *pp, u32 form);

/**
 *  @brief swap out oldMove with newMove in a PartyPokemon's learnset (if it exists)
 *
 *  @param pp PartyPokemon whose move to swap
 *  @param oldMove move to be replaced
 *  @param newMove move that will be written
 */
void LONG_CALL SwapPartyPokemonMove(struct PartyPokemon *pp, u32 oldMove, u32 newMove);

/**
 *  @brief combine ChangePartyPokemonToForm and SwapPartyPokemonMove
 *
 *  @see ChangePartyPokemonToForm
 *  @see SwapPartyPokemonMove
 */
void LONG_CALL ChangePartyPokemonToFormSwapMove(struct PartyPokemon *pp, u32 form, u32 oldMove, u32 newMove);

/**
 *  @brief grab current season from the RTC settings
 *
 *  @return current season
 */
u32 LONG_CALL GrabCurrentSeason(void);

/**
 *  @brief update passive forms (gender and deerling seasons)
 *
 *  @param pp PartyPokemon whose form to update (if applicable)
 */
void LONG_CALL UpdatePassiveForms(struct PartyPokemon *pp);

/**
 *  @brief run through a party and update all of the deerling forms if present
 *
 *  @param party Party to run through to check for deerling
 */
BOOL LONG_CALL Party_UpdateDeerlingSeasonForm(struct Party *party);

//BOOL LONG_CALL Party_TryResetShaymin(struct Party *party, int min_max, const struct RTCTime *time);

/**
 *  @brief load egg moves to dest and return amount of egg moves
 *
 *  @param pokemon PartyPokemon to grab egg moves for
 *  @param dest destination for the array of egg moves
 *  @return number of egg moves in dest
 */
u8 LONG_CALL LoadEggMoves(struct PartyPokemon *pokemon, u16 *dest);

/**
 *  @brief check if 2 PartyPokemon are essentially the same PartyPokemon beyond duplication/RNG manipulation
 *         checks species, pid, ot id, raw stats, and iv's
 *
 *  @param pokemon1 first PartyPokemon to compare
 *  @param pokemon2 second PartyPokemon to compare
 *  @return TRUE if the PartyPokemon are identical
 */
u32 LONG_CALL CheckIfMonsAreEqual(struct PartyPokemon *pokemon1, struct PartyPokemon *pokemon2);

/**
 *  @brief get the evolution species for a pokemon.  generalized depending on context
 *         also set form depending on the evolution structure read from armips/data/evodata.s
 *
 *  @param party Party to check through for remoraid and such
 *  @param pokemon PartyPokemon to potentially evolve
 *  @param context EVOCTX_* constant deciding which evolution methods to check
 *  @param usedItem item used on the PartyPokemon, if applicable
 *  @param method_ret pointer to an integer to store the evolution method that was used to evolve
 *  @return the target species to evolev into
 */
u16 LONG_CALL GetMonEvolution(struct Party *party, struct PartyPokemon *pokemon, u8 context, u16 usedItem, int *method_ret);

/**
 *  @brief grab the sex given species, pid, and form
 *
 *  @param species species id
 *  @param pid personality id
 *  @param form form number
 *  @return POKEMON_GENDER_* constant describing which gender the pokémon is
 */
u32 LONG_CALL GrabSexFromSpeciesAndForm(u32 species, u32 pid, u32 form);

/**
 *  @brief get the sex of a BoxPokemon
 *
 *  @param bp BoxPokemon whose sex to get
 *  @return sex of passed BoxPokemon as POKEMON_GENDER_* constant
 */
u32 LONG_CALL GetBoxMonSex(struct BoxPokemon *bp);

/**
 *  @brief get the pokémon overworld tag from species, form, and gender
 *
 *  @param species species index
 *  @param form form number
 *  @param isFemale TRUE if female; FALSE otherwise
 *  @return .tag entry in gOWTagToFileNum
 */
u16 LONG_CALL get_mon_ow_tag(u16 species, u32 form, u32 isFemale);

/**
 *  @brief give a PartyPokemon to the player given species, level, form, ability, etc.
 *
 *  @param heapId heap to use for memory here
 *  @param saveData saveData as gotten from SaveBlock2_get()
 *  @param species species index
 *  @param level level of the given PartyPokemon
 *  @param forme form number
 *  @param ability ability index
 *  @param heldItem held item index
 *  @param ball ball id
 *  @param encounterType encounter type
 *  @return TRUE if successful; FALSE otherwise
 */
BOOL LONG_CALL GiveMon(int heapId, void *saveData, int species, int level, int forme, u8 ability, u16 heldItem, int ball, int encounterType);

//BOOL LONG_CALL AddWildPartyPokemon(int inTarget, EncounterInfo *encounterInfo, struct PartyPokemon *encounterPartyPokemon, struct BATTLE_PARAM *encounterBattleParam);

/**
 *  @brief create BoxPokemon given the parameters
 *
 *  @param boxmon BoxPokemon to fill out
 *  @param species species index
 *  @param level level the BoxPokemon should be set at
 *  @param pow iv to set flat across the board; else set randomly
 *  @param rndflag if TRUE, use rnd for the personality id
 *  @param rnd if rndflag is TRUE, personality id
 *  @param idflag if TRUE, use id for original trainer id
 *  @param id if idflag is TRUE, original trainer id
 */
void LONG_CALL CreateBoxMonData(struct BoxPokemon *boxmon, int species, int level, int pow, int rndflag, u32 rnd, int idflag, u32 id);

/**
 *  @brief revert a form change at the end of a battle
 *
 *  @param pp PartyPokemon whose form to potentially revert
 *  @param species species index
 *  @param form_no form number
 *  @return TRUE if form was reverted; FALSE otherwise
 */
bool8 LONG_CALL RevertFormChange(struct PartyPokemon *pp, u16 species, u8 form_no);

/**
 *  @brief clear a PartyPokemon's moves by setting them to zero
 *
 *  @param pokemon PartyPokemon whose moves to clear
 */
void LONG_CALL ClearMonMoves(struct PartyPokemon *pokemon);

/**
 *  @brief get level cap from the script variable defined by LEVEL_CAP_VARIABLE
 *
 *  @return level cap from LEVEL_CAP_VARIABLE script variable
 */
u32 LONG_CALL GetLevelCap(void);

/**
 *  @brief check if the level is at or above the level cap defined in LEVEL_CAP_VARIABLE
 *
 *  @param level level to check
 *  @return TRUE if level >= level cap; FALSE otherwise
 */
u32 LONG_CALL IsLevelAtLevelCap(u32 level);

/**
 *  @brief grab the nature of a BoxPokemon factoring in the nature mint override field
 *
 *  @param boxMon BoxPokemon whose nature to grab
 *  @return nature of the BoxPokemon factoring in nature override
 */
u8 LONG_CALL GetBoxMonNatureCountMints(struct BoxPokemon *boxMon);

/**
 *  @brief perform shiny check given ot id and pid
 *
 *  @param otid original trainer id
 *  @param pid personality id
 *  @returns TRUE if otid and pid show a shiny pokémon; FALSE otherwise
 */
BOOL LONG_CALL CalcShininessByOtIdAndPersonality(u32 otid, u32 pid);

/**
 *  @brief adjust the pid to be shiny such that it keeps substructures in the same order
 *
 *  @param otid original trainer id
 *  @param pid personality id
 *  @returns adjusted pid to be a shiny without corrupting the mon
 */
u32 LONG_CALL GenerateShinyPIDKeepSubstructuresIntact(u32 otId, u32 pid);

// defined in src/moves.c--can't just define in battles, sadly.  does need BattleMove structure from battle.h, though
/**
 *  @brief get move data field requested from ARC_MOVE_DATA
 *
 *  @param id move index
 *  @param field MOVE_DATA_* constant requesting data
 *  @return requested data
 */
u32 LONG_CALL GetMoveData(u16 id, u32 field);

BOOL LONG_CALL Mon_UpdateRotomForm(struct PartyPokemon *mon, int form, int defaultSlot);

void LONG_CALL Mon_UpdateShayminForm(struct PartyPokemon *mon, int form);

void LONG_CALL Daycare_GetBothBoxMonsPtr(Daycare *dayCare, struct BoxPokemon **boxmons);

BOOL LONG_CALL CanUseItemOnPokemon(struct PartyPokemon *mon, u16 itemID, s32 moveIdx, u32 heapID);

void LONG_CALL correct_zacian_zamazenta_kyurem_moves_for_form(struct PartyPokemon *param, unsigned int expected_form, int *a3);

void LONG_CALL ChangeToBattleForm(struct PartyPokemon *pp);

#endif
