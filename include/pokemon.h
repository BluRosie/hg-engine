#ifndef POKEMON_H
#define POKEMON_H

#include "config.h"
//#include "save.h"
#include "types.h"

#define POKEMON_GENDER_MALE 0
#define POKEMON_GENDER_FEMALE 1
#define POKEMON_GENDER_UNKNOWN 2

#define MONS_MALE       (0)
#define MONS_FEMALE     (254)
#define MONS_UNKNOWN    (255)

// MON_DATA_RESERVED_113 fields
#define DUMMY_P2_1_HIDDEN_ABILITY_MASK (0x01)
#define DUMMY_P2_1_HAS_HIT_NECESSARY_CRITICAL_HITS (0x02)


#define SET_MON_HIDDEN_ABILITY_BIT(mon) { \
    u16 tempvarassumeunused = GetMonData(mon, MON_DATA_RESERVED_113, 0); \
    tempvarassumeunused |= DUMMY_P2_1_HIDDEN_ABILITY_MASK; \
    SetMonData(mon, MON_DATA_RESERVED_113, (u8 *)&tempvarassumeunused); \
}
#define SET_BOX_MON_HIDDEN_ABILITY_BIT(boxmon) { \
    u16 tempvarassumeunused = GetBoxMonData(boxmon, MON_DATA_RESERVED_113, 0); \
    tempvarassumeunused |= DUMMY_P2_1_HIDDEN_ABILITY_MASK; \
    BoxMonDataSet(boxmon, MON_DATA_RESERVED_113, (u8 *)&tempvarassumeunused); \
}


#define SET_MON_CRITICAL_HIT_EVOLUTION_BIT(mon) { \
    u16 tempvarassumeunused = GetMonData(mon, MON_DATA_RESERVED_113, 0); \
    tempvarassumeunused |= DUMMY_P2_1_HAS_HIT_NECESSARY_CRITICAL_HITS; \
    SetMonData(mon, MON_DATA_RESERVED_113, (u8 *)&tempvarassumeunused); \
}
#define SET_BOX_MON_CRITICAL_HIT_EVOLUTION_BIT(boxmon) { \
    u16 tempvarassumeunused = GetBoxMonData(boxmon, MON_DATA_RESERVED_113, 0); \
    tempvarassumeunused |= DUMMY_P2_1_HAS_HIT_NECESSARY_CRITICAL_HITS; \
    BoxMonDataSet(boxmon, MON_DATA_RESERVED_113, (u8 *)&tempvarassumeunused); \
}


#define POW_RND (32)


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
    // all the other mons here
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

struct PLIST_WORK
{
    u8 padding_x0[0x654];
    struct PLIST_DATA *dat;
    u8 padding_x658[0xC65-0x658];
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

struct FormData
{
    u16 species;

    u16 form_no:15;
    u16 need_rev:1;

    u16 file;
};

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


void* __attribute__((long_call)) AllocMonZeroed(u32 heapid);
void __attribute__((long_call)) ZeroMonData(void* pokemon);
void __attribute__((long_call))PokeParaSetChr(struct PartyPokemon *pp, u16 pokeno, u8 level, u8 pow, u8 chr);
void __attribute__((long_call))PokeParaSet(void *pp,int mons_no,int level,int pow,int rndflag,u32 rnd,int idflag,u32 id);
void __attribute__((long_call)) SetPokemonSee(void *zw, void *pp);
void __attribute__((long_call)) SetPokemonGet(void *zw, void *pp);
void *__attribute__((long_call))PokeStatusPokeParamGet(void*);
void __attribute__((long_call)) RecalcPartyPokemonStats( struct PartyPokemon *ppd );
void __attribute__((long_call)) ResetPartyPokemonAbility( void *ppd );
void __attribute__((long_call)) PokeParaSetSexChr(struct PartyPokemon *pp, u16 pokeno, u8 level, u8 pow, u8 sex, u8 chr, u8 annon);

u32 __attribute__((long_call)) GetMonData(void*,int,void*);
void __attribute__((long_call)) SetMonData(void*,int,void*);
u8 __attribute__((long_call)) PokeFuseiFormNoCheck(u16 mons_no, u8 form_no);
u32 __attribute__((long_call)) GetBoxMonData(void *ppp, int id, void *buf);
struct PartyPokemon * __attribute__((long_call)) PokeParty_GetMemberPointer(void * party, int pos);
u32 __attribute__((long_call)) PokeFormNoPersonalParaGet(int mons_no,int form_no,int para);
u8 __attribute__((long_call)) GetBoxMonGender(void *ppp);
u8 __attribute__((long_call)) PokeSexGetMonsNo(u16 monsno,u32 rnd);
void __attribute__((long_call)) BoxMonSetFastModeOff(void*,BOOL);
BOOL __attribute__((long_call)) BoxMonSetFastModeOn(void*);
void  __attribute__((long_call)) BoxMonDataSet(void *ppp,int id,const void *buf);
void *__attribute__((long_call)) SodateyaWork_GetPokePasoPointer(void *ppd, int ID);
void *__attribute__((long_call)) PokeParaPersonalRndChange(void *pp, u32 personal_rnd);
u8 __attribute__((long_call)) PokeNatureGet(u32);
void __attribute__((long_call)) PokeSetMove(void *ppp);
void __attribute__((long_call)) FillInBoxMonLearnset(void *);
u32 __attribute__((long_call)) PokePersonalParaGet(int species, int parameter);
u32 __attribute__((long_call)) PokeLevelExpGet(int species, int level);
void __attribute__((long_call)) BoxMonInit(void *);
void __attribute__((long_call)) GiratinaBoxPokemonFormChange(struct BoxPokemon *bp);
u32 __attribute__((long_call)) GrashideaFeasibleCheck(struct PartyPokemon *pp);
void __attribute__((long_call)) PokeList_FormDemoOverlayLoad(struct PLIST_WORK *wk);
//void __attribute__((long_call)) PokeParty_Add(void *party, struct PartyPokemon *pp); // defined in battle.h
void __attribute__((long_call)) PokeParty_Delete(void *party, u32 pos);
u32 __attribute__((long_call)) PokeListProc_End(void *proc, int *seq);
u32 __attribute__((long_call)) PokeParaLevelExpGet(struct PartyPokemon *pp);
u32 __attribute__((long_call)) PokeLevelUpCheck(struct PartyPokemon *pp);
BOOL __attribute__((long_call)) PartyHasMon(struct Party *party, u16 species);
BOOL __attribute__((long_call)) MonHasMove(struct PartyPokemon *mon, u16 move);
BOOL __attribute__((long_call)) does_species_have_dimorphism(u32 species);
BOOL __attribute__((long_call)) get_ow_data_file_num(u32 species);
BOOL __attribute__((long_call)) sub_020720FC(struct PartyPokemon *pp, void *profile, u16 item, u16 ball, u32 encounterType, int heapId);
void __attribute__((long_call)) UpdatePokedexWithReceivedSpecies(void *saveData, struct PartyPokemon *pokemon);
void __attribute__((long_call)) InitBoxMonMoveset(struct BoxPokemon *pokemon);
void __attribute__((long_call)) WildMonSetRandomHeldItem(struct PartyPokemon *pokemon, u32 fight_type, u32 item_type);
BOOL __attribute__((long_call)) GrabAndRegisterUnownForm(struct PartyPokemon *pokemon);
BOOL __attribute__((long_call)) MonIsShiny(struct PartyPokemon *pokemon);
BOOL __attribute__((long_call)) BoxMonIsShiny(struct BoxPokemon *pokemon);
void __attribute__((long_call)) PokeParty_Init(struct Party *party, int max);
void __attribute__((long_call)) TT_TrainerPokeDataGet(int tr_id, void *tpd);
u8 __attribute__((long_call)) TT_TrainerTypeSexGet(int trtype);
u32 __attribute__((long_call)) TrainerCBSet(int index, struct PartyPokemon* pp, int heap);
void __attribute__((long_call)) try_force_gender_maybe(int species, int formnum, u8 a2, u32 *genderratio);
void __attribute__((long_call)) TrainerMonHandleFrustration(struct PartyPokemon *pp);
void __attribute__((long_call)) SetPartyPokemonMoveAtPos(struct PartyPokemon *pp, u16 movenum, u8 pos);
void __attribute__((long_call)) gf_srand(u32 seed);
u32 __attribute__((long_call)) PokeParty_Add(struct Party *party, struct PartyPokemon *poke);
u8 __attribute__((long_call)) GetArceusType(u16 held_effect);
int __attribute__((long_call)) sub_02017FE4(u32 mapsectype, u32);
void __attribute__((long_call)) SetEggStats(struct PartyPokemon *pokemon, int species, u8 metLocation, void *profile, int a4, int a5);
void __attribute__((long_call)) SaveMisc_SetTogepiPersonalityGender(struct SAVE_MISC_DATA * saveMiscData, int personality, u8 gender);
void __attribute__((long_call)) SaveMisc_GetTogepiPersonalityGender(struct SAVE_MISC_DATA * saveMiscData, int *a1, u8 *a2);
void __attribute__((long_call)) sub_0206D038(struct PartyPokemon *pokemon, u32 heapId);
void __attribute__((long_call)) GetSpeciesNameIntoArray(u16 species, u32 heap_id, u16 *dest);
u32 __attribute__((long_call)) SetEncountData(struct PartyPokemon *pp, u32 rodType, void *encInfo, void *encArea, u32 encounterType, u32 battler, void *bw);
u32 __attribute__((long_call)) SetEncountDataSwarm_maybe(void *fsys, struct PartyPokemon *pp, u32 rodType, void *encInfo, u32 encounterType, u32 battler, void *bw);
void __attribute__((long_call)) CopyBoxPokemonToPokemon(const struct BoxPokemon *src, struct PartyPokemon *dest);
int __attribute__((long_call)) GetExpByGrowthRateAndLevel(int growthrate, u32 level);


#define gIconPalTable ((u8 *)(0x023D8000 + START_ADDRESS))

// defined in src/pokemon.c
u8 __attribute__((long_call)) GetOtherFormPic(MON_PIC *picdata, u16 mons_no, u8 dir, u8 col, u8 form_no);
int __attribute__((long_call)) PokeOtherFormMonsNoGet(int mons_no, int form_no);
u16 __attribute__((long_call)) GetSpeciesBasedOnForm(int mons_no, int form_no);
u16 __attribute__((long_call)) GetOriginalSpeciesBasedOnAdjustedForm(u32 mons_no);
u32 __attribute__((long_call)) PokeIconIndexGetByMonsNumber(u32 mons, u32 egg, u32 form_no);
u16 __attribute__((long_call)) PokeIconCgxPatternGet(const void *ppp);
u32 __attribute__((long_call)) PokeIconPalNumGet(u32 mons, u32 form, u32 isegg);
u32 __attribute__((long_call)) GetMonIconPalette(u32 mons, u32 form, u32 isegg);
u16 __attribute__((long_call)) GetPokemonOwNum(u16 species);
u16 __attribute__((long_call)) GetMonHiddenAbility(u16 species, u32 form);
void __attribute__((long_call)) SetBoxMonAbility(void *boxmon);
u32 __attribute__((long_call)) GetSpeciesBaseExp(u32 species, u32 form);
//struct OVERWORLD_TAG * __attribute__((long_call)) grab_overworld_ptr(u16 tag);
//u16 __attribute__((long_call)) get_a081_index_from_tag(u16 tag);
//u32 __attribute__((long_call)) grab_overworld_a081_index(u16 species, u32 form, u32 isFemale);
u32 __attribute__((long_call)) GetGenesectType(u16 item);
u32 __attribute__((long_call)) GetGenesectForme(u16 item);
void __attribute__((long_call)) ArceusBoxPokemonFormeChange(struct BoxPokemon *bp);
u32 __attribute__((long_call)) HandleBoxPokemonFormeChanges(struct BoxPokemon* bp);
u32 __attribute__((long_call)) CanUseRevealGlass(struct PartyPokemon *pp);
u32 __attribute__((long_call)) CanUseDNASplicersGrabSplicerPos(struct PartyPokemon *pp, struct Party *party);
u32 __attribute__((long_call)) UseItemFormeChangeCheck(struct PLIST_WORK *wk, void *dat);
u32 __attribute__((long_call)) PokeListProc_End_Extend(void *proc, int *seq);
void __attribute__((long_call)) ChangePartyPokemonToForm(struct PartyPokemon *pp, u32 form);
void __attribute__((long_call)) SwapPartyPokemonMove(struct PartyPokemon *pp, u32 oldMove, u32 newMove);
void __attribute__((long_call)) ChangePartyPokemonToFormSwapMove(struct PartyPokemon *pp, u32 form, u32 oldMove, u32 newMove);
u32 __attribute__((long_call)) GrabCurrentSeason(void);
void __attribute__((long_call)) UpdatePassiveForms(struct PartyPokemon *pp);
BOOL __attribute__((long_call)) Party_UpdateDeerlingSeasonForm(struct Party *party);
//BOOL __attribute__((long_call)) Party_TryResetShaymin(struct Party *party, int min_max, const struct RTCTime *time);
u8 __attribute__((long_call)) LoadEggMoves(struct PartyPokemon *pokemon, u16 *dest);
u32 __attribute__((long_call)) CheckIfMonsAreEqual(struct PartyPokemon *pokemon1, struct PartyPokemon *pokemon2);
u16 __attribute__((long_call)) GetMonEvolution(struct Party *party, struct PartyPokemon *pokemon, u8 context, u16 usedItem, int *method_ret);
u32 __attribute__((long_call)) GrabSexFromSpeciesAndForm(u32 species, u32 pid, u32 form);
u32 __attribute__((long_call)) GetBoxMonSex(struct BoxPokemon *bp);
u16 __attribute__((long_call)) get_mon_ow_tag(u16 species, u32 form, u32 isFemale);
BOOL __attribute__((long_call)) GiveMon(int heapId, void *saveData, int species, int level, int forme, u8 ability, u16 heldItem, int ball, int encounterType);
//BOOL __attribute__((long_call)) AddWildPartyPokemon(int inTarget, EncounterInfo *encounterInfo, struct PartyPokemon *encounterPartyPokemon, struct BATTLE_PARAM *encounterBattleParam);
void __attribute__((long_call)) CreateBoxMonData(struct BoxPokemon *boxmon, int species, int level, int pow, int rndflag, u32 rnd, int idflag, u32 id);
bool8 __attribute__((long_call)) RevertFormChange(struct PartyPokemon *pp, u16 species, u8 form_no);
void __attribute__((long_call)) ClearMonMoves(struct PartyPokemon *pokemon);

// defined in src/moves.c--can't just define in battles, sadly.  does need BattleMove structure from battle.h, though
u32 __attribute__((long_call)) GetMoveData(u16 id, u32 field);


#endif
