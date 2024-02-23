#include "../../include/types.h"
#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/save.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/weather_numbers.h"

struct EXP_CALCULATOR
{
    /* 0x00 */ void *bw;
    /* 0x04 */ struct BattleStruct *sp;
    /* 0x08 */ u8 unk8[0x28-0x8];
    /* 0x28 */ u32 seq_no;
    /* 0x2C */ u32 ballID;
    /* 0x30 */ u32 work[8];
}; // size = 0x50

typedef BOOL (*btl_scr_cmd_func)(void *bw, struct BattleStruct *sp);
#define START_OF_NEW_BTL_SCR_CMDS 0xE1
extern const btl_scr_cmd_func BattleScriptCmdTable[];

// function declarations
BOOL BattleScriptCommandHandler(void *bw, struct BattleStruct *sp);
//int read_battle_script_param(struct BattleStruct *sp);
//void LoadBattleSubSeqScript(struct BattleStruct *sp, int kind, int index);
//void PushAndLoadBattleScript(struct BattleStruct *sp, int kind, int index);
//int GrabClientFromBattleScriptParam(void *bw, struct BattleStruct *sp, int side);
//BOOL Link_QueueIsEmpty(struct BattleStruct *sp);
BOOL btl_scr_cmd_0E_waitmessage(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_17_playanimation(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_18_playanimation2(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_24_jumptocurmoveeffectscript(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_27_shouldgetexp(void *bw, struct BattleStruct *sp);
void Task_DistributeExp_Extend(void *arg0, void *work);
BOOL Task_DistributeExp_capture_experience(void *arg0, void *work, u32 get_client_no);
BOOL btl_scr_cmd_33_statbuffchange(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_54_ohko_move_handle(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_5f_trysleeptalk(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_6f_fury_cutter_damage_calc(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_7c_beat_up_damage_calc(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_87_tryknockoff(void *bw, struct BattleStruct *sp);
s32 GetPokemonWeight(void *bw, struct BattleStruct *sp, u32 client);
BOOL btl_scr_cmd_8c_lowkickdamagecalc(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_d0_checkshouldleavewith1hp(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_d1_trynaturalcure(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_E1_reduceweight(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_E2_heavyslamdamagecalc(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_E3_isuserlowerlevel(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_E4_settailwind(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_E5_iftailwindactive(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_E6_ifcurrentfieldistype(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_E7_ifmovepowergreaterthanzero(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_E8_ifgrounded(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_E9_checkifcurrentadjustedmoveistype(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_EA_ifcontactmove(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_EB_ifsoundmove(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_EC_updateterrainoverlay(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_ED_ifterrainoverlayistype(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_EE_setpsychicterrainmoveusedflag(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_EF_iffirsthitofparentalbond(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_F0_ifsecondhitofparentalbond(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_F1_setparentalbondflag(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_F2_ifcurrentmoveisvalidparentalbondmove(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_F3_canapplyknockoffdamageboost(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_F4_isparentalbondactive(void *bw, struct BattleStruct *sp);
BOOL CanKnockOffApply(struct BattleStruct *sp);
u32 CalculateBallShakes(void *bw, struct BattleStruct *sp);
u32 DealWithCriticalCaptureShakes(struct EXP_CALCULATOR *expcalc, u32 shakes);
u32 LoadCaptureSuccessSPA(u32 id);
u32 LoadCaptureSuccessSPAStarEmitter(u32 id);
u32 LoadCaptureSuccessSPANumEmitters(u32 id);


#ifdef DEBUG_BATTLE_SCRIPT_COMMANDS
const u8 *BattleScrCmdNames[] =
{
    "startencounter",
    "pokemonencounter",
    "pokemonslidein",
    "pokemonappear",
    "returnpokemon",
    "deletepokemon",
    "starttrainerencounter",
    "throwpokeball",
    "preparetrainerslide",
    "trainerslidein",
    "backgroundslidein",
    "hpgaugeslidein",
    "hpgaugeslidewait",
    "preparehpgaugeslide",
    "waitmessage",
    "damagecalc",
    "damagecalc2",
    "printattackmessage",
    "printmessage",
    "printmessage2",
    "printpreparedmessage",
    "preparemessage",
    "printmessagepassbattler",
    "playanimation",
    "playanimation2",
    "monflicker",
    "datahpupdate",
    "healthbarupdate",
    "tryfaintmon",
    "dofaintanimation",
    "wait",
    "playse",
    "if",
    "ifmonstat",
    "fadeout",
    "jumptosubseq",
    "jumptocurmoveeffectscript",
    "jumptoeffectscript",
    "critcalc",
    "shouldgetexp",
    "initexpget",
    "getexp",
    "getexploop",
    "showmonlist",
    "waitformonselection",
    "switchindataupdate",
    "jumpifcantswitch",
    "initcapture",
    "capturemon",
    "setmultihit",
    "changevar",
    "statbuffchange",
    "changemondatabyvalue",
    "clearstatus2",
    "togglevanish",
    "abilitycheck",
    "random",
    "changevar2",
    "changemondatabyvar",
    "goto",
    "gotosubscript",
    "gotosubscript2",
    "setmovetomirrormove",
    "sethaze",
    "setsomeflag",
    "clearsomeflag",
    "setstatusicon",
    "trainermessage",
    "calcmoney",
    "setstatus2effect",
    "setstatus2effect2",
    "setstatus2effect3",
    "returnmessage",
    "sentoutmessage",
    "encountermessage",
    "encountermessage2",
    "trainermessage2",
    "tryconversion",
    "if2",
    "ifmonstat2",
    "dopayday",
    "setlightscreen",
    "setreflect",
    "setmist",
    "tryonehitko",
    "damagediv",
    "damagediv2",
    "trymimic",
    "metronome",
    "trydisable",
    "counter",
    "mirrorcoat",
    "tryencore",
    "tryconversion2",
    "trysketch",
    "trysleeptalk",
    "flaildamagecalc",
    "tryspite",
    "healbell",
    "trythief",
    "tryprotect",
    "trysubstitute",
    "trywhirlwind",
    "transform",
    "tryspikes",
    "checkspikes",
    "tryperishsong",
    "orderbattlersbyspeed",
    "jumpifvarisvalidbattler",
    "weatherdamagecalc",
    "rolloutdamagecalc",
    "furycutterdamagecalc",
    "tryattract",
    "trysafeguard",
    "trypresent",
    "magnitudedamagecalc",
    "tryswitchinmon",
    "rapidspin",
    "changehprecoverybasedonweather",
    "hiddenpowerdamagecalc",
    "psychup",
    "tryfuturesight",
    "checkhitrate",
    "tryteleport",
    "beatupdamagecalc",
    "followme",
    "tryhelpinghand",
    "trytrick",
    "trywish",
    "tryassist",
    "trysetmagiccoat",
    "magiccoat",
    "revengedamagecalc",
    "trybreakscreens",
    "tryyawn",
    "tryknockoff",
    "eruptiondamagecalc",
    "tryimprison",
    "trygrudge",
    "trysnatch",
    "lowkickdamagecalc",
    "weatherballdamagecalc",
    "trypursuit",
    "typecheck",
    "checkoneturnflag",
    "setoneturnflag",
    "gyroballdamagecalc",
    "metalburstdamagecalc",
    "paybackdamagecalc",
    "trumpcarddamagecalc",
    "wringoutdamagecalc",
    "trymefirst",
    "trycopycat",
    "punishmentdamagecalc",
    "trysuckerpunch",
    "checksidecondition",
    "tryfeint",
    "trypsychoshift",
    "trylastresort",
    "trytoxicspikes",
    "checktoxicspikes",
    "moldbreakerabilitycheck",
    "checkonsameteam",
    "pickup",
    "trickroom",
    "checkmovefinished",
    "checkitemeffect",
    "getitemeffect",
    "getitempower",
    "trycamouflage",
    "naturepower",
    "dosecretpower",
    "trynaturalgift",
    "trypluck",
    "tryfling",
    "yesnobox",
    "yesnowait",
    "monlist",
    "monlistwait",
    "setbattleresult",
    "checkstealthrock",
    "checkeffectactivation",
    "checkchatteractivation",
    "getmoveparameter",
    "mosaic",
    "changeform",
    "changebackground",
    "recoverstatus",
    "tryescape",
    "initstartballgauge",
    "deletestartballgauge",
    "initballgauge",
    "deleteballgauge",
    "loadballgfx",
    "deleteballgfx",
    "incrementgamestat",
    "cmd_C4",
    "abilityeffectcheckonhit",
    "cmd_C6",
    "cmd_C7",
    "checkwipeout",
    "tryacupressure",
    "removeitem",
    "tryrecycle",
    "itemeffectcheckonhit",
    "battleresultmessage",
    "runawaymessage",
    "giveupmessage",
    "checkshouldleavewith1hp",
    "trynaturalcure",
    "checksubstitute",
    "checkcloudnine",
    "cmd_D4",
    "checkuturnitemeffect",
    "swaptosubstitutesprite",
    "playmovesoundeffect",
    "playsong",
    "checkifsafariencounterdone",
    "waitwithoutbuttonpress",
    "checkifcurrentmoveistype",
    "getdatafrompersonalnarc",
    "refreshmondata",
    "cmd_DE",
    "cmd_DF",
    "endscript",
    "reduceweight",
    "heavyslamdamagecalc",
    "isuserlowerlevel",
    "settailwind",
    "iftailwindactive",
    "ifcurrentfieldistype",
    "ifmovepowergreaterthanzero",
    "ifgrounded",
    "checkifcurrentadjustedmoveistype",
    "ifcontactmove",
    "ifsoundmove",
    "updateterrainoverlay",
    "ifterrainoverlayistype",
    "setpsychicterrainmoveusedflag",
    "iffirsthitofparentalbond",
    "ifsecondhitofparentalbond",
    "setparentalbondflag",
    "ifcurrentmoveisvalidparentalbondmove",
    "canapplyknockoffdamageboost",
    "isparentalbondactive",
};

u32 cmdAddress = 0;
#endif // DEBUG_BATTLE_SCRIPT_COMMANDS


const btl_scr_cmd_func NewBattleScriptCmdTable[] =
{
    [0xE1 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_E1_reduceweight,
    [0xE2 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_E2_heavyslamdamagecalc,
    [0xE3 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_E3_isuserlowerlevel,
    [0xE4 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_E4_settailwind,
    [0xE5 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_E5_iftailwindactive,
    [0xE6 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_E6_ifcurrentfieldistype,
    [0xE7 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_E7_ifmovepowergreaterthanzero,
    [0xE8 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_E8_ifgrounded,
    [0xE9 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_E9_checkifcurrentadjustedmoveistype,
    [0xEA - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_EA_ifcontactmove,
    [0xEB - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_EB_ifsoundmove,
    [0xEC - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_EC_updateterrainoverlay,
    [0xED - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_ED_ifterrainoverlayistype,
    [0xEE - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_EE_setpsychicterrainmoveusedflag,
    [0xEF - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_EF_iffirsthitofparentalbond,
    [0xF0 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_F0_ifsecondhitofparentalbond,
    [0xF1 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_F1_setparentalbondflag,
    [0xF2 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_F2_ifcurrentmoveisvalidparentalbondmove,
    [0xF3 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_F3_canapplyknockoffdamageboost,
    [0xF4 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_F4_isparentalbondactive,
};

// entries before 0xFFFE are banned for mimic and metronome--after is just banned for metronome.  table ends with 0xFFFF
u16 sMetronomeMimicMoveBanList[] =
{
    MOVE_METRONOME,
    MOVE_STRUGGLE,
    MOVE_SKETCH,
    MOVE_MIMIC,
    MOVE_CHATTER,
    MOVE_BEHEMOTH_BLADE,
    MOVE_BEHEMOTH_BASH,

// z moves
    MOVE_BREAKNECK_BLITZ_PHYSICAL,
    MOVE_BREAKNECK_BLITZ_SPECIAL,
    MOVE_ALL_OUT_PUMMELING_PHYSICAL,
    MOVE_ALL_OUT_PUMMELING_SPECIAL,
    MOVE_SUPERSONIC_SKYSTRIKE_PHYSICAL,
    MOVE_SUPERSONIC_SKYSTRIKE_SPECIAL,
    MOVE_ACID_DOWNPOUR_PHYSICAL,
    MOVE_ACID_DOWNPOUR_SPECIAL,
    MOVE_TECTONIC_RAGE_PHYSICAL,
    MOVE_TECTONIC_RAGE_SPECIAL,
    MOVE_CONTINENTAL_CRUSH_PHYSICAL,
    MOVE_CONTINENTAL_CRUSH_SPECIAL,
    MOVE_SAVAGE_SPIN_OUT_PHYSICAL,
    MOVE_SAVAGE_SPIN_OUT_SPECIAL,
    MOVE_NEVER_ENDING_NIGHTMARE_PHYSICAL,
    MOVE_NEVER_ENDING_NIGHTMARE_SPECIAL,
    MOVE_CORKSCREW_CRASH_PHYSICAL,
    MOVE_CORKSCREW_CRASH_SPECIAL,
    MOVE_INFERNO_OVERDRIVE_PHYSICAL,
    MOVE_INFERNO_OVERDRIVE_SPECIAL,
    MOVE_HYDRO_VORTEX_PHYSICAL,
    MOVE_HYDRO_VORTEX_SPECIAL,
    MOVE_BLOOM_DOOM_PHYSICAL,
    MOVE_BLOOM_DOOM_SPECIAL,
    MOVE_GIGAVOLT_HAVOC_PHYSICAL,
    MOVE_GIGAVOLT_HAVOC_SPECIAL,
    MOVE_SHATTERED_PSYCHE_PHYSICAL,
    MOVE_SHATTERED_PSYCHE_SPECIAL,
    MOVE_SUBZERO_SLAMMER_PHYSICAL,
    MOVE_SUBZERO_SLAMMER_SPECIAL,
    MOVE_DEVASTATING_DRAKE_PHYSICAL,
    MOVE_DEVASTATING_DRAKE_SPECIAL,
    MOVE_BLACK_HOLE_ECLIPSE_PHYSICAL,
    MOVE_BLACK_HOLE_ECLIPSE_SPECIAL,
    MOVE_TWINKLE_TACKLE_PHYSICAL,
    MOVE_TWINKLE_TACKLE_SPECIAL,

    MOVE_CATASTROPIKA,
    MOVE_10_000_000_VOLT_THUNDERBOLT,
    MOVE_STOKED_SPARKSURFER,
    MOVE_EXTREME_EVOBOOST,
    MOVE_PULVERIZING_PANCAKE,
    MOVE_GENESIS_SUPERNOVA,
    MOVE_SINISTER_ARROW_RAID,
    MOVE_MALICIOUS_MOONSAULT,
    MOVE_OCEANIC_OPERETTA,
    MOVE_SPLINTERED_STORMSHARDS,
    MOVE_LETS_SNUGGLE_FOREVER,
    MOVE_CLANGOROUS_SOULBLAZE,
    MOVE_GUARDIAN_OF_ALOLA,
    MOVE_SEARING_SUNRAZE_SMASH,
    MOVE_MENACING_MOONRAZE_MAELSTROM,
    MOVE_LIGHT_THAT_BURNS_THE_SKY,
    MOVE_SOUL_STEALING_7_STAR_STRIKE,

// max moves
    MOVE_MAX_GUARD,
    MOVE_DYNAMAX_CANNON,
    MOVE_MAX_FLARE,
    MOVE_MAX_FLUTTERBY,
    MOVE_MAX_LIGHTNING,
    MOVE_MAX_STRIKE,
    MOVE_MAX_KNUCKLE,
    MOVE_MAX_PHANTASM,
    MOVE_MAX_HAILSTORM,
    MOVE_MAX_OOZE,
    MOVE_MAX_GEYSER,
    MOVE_MAX_AIRSTREAM,
    MOVE_MAX_STARFALL,
    MOVE_MAX_WYRMWIND,
    MOVE_MAX_MINDSTORM,
    MOVE_MAX_ROCKFALL,
    MOVE_MAX_QUAKE,
    MOVE_MAX_DARKNESS,
    MOVE_MAX_OVERGROWTH,
    MOVE_MAX_STEELSPIKE,

    0xFFFE,
    MOVE_AFTER_YOU,
    MOVE_APPLE_ACID,
    MOVE_ASSIST,
    MOVE_ASTRAL_BARRAGE,
    MOVE_AURA_WHEEL,
    MOVE_BANEFUL_BUNKER,
    MOVE_BEAK_BLAST,
    MOVE_BELCH,
    MOVE_BESTOW,
    MOVE_BODY_PRESS,
    MOVE_BRANCH_POKE,
    MOVE_BREAKING_SWIPE,
    MOVE_CELEBRATE,
    MOVE_CLANGOROUS_SOUL,
    MOVE_COPYCAT,
    MOVE_COUNTER,
    MOVE_COVET,
    MOVE_CRAFTY_SHIELD,
    MOVE_DECORATE,
    MOVE_DESTINY_BOND,
    MOVE_DETECT,
    MOVE_DIAMOND_STORM,
    MOVE_DOUBLE_IRON_BASH,
    MOVE_DRAGON_ASCENT,
    MOVE_DRAGON_ENERGY,
    MOVE_DRAGON_HAMMER,
    MOVE_DRUM_BEATING,
    MOVE_DYNAMAX_CANNON,
    MOVE_ENDURE,
    MOVE_ETERNABEAM,
    MOVE_FALSE_SURRENDER,
    MOVE_FEINT,
    MOVE_FIERY_WRATH,
    MOVE_FLEUR_CANNON,
    MOVE_FOCUS_PUNCH,
    MOVE_FOLLOW_ME,
    MOVE_FREEZE_SHOCK,
    MOVE_FREEZING_GLARE,
    MOVE_GLACIAL_LANCE,
    MOVE_GRAV_APPLE,
    MOVE_HELPING_HAND,
    MOVE_HOLD_HANDS,
    MOVE_HYPERSPACE_FURY,
    MOVE_HYPERSPACE_HOLE,
    MOVE_ICE_BURN,
    MOVE_INSTRUCT,
    MOVE_JUNGLE_HEALING,
    MOVE_KINGS_SHIELD,
    MOVE_LIFE_DEW,
    MOVE_LIGHT_OF_RUIN,
    MOVE_MAT_BLOCK,
    MOVE_ME_FIRST,
    MOVE_METEOR_ASSAULT,
    MOVE_MIND_BLOWN,
    MOVE_MIRROR_COAT,
    MOVE_MIRROR_MOVE,
    MOVE_MOONGEIST_BEAM,
    MOVE_NATURE_POWER,
    MOVE_NATURES_MADNESS,
    MOVE_OBSTRUCT,
    MOVE_ORIGIN_PULSE,
    MOVE_OVERDRIVE,
    MOVE_PHOTON_GEYSER,
    MOVE_PLASMA_FISTS,
    MOVE_PRECIPICE_BLADES,
    MOVE_PROTECT,
    MOVE_PYRO_BALL,
    MOVE_QUASH,
    MOVE_QUICK_GUARD,
    MOVE_RAGE_POWDER,
    MOVE_RELIC_SONG,
    MOVE_SECRET_SWORD,
    MOVE_SHELL_TRAP,
    MOVE_SLEEP_TALK,
    MOVE_SNAP_TRAP,
    MOVE_SNARL,
    MOVE_SNATCH,
    MOVE_SNORE,
    MOVE_SPECTRAL_THIEF,
    MOVE_SPIKY_SHIELD,
    MOVE_SPIRIT_BREAK,
    MOVE_SPOTLIGHT,
    MOVE_STEAM_ERUPTION,
    MOVE_STEEL_BEAM,
    MOVE_STRANGE_STEAM,
    MOVE_SUNSTEEL_STRIKE,
    MOVE_SURGING_STRIKES,
    MOVE_SWITCHEROO,
    MOVE_TECHNO_BLAST,
    MOVE_THIEF,
    MOVE_THOUSAND_ARROWS,
    MOVE_THOUSAND_WAVES,
    MOVE_THUNDER_CAGE,
    MOVE_THUNDEROUS_KICK,
    MOVE_TRANSFORM,
    MOVE_TRICK,
    MOVE_V_CREATE,
    MOVE_WICKED_BLOW,
    MOVE_WIDE_GUARD,
    0xFFFF
};


/**
 *  @brief handles all of battle script command execution
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return not sure.  mostly FALSE except if ending the battle script?
 */
BOOL BattleScriptCommandHandler(void *bw, struct BattleStruct *sp)
{
    BOOL ret;
    u32 command;
#ifdef DEBUG_BATTLE_SCRIPT_COMMANDS
    u8 buf[64];
#endif //DEBUG_BATTLE_SCRIPT_COMMANDS

    do {
        command = sp->SkillSeqWork[sp->skill_seq_no];

#ifdef DEBUG_BATTLE_SCRIPT_COMMANDS
        if (cmdAddress != (u32)&sp->SkillSeqWork[sp->skill_seq_no])
        {
            cmdAddress = (u32)&sp->SkillSeqWork[sp->skill_seq_no];
            sprintf(buf, "[BattleScriptCommandHandler] %s - 0x%02X\n", BattleScrCmdNames[command], command);
            debugsyscall(buf);
            if (command == 0xE0 || command == 0x24)
            {
                debugsyscall("\n");
                cmdAddress = 0;
            }
            if (command == 0xE) // wait message soft lock?
            {
                sp->SkillSeqWork[0] = 0;
            }
        }
        if (command == 0xE) // wait message soft lock?
        {
            if (sp->SkillSeqWork[0]++ > 300) // timeout clear queue
            {
        //        debugsyscall("[BattleScriptCommandHandler] TIMEOUT: Force Command Increment\n");
        //        sp->skill_seq_no++;
        //        sp->SkillSeqWork[0] = 0;
            }
        }
#endif //DEBUG_BATTLE_SCRIPT_COMMANDS

        if (command < START_OF_NEW_BTL_SCR_CMDS)
        {
            ret = BattleScriptCmdTable[command](bw, sp);
        }
        else
        {
            ret = NewBattleScriptCmdTable[command - START_OF_NEW_BTL_SCR_CMDS](bw, sp);
        }
    } while ((sp->battle_progress_flag == 0) && ((BattleTypeGet(bw) & BATTLE_TYPE_WIRELESS) == 0));

    sp->battle_progress_flag = 0;

    return ret;
}

/**
 *  @brief read battle script parameters + increment "program counter" by 1 when doing so
 *
 *  @param sp global battle structure
 *  @return battle script parameter read from VM's "program counter"
 */
int read_battle_script_param(struct BattleStruct *sp)
{
    int data;

    data = sp->SkillSeqWork[sp->skill_seq_no];
    sp->skill_seq_no++;

    return data;
}

/**
 *  @brief load battle script to BattleStruct's SkillSeqWork
 *
 *  @param sp global battle structure
 *  @param kind ARC_* constant to load from, doesn't have to be 0 for move scripts or 1 for subscripts
 *  @param index number to load
 */
void LoadBattleSubSeqScript(struct BattleStruct *sp, int kind, int index)
{
    sp->skill_arc_kind = kind;
    sp->skill_arc_index = index;
    sp->skill_seq_no = 0;
    ArchiveDataLoad(&sp->SkillSeqWork, kind, index);
}

/**
 *  @brief load battle script and queue up the current one to go after this one
 *
 *  @param sp global battle structure
 *  @param kind ARC_* constant to load from, doesn't have to be 0 for move scripts or 1 for subscripts
 *  @param index number to load
 */
void PushAndLoadBattleScript(struct BattleStruct *sp, int kind, int index)
{
    sp->push_skill_arc_kind[sp->push_count] = sp->skill_arc_kind;
    sp->push_skill_arc_index[sp->push_count] = sp->skill_arc_index;
    sp->push_skill_seq_no[sp->push_count] = sp->skill_seq_no;
    sp->push_count++;
    sp->skill_arc_kind = kind;
    sp->skill_arc_index = index;
    sp->skill_seq_no = 0;
    ArchiveDataLoad(&sp->SkillSeqWork, kind, index);
}

/**
 *  @brief resolve read battle script parameter into a specific battler type.  determined by BTL_PARAM_* consts right above func definition
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param side BTL_PARAM_* const to resolve to BattleStruct field
 *  @return resolved battler
 */
int GrabClientFromBattleScriptParam(void *bw, struct BattleStruct *sp, int side)
{
    int client_no;
    u32 ally_bits = side & 0xE000;
    side = side & 0x1FFF;

    switch (side)
    {
    default:
    case BTL_PARAM_BATTLER_ATTACKER:
        client_no = sp->attack_client;
        break;
    case BTL_PARAM_BATTLER_DEFENDER:
        client_no = sp->defence_client;
        break;
    case BTL_PARAM_BATTLER_FAINTED:
        client_no = sp->fainting_client;
        break;
    case BTL_PARAM_BATTLER_REPLACE:
    case BTL_PARAM_BATTLER_ALL_REPLACED:
        client_no = sp->reshuffle_client;
        break;
    case BTL_PARAM_BATTLER_ADDL_EFFECT:
        client_no = sp->state_client;
        break;
    case BTL_PARAM_BATTLER_CHAR_CHECKED:
        client_no = sp->ability_client;
        break;
    case BTL_PARAM_BATTLER_OPPONENT:
        {
            struct CLIENT_PARAM *cp;
            int client_set_max;

            client_set_max = BattleWorkClientSetMaxGet(bw);
            for (client_no = 0; client_no < client_set_max ; client_no++)
            {
                cp = BattleWorkClientParamGet(bw, client_no);
                if (cp->client_type & 1)
                {
                    break;
                }
            }
        }
        break;
    case BTL_PARAM_BATTLER_ENEMY_LEFT:
        {
            struct CLIENT_PARAM *cp;
            int client_set_max;

            client_set_max = BattleWorkClientSetMaxGet(bw);
            for (client_no = 0; client_no < client_set_max; client_no++)
            {
                cp = BattleWorkClientParamGet(bw, client_no);
                if ((cp->client_type == 3) || (cp->client_type == 1))
                {
                    break;
                }
            }
        }
        break;
    case BTL_PARAM_BATTLER_ENEMY_RIGHT:
        {
            struct CLIENT_PARAM *cp;
            int client_set_max;
            int type;

            if (BattleTypeGet(bw) & BATTLE_TYPE_DOUBLE)
                type = 5;
            else
                type = 1;

            client_set_max = BattleWorkClientSetMaxGet(bw);
            for (client_no = 0; client_no < client_set_max; client_no++)
            {
                cp = BattleWorkClientParamGet(bw, client_no);
                if (cp->client_type == type)
                {
                    break;
                }
            }
        }
        break;
    case BTL_PARAM_BATTLER_PLAYER:
        {
            struct CLIENT_PARAM *cp;
            int client_set_max;

            client_set_max = BattleWorkClientSetMaxGet(bw);
            for (client_no = 0; client_no < client_set_max; client_no++)
            {
                cp = BattleWorkClientParamGet(bw, client_no);
                if ((cp->client_type & 1) == 0)
                {
                    break;
                }
            }
        }
        break;
    case BTL_PARAM_BATTLER_PLAYER_LEFT:
        {
            struct CLIENT_PARAM *cp;
            int client_set_max;

            client_set_max = BattleWorkClientSetMaxGet(bw);
            for (client_no = 0; client_no < client_set_max; client_no++)
            {
                cp = BattleWorkClientParamGet(bw, client_no);
                if ((cp->client_type == 2) || (cp->client_type == 0))
                {
                    break;
                }
            }
        }
        break;
    case BTL_PARAM_BATTLER_PLAYER_RIGHT:
        {
            struct CLIENT_PARAM *cp;
            int client_set_max;
            int type;

            if (BattleTypeGet(bw) & BATTLE_TYPE_DOUBLE)
            {
                type = 4;
            }
            else
            {
                type = 0;
            }

            client_set_max = BattleWorkClientSetMaxGet(bw);
            for (client_no = 0; client_no < client_set_max; client_no++)
            {
                cp = BattleWorkClientParamGet(bw, client_no);
                if (cp->client_type == type)
                {
                    break;
                }
            }
        }
        break;
    case BTL_PARAM_BATTLER_ATTACKER2:
        client_no = sp->attack_client_work;
        break;
    case BTL_PARAM_BATTLER_DEFENDER2:
        client_no = sp->defence_client_work;
        break;
    case BTL_PARAM_BATTLER_ATTACKER_PARTNER:
        {
            int client_set_max;

            client_set_max = BattleWorkClientSetMaxGet(bw);
            for (client_no = 0; client_no < client_set_max; client_no++)
            {
                if ((client_no != sp->attack_client)
                 && (IsClientEnemy(bw, client_no) == IsClientEnemy(bw, sp->attack_client)))
                {
                    break;
                }
            }
            if (client_no == client_set_max)
            {
                client_no = 0;
            }
        }
        break;
    case BTL_PARAM_BATTLER_DEFENDER_PARTNER:
        {
            int client_set_max;

            client_set_max = BattleWorkClientSetMaxGet(bw);
            for (client_no = 0; client_no < client_set_max; client_no++)
            {
                if ((client_no != sp->defence_client)
                 && (IsClientEnemy(bw, client_no) == IsClientEnemy(bw, sp->defence_client)))
                {
                    break;
                }
            }
            if (client_no == client_set_max)
            {
                client_no = 0;
            }
        }
        break;
    case BTL_PARAM_BATTLER_x13:
        {
            int client_set_max;
            int dir;

            client_set_max = BattleWorkClientSetMaxGet(bw);
            dir = IsClientEnemy(bw, sp->attack_client);
            for (client_no = 0; client_no < client_set_max; client_no++)
            {
                if (dir != IsClientEnemy(bw, client_no))
                {
                    break;
                }
            }
        }
        break;
    case BTL_PARAM_BATTLER_x14:
        {
            int client_set_max;
            int dir;

            client_set_max = BattleWorkClientSetMaxGet(bw);
            dir = IsClientEnemy(bw, sp->defence_client);
            for (client_no = 0; client_no < client_set_max; client_no++)
            {
                if (dir != IsClientEnemy(bw, client_no))
                {
                    break;
                }
            }
        }
        break;
    case BTL_PARAM_BATTLER_WORK:
    case BTL_PARAM_BATTLER_x15:
        client_no = sp->client_work;
        break;
    }

    if (ally_bits & BTL_PARAM_BATTLER_ALLY)
        return BATTLER_ALLY(client_no);
    else if (ally_bits & BTL_PARAM_BATTLER_ACROSS)
        return BATTLER_ACROSS(client_no);
    else if (ally_bits & BTL_PARAM_BATTLER_ENEMY)
        return BATTLER_OPPONENT(client_no);
    else
        return client_no;
}

#ifdef DEBUG_SERVER_QUEUE
u32 cmdAddress2 = 0;
#endif
/**
 *  @brief check if waitmessage battle script command should end
 *
 *  @param sp global battle structure
 *  @return TRUE if link queue is empty; FALSE otherwise
 */
BOOL Link_QueueIsEmpty(struct BattleStruct *sp) {
    int i;
    int battlerId;
    int j;
    int cnt = 0;

#ifdef DEBUG_SERVER_QUEUE
    u8 buf[64];
#endif
    for (i = 0; i < 4; i++) {
        for (battlerId = 0; battlerId < 4; battlerId++) {
            for (j = 0; j < 16; j++) {
                cnt += sp->ServerQue[i][battlerId][j];
#ifdef DEBUG_SERVER_QUEUE
                if (sp->ServerQue[i][battlerId][j] && cmdAddress2 != (u32)&sp->SkillSeqWork[sp->skill_seq_no])
                {
                    sprintf(buf, "[Link_QueueIsEmpty] battlerId = %d, serverQueue = %d\n", battlerId, sp->ServerQue[i][battlerId][j]);
                    debugsyscall(buf);
                    cmdAddress2 = (u32)&sp->SkillSeqWork[sp->skill_seq_no];
                }
                if (sp->SkillSeqWork[0] > 290 && sp->ServerQue[i][battlerId][j])
                {
                    sprintf(buf, "[Link_QueueIsEmpty] TIMEOUT on serverQueue %d. Reset to 0.\n", sp->ServerQue[i][battlerId][j]);
                    debugsyscall(buf);
                    sp->ServerQue[i][battlerId][j] = 0;
                    cnt = 0;
                }
#endif
            }
        }
    }

    if (cnt == 0) {
        sp->server_queue_time_out = 0;
    }
    return (cnt == 0);
}

/**
 *  @brief battle script command for waitmessage
 *         checks to see if the server queue is empty before incrementing the VM PC
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_0E_waitmessage(void *bw UNUSED, struct BattleStruct *sp) {
    if (Link_QueueIsEmpty(sp)) {
        IncrementBattleScriptPtr(sp, 1);
    } else {
        Link_CheckTimeout(sp);
    }

    sp->battle_progress_flag = 1;

    return FALSE;
}

/**
 *  @brief script command to play the animation of sp->current_move_index
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_17_playanimation(void *bw, struct BattleStruct *sp)
{
    int side;
    u16 move;

    IncrementBattleScriptPtr(sp, 1);
    side = read_battle_script_param(sp);

    if (side == 0xFF)
    {
        move = sp->waza_work;
    }
    else
    {
        move = sp->current_move_index;
    }

    if ((((sp->server_status_flag & SERVER_STATUS_FLAG_ANIMATION_IS_PLAYING) == 0)
      && (CheckBattleAnimationsOption(bw) == TRUE))
     || (move == MOVE_TRANSFORM || move == MOVE_470)) // mega evolution is animation 470--force it to play regardless of whether or not animations are on
    {
        sp->server_status_flag |= SERVER_STATUS_FLAG_ANIMATION_IS_PLAYING;
        SCIO_QueueMoveAnimation(bw, sp, move);
    }
    if (CheckBattleAnimationsOption(bw) == FALSE)
    {
        SkillSequenceGosub(sp, 1, SUB_SEQ_WAIT_FOR_UNPLAYED_ANIMATION);
    }

    return FALSE;
}

/**
 *  @brief script command to play the animation of sp->current_move_index
 *         respects attacker, defender
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_18_playanimation2(void *bw, struct BattleStruct *sp)
{
    int side, attack, defence, cli_a, cli_d;
    u16 move;

    IncrementBattleScriptPtr(sp, 1);
    side = read_battle_script_param(sp);
    attack = read_battle_script_param(sp);
    defence = read_battle_script_param(sp);

    if (side == 0xFF)
    {
        move = sp->waza_work;
    }
    else{
        move = sp->current_move_index;
    }

    cli_a = GrabClientFromBattleScriptParam(bw, sp, attack);
    cli_d = GrabClientFromBattleScriptParam(bw, sp, defence);

    if ((((sp->server_status_flag & SERVER_STATUS_FLAG_ANIMATION_IS_PLAYING) == 0)
      && (CheckBattleAnimationsOption(bw) == TRUE))
     || (move == MOVE_TRANSFORM || move == MOVE_470))
    {
        sp->server_status_flag |= SERVER_STATUS_FLAG_ANIMATION_IS_PLAYING;
        SCIO_QueueMoveAnimationConsiderAttackerDefender(bw, sp, move, cli_a, cli_d);
    }
    if (CheckBattleAnimationsOption(bw) == FALSE)
    {
        SkillSequenceGosub(sp, 1, SUB_SEQ_WAIT_FOR_UNPLAYED_ANIMATION);
    }

    return FALSE;
}

/**
 *  @brief script command to jump to the current move's effect script
 *         modified to apply sheer force's effect
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_24_jumptocurmoveeffectscript(void *bw UNUSED, struct BattleStruct *sp)
{
    int effect;

    IncrementBattleScriptPtr(sp, 1);
    effect = sp->moveTbl[sp->current_move_index].effect;

    if (GetBattlerAbility(sp, sp->attack_client) == ABILITY_SHEER_FORCE)
    {
        // list taken from bulbapedia article on sheer force and the moves affected.
        switch (effect)
        {
            case MOVE_EFFECT_FLINCH_HIT:
            case MOVE_EFFECT_RAISE_ALL_STATS_HIT:
            case MOVE_EFFECT_BLIZZARD:
            case MOVE_EFFECT_PARALYZE_HIT:
            case MOVE_EFFECT_LOWER_SPEED_HIT:
            case MOVE_EFFECT_RAISE_SP_ATK_HIT:
            case MOVE_EFFECT_CONFUSE_HIT:
            case MOVE_EFFECT_LOWER_DEFENSE_HIT:
            case MOVE_EFFECT_LOWER_SP_DEF_HIT:
            case MOVE_EFFECT_BURN_HIT:
            case MOVE_EFFECT_FLINCH_BURN_HIT:
            case MOVE_EFFECT_RAISE_SPEED_HIT:
            case MOVE_EFFECT_POISON_HIT:
            case MOVE_EFFECT_FREEZE_HIT:
            case MOVE_EFFECT_FLINCH_FREEZE_HIT:
            case MOVE_EFFECT_RAISE_ATTACK_HIT:
            case MOVE_EFFECT_LOWER_ACCURACY_HIT:
            case MOVE_EFFECT_FLINCH_POISON_HIT:
            //case MOVE_EFFECT_SECRET_POWER: // need a different way of doing this i think
            case MOVE_EFFECT_LOWER_SP_ATK_HIT:
            case MOVE_EFFECT_THUNDER:
            case MOVE_EFFECT_FLINCH_PARALYZE_HIT:
            case MOVE_EFFECT_FLINCH_DOUBLE_DAMAGE_FLY_OR_BOUNCE: // removes the double damage flying too
            case MOVE_EFFECT_LOWER_SP_DEF_2_HIT:
            case MOVE_EFFECT_LOWER_ATTACK_HIT:
            case MOVE_EFFECT_THAW_AND_BURN_HIT: // it does thaw otherwise
            case MOVE_EFFECT_CHATTER: // confuse chance based on volume of cry
            case MOVE_EFFECT_FLINCH_MINIMIZE_DOUBLE_HIT:
            case MOVE_EFFECT_RANDOM_PRIMARY_STATUS_HIT:
                effect = MOVE_EFFECT_HIT;
                sp->battlemon[sp->attack_client].sheer_force_flag = 1;
                break;

            case MOVE_EFFECT_POISON_MULTI_HIT: // twineedle
                effect = MOVE_EFFECT_MULTI_HIT;
                sp->battlemon[sp->attack_client].sheer_force_flag = 1;
                break;

            case MOVE_EFFECT_HIGH_CRITICAL_BURN_HIT: // blaze kick
            case MOVE_EFFECT_HIGH_CRITICAL_POISON_HIT: // cross poison
                effect = MOVE_EFFECT_HIGH_CRITICAL;
                sp->battlemon[sp->attack_client].sheer_force_flag = 1;
                break;

            case MOVE_EFFECT_RECOIL_BURN_HIT: // flare blitz
            case MOVE_EFFECT_RECOIL_PARALYZE_HIT:
                effect = MOVE_EFFECT_RECOIL_THIRD;
                sp->battlemon[sp->attack_client].sheer_force_flag = 1;
                break;

            default:
                sp->battlemon[sp->attack_client].sheer_force_flag = 0;
                break;
        }
    }

    JumpToMoveEffectScript(sp, 30, effect);

    return FALSE;
};

/**
 *  @brief script command to start the experience loop
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_27_shouldgetexp(void *bw, struct BattleStruct *sp)
{
    int adrs;
    u32 fight_type = BattleTypeGet(bw);
    //CLIENT_PARAM *cp = BattleWorkClientParamGet(bw, sp->fainting_client);

    IncrementBattleScriptPtr(sp,1);

    adrs = read_battle_script_param(sp);

    if((/*cp->client_type*/sp->fainting_client & 1) && ((fight_type & BATTLE_TYPE_NO_EXPERIENCE) == 0))
    {

// exp. calculation has been entirely moved to Task_DistributeExp_Extend as of the implementation of capture experience.


//#if EXPERIENCE_FORMULA_GEN < 5 || EXPERIENCE_FORMULA_GEN == 6 // flat exp rate.  we move this to the task calc itself if the scaled is enabled
//        int i;
//        int total_exp;
//        int mons_getting_exp = 0;
//        int mons_getting_exp_from_item = 0;
//        u16 item;
//        u32 totalexp;
//        int eqp;
//        struct PartyPokemon *pp;
//
//        for (i = 0; i < BattleWorkPokePartyGet(bw, 0)->count; i++)
//        {
//            pp = BattleWorkPokemonParamGet(bw, 0, i);
//            if ((GetMonData(pp, MON_DATA_SPECIES, NULL)) && (GetMonData(pp, MON_DATA_HP, NULL)))
//            {
//                if (sp->obtained_exp_right_flag[(sp->fainting_client >> 1) & 1] & No2Bit(i))
//                {
//                    mons_getting_exp++;
//                }
//
//                item = GetMonData(pp, MON_DATA_HELD_ITEM, NULL);
//                eqp = BattleItemDataGet(sp, item, 1);
//
//                if (eqp == HOLD_EFFECT_EXP_SHARE)
//                {
//                    mons_getting_exp_from_item++;
//                }
//            }
//        }
//        // multiply by 255/390 (map audino to 255) to not get massively inflated experience rates
//        totalexp = 255 * GetSpeciesBaseExp(sp->battlemon[sp->fainting_client].species, sp->battlemon[sp->fainting_client].form_no) / 390;//PokePersonalParaGet(sp->battlemon[sp->fainting_client].species, PERSONAL_EXP_YIELD);
//        totalexp = (totalexp * sp->battlemon[sp->fainting_client].level) / 7;
//        if (mons_getting_exp_from_item)
//        {
//            sp->obtained_exp = (totalexp / 2) / mons_getting_exp;
//            if (sp->obtained_exp == 0)
//            {
//                sp->obtained_exp = 1;
//            }
//            sp->exp_share_obtained_exp = (totalexp / 2) / mons_getting_exp_from_item;
//            if (sp->exp_share_obtained_exp == 0)
//            {
//                sp->exp_share_obtained_exp = 1;
//            }
//        }
//        else
//        {
//            sp->obtained_exp = totalexp / mons_getting_exp;
//            if (sp->obtained_exp == 0)
//            {
//                sp->obtained_exp = 1;
//            }
//            sp->exp_share_obtained_exp = 0;
//        }
//#endif

    }
    else
    {
        IncrementBattleScriptPtr(sp, adrs);
    }

    return FALSE;
}

// global variables to track experience
u8 scratchpad[4] = {0, 0, 0, 0};

#define monCount scratchpad[0]
#define monCountFromItem scratchpad[1]
#define trackPartyExperience scratchpad[2]

/**
 *  @brief task to distribute experience
 *
 *  @param arg0 task structure
 *  @param work exp calculator structure
 */
void Task_DistributeExp_Extend(void *arg0, void *work)
{
    struct EXP_CALCULATOR *expcalc = work;
#if EXPERIENCE_FORMULA_GEN == 5 || EXPERIENCE_FORMULA_GEN > 6 // scaled exp rate
    int sel_mons_no;
    struct PartyPokemon *pp = NULL;
    int client_no;
    struct Party *party = BattleWorkPokePartyGet(expcalc->bw, 0);
    int exp_client_no = 0;
    int item;
    int eqp;
    //u32 mons_getting_exp_from_item = 0;
    //u32 mons_getting_exp = 0;
    u32 totalexp = 0;

    client_no = (expcalc->sp->fainting_client >> 1) & 1;

    // count how many pokémon are getting experience
    if (!expcalc->work[6])
    {
        monCount = 0;
        monCountFromItem = 0;
        for (int i = 0; i < party->count; i++)
        {
            pp = BattleWorkPokemonParamGet(expcalc->bw, exp_client_no, i);
            if ((GetMonData(pp, MON_DATA_SPECIES, NULL)) && (GetMonData(pp, MON_DATA_HP, NULL)))
            {
                if (expcalc->sp->obtained_exp_right_flag[client_no /*(expcalc->sp->fainting_client >> 1) & 1*/] & No2Bit(i))
                {
                    monCount++;
                }

                item = GetMonData(pp, MON_DATA_HELD_ITEM, NULL);
                eqp = BattleItemDataGet(expcalc->sp, item, 1);

                if (eqp == HOLD_EFFECT_EXP_SHARE)
                {
                    monCountFromItem++;
                }
            }
        }
    }

    if (expcalc->seq_no < 37) // either this or switch to below.  this prevents NULL access though (ideally)
    {
        // grab the pokémon that is actually gaining the experience
        for (sel_mons_no = expcalc->work[6]; sel_mons_no < BattleWorkPokeCountGet(expcalc->bw, exp_client_no); sel_mons_no++)
        {
            pp = BattleWorkPokemonParamGet(expcalc->bw, exp_client_no, sel_mons_no);
            if (pp == NULL)
                goto _skipAllThis;
            item = GetMonData(pp, MON_DATA_HELD_ITEM, NULL);
            eqp = GetItemData(item, ITEM_PARAM_HOLD_EFFECT, 5);

            if ((eqp == HOLD_EFFECT_EXP_SHARE) || (expcalc->sp->obtained_exp_right_flag[client_no] & No2Bit(sel_mons_no)))
            {
                break;
            }
        }

        if (sel_mons_no < BattleWorkPokeCountGet(expcalc->bw, exp_client_no))
        {
            // actually calculate the experience
            u32 Lp = GetMonData(pp, MON_DATA_LEVEL, NULL); // this should contain the level of the person getting experience
            u32 level = expcalc->sp->battlemon[expcalc->sp->fainting_client].level; // need to calculate exp individually for each mon it seems

            totalexp = GetSpeciesBaseExp(expcalc->sp->battlemon[expcalc->sp->fainting_client].species, expcalc->sp->battlemon[expcalc->sp->fainting_client].form_no); // base experience
            totalexp = (totalexp * level) / 5;

            u32 top = (2*level + 10) * (2*level + 10); // tack on the square root later
            u32 bottom = (level + Lp + 10) * (level + Lp + 10) * sqrt(level + Lp + 10);

            totalexp *= top;
            totalexp /= bottom;
            totalexp = totalexp * sqrt(2*level + 10); // square root tacked on

            if (monCountFromItem)
            {
                expcalc->sp->obtained_exp = (totalexp / 2) / monCount;
                if (expcalc->sp->obtained_exp == 0)
                {
                    expcalc->sp->obtained_exp = 1;
                }
                expcalc->sp->exp_share_obtained_exp = (totalexp / 2) / monCountFromItem;
                if (expcalc->sp->exp_share_obtained_exp == 0)
                {
                    expcalc->sp->exp_share_obtained_exp = 1;
                }
            }
            else
            {
                expcalc->sp->obtained_exp = totalexp / monCount;
                if (expcalc->sp->obtained_exp == 0)
                {
                    expcalc->sp->obtained_exp = 1;
                }
                expcalc->sp->exp_share_obtained_exp = 0;
            }
        }
    }

#ifdef DEBUG_PRINT_EXPERIENCE_VALUES
    u8 buf[128];
    sprintf(buf, "[Task_DistributeExp_Extend] Scaled Rate - experience = %d, Lp = %d", expcalc->sp->obtained_exp, Lp);
    debugsyscall(buf);
    sprintf(buf, ", level = %d, totalexp = %d, ", level, totalexp);
    debugsyscall(buf);
    sprintf(buf, "top = %d, bottom = %d\n", top, bottom);
    debugsyscall(buf);
#endif

#else // EXPERIENCE_FORMULA_GEN < 5 || EXPERIENCE_FORMULA_GEN == 6 // flat exp rate needs to be calculated
    if (expcalc->seq_no != 38)
    {
        int i;
        int total_exp;
        //int mons_getting_exp = 0;
        //int mons_getting_exp_from_item = 0;
        u16 item;
        u32 totalexp;
        int eqp;
        struct Party *party = BattleWorkPokePartyGet(expcalc->bw, 0);
        struct PartyPokemon *pp;
        struct BattleStruct *sp = expcalc->sp;
        void *bw = expcalc->bw;
        int exp_client_no = 0;

        // count how many pokémon are getting experience
        if (!expcalc->work[6])
        {
            monCount = 0;
            monCountFromItem = 0;
            for (i = 0; i < party->count; i++)
            {
                pp = BattleWorkPokemonParamGet(bw, exp_client_no, i);
                if ((GetMonData(pp, MON_DATA_SPECIES, NULL)) && (GetMonData(pp, MON_DATA_HP, NULL)))
                {
                    monCount = 0;
                    monCountFromItem = 0;
                    if (sp->obtained_exp_right_flag[(sp->fainting_client >> 1) & 1] & No2Bit(i))
                    {
                        monCount++;
                    }

                    item = GetMonData(pp, MON_DATA_HELD_ITEM, NULL);
                    eqp = BattleItemDataGet(sp, item, 1);

                    if (eqp == HOLD_EFFECT_EXP_SHARE)
                    {
                        monCountFromItem++;
                    }
                }
            }
        }
        // multiply by 255/390 (map audino to 255) to not get massively inflated experience rates
        totalexp = 255 * GetSpeciesBaseExp(sp->battlemon[sp->fainting_client].species, sp->battlemon[sp->fainting_client].form_no) / 390;//PokePersonalParaGet(sp->battlemon[sp->fainting_client].species, PERSONAL_EXP_YIELD);
        totalexp = (totalexp * sp->battlemon[sp->fainting_client].level) / 7;
        if (monCountFromItem)
        {
            sp->obtained_exp = (totalexp / 2) / monCount;
            if (sp->obtained_exp == 0)
            {
                sp->obtained_exp = 1;
            }
            sp->exp_share_obtained_exp = (totalexp / 2) / monCountFromItem;
            if (sp->exp_share_obtained_exp == 0)
            {
                sp->exp_share_obtained_exp = 1;
            }
        }
        else
        {
            sp->obtained_exp = totalexp / monCount;
            if (sp->obtained_exp == 0)
            {
                sp->obtained_exp = 1;
            }
            sp->exp_share_obtained_exp = 0;
        }
    }

#ifdef DEBUG_PRINT_EXPERIENCE_VALUES
    u8 buf[128];
    sprintf(buf, "[Task_DistributeExp_Extend] Flat Rate - experience = %d", sp->obtained_exp);
#endif

#endif

_skipAllThis:
    Task_DistributeExp(arg0, work);
}



#ifdef IMPLEMENT_CAPTURE_EXPERIENCE

extern u32 gKeepStructureCallbackIntact;
u32 ALIGN4 store_current_exp_step = 0;
u32 ALIGN4 store_work_params[8] = {0, 0, 0, 0, 0, 0, 0, 0};

#endif // IMPLEMENT_CAPTURE_EXPERIENCE

/**
 *  @brief task to distribute capture experience
 *
 *  @param arg0 task structure
 *  @param work
 *  @param get_client_no battler about to faint
 *  @return FALSE if no experience is distributed; else TRUE
 */
BOOL Task_DistributeExp_capture_experience(void *arg0, void *work, u32 get_client_no)
{
#ifdef IMPLEMENT_CAPTURE_EXPERIENCE

    BOOL ret = FALSE;
    u32 original_work_params[NELEMS(store_work_params)];
    struct EXP_CALCULATOR *expcalc = work;

    if (BattleTypeGet(expcalc->bw) & BATTLE_TYPE_NO_EXPERIENCE)
        return TRUE;

    gKeepStructureCallbackIntact = 1; // signal to experience callback that it shouldn't delete the overall pokemon-getting callback since we're technically a parasite here

    // first step:  store the required variables
    u32 store_fainting_client = expcalc->sp->fainting_client;
    expcalc->seq_no = store_current_exp_step;
    for (int i = 0; i < (s32)NELEMS(store_work_params); i++)
    {
        original_work_params[i] = expcalc->work[i];
    }

    // second step:  overwrite required vars for exp calculation.  part is also done in for loop above, oh well
    expcalc->sp->fainting_client = get_client_no;
    for (int i = 0; i < (s32)NELEMS(store_work_params); i++)
    {
        expcalc->work[i] = store_work_params[i];
    }

    if (expcalc->seq_no == 0) // set first pokemon gaining experience to a specific one so that it doesn't try to give experience to something that doesn't need it
    {
        int sel_mons_no, item, eqp;
        struct PartyPokemon *pp;

        // grab the pokémon that is actually gaining the experience, factor in experience share here because i don't want to expose the whole main task
        for (sel_mons_no = 0; sel_mons_no < BattleWorkPokeCountGet(expcalc->bw, 0); sel_mons_no++)
        {
            if (!(trackPartyExperience & No2Bit(sel_mons_no))) // if party index has not already been looped over
            {
                pp = BattleWorkPokemonParamGet(expcalc->bw, 0, sel_mons_no);
                if (pp == NULL)
                {
                    expcalc->work[6] = BattleWorkPokeCountGet(expcalc->bw, 0);
                    break;
                }
                item = GetMonData(pp, MON_DATA_HELD_ITEM, NULL);
                eqp = GetItemData(item, ITEM_PARAM_HOLD_EFFECT, 5);

                if ((eqp == HOLD_EFFECT_EXP_SHARE) || (expcalc->sp->obtained_exp_right_flag[(expcalc->sp->fainting_client >> 1) & 1] & No2Bit(sel_mons_no)))
                {
                    expcalc->work[6] = sel_mons_no;
                    trackPartyExperience |= No2Bit(sel_mons_no);
                    break;
                }
            }
        }
        if (sel_mons_no >= BattleWorkPokeCountGet(expcalc->bw, 0)) // invalid party index will end the task
            expcalc->work[6] = sel_mons_no;
    }

    // third step:  run current step of exp distribution
    Task_DistributeExp_Extend(arg0, expcalc);


    // fourth step:  if exp has finished, reset exp vars and return TRUE so that the parent function can move forward
    if (expcalc->seq_no == 38) // force nothing else to run
    {
        ret = TRUE;

        store_current_exp_step = 0;
        for (int i = 0; i < (s32)NELEMS(store_work_params); i++) // reset and pass back to main func
        {
            store_work_params[i] = 0;
            expcalc->work[i] = original_work_params[i];
        }
    }
    else // otherwise store the exp step to the variable, restore work params, pass back to main func
    {
        store_current_exp_step = expcalc->seq_no;
        for (int i = 0; i < (s32)NELEMS(store_work_params); i++)
        {
            store_work_params[i] = expcalc->work[i];
            expcalc->work[i] = original_work_params[i];
        }
    }
    expcalc->sp->fainting_client = store_fainting_client; // restore fainting_client to probably 0 but i'm not 100% certain

    expcalc->seq_no = 10; // restore pokemon get sequence to the current state, which is the wait for pokemon step

    return ret;

#endif // IMPLEMENT_CAPTURE_EXPERIENCE
}

/**
 *  @brief script command to set up the stat boost animation/message
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_33_statbuffchange(void *bw, struct BattleStruct *sp)
{
    int address1;
    int address2;
    int address3;
    int stattochange;
    int statchange;
    int flag;
    struct BattlePokemon *battlemon = &sp->battlemon[sp->state_client];

    IncrementBattleScriptPtr(sp, 1);

    address1 = read_battle_script_param(sp);
    address2 = read_battle_script_param(sp);
    address3 = read_battle_script_param(sp);

    flag = 0;

    sp->server_status_flag &= ~(SERVER_STATUS_FLAG_STAT_CHANGE_NEGATIVE);

        //2 steps down
    if (sp->addeffect_param >= ADD_STATE_ATTACK_DOWN_2)
    {
        stattochange = sp->addeffect_param - ADD_STATE_ATTACK_DOWN_2;
        statchange = -2;
        sp->temp_work = STATUS_EFF_DOWN;
    }
        //2 steps up
    else if (sp->addeffect_param >= ADD_STATE_ATTACK_UP_2)
    {
        stattochange = sp->addeffect_param - ADD_STATE_ATTACK_UP_2;
        statchange = 2;
        sp->temp_work = STATUS_EFF_UP;
    }
        //1 step down
    else if (sp->addeffect_param >= ADD_STATE_ATTACK_DOWN)
    {
        stattochange = sp->addeffect_param - ADD_STATE_ATTACK_DOWN;
        statchange = -1;
        sp->temp_work = STATUS_EFF_DOWN;
    }
        //1 step up
    else
    {
        stattochange = sp->addeffect_param - ADD_STATE_ATTACK_UP;
        statchange = 1;
        sp->temp_work = STATUS_EFF_UP;
    }

    if (battlemon->ability == ABILITY_CONTRARY)
    {
        //statchange
        statchange = -statchange;

        //sp->temp_work
        if(sp->temp_work == STATUS_EFF_UP)
        {
            sp->temp_work= STATUS_EFF_DOWN;
        }
        else if(sp->temp_work == STATUS_EFF_DOWN)
        {
            sp->temp_work= STATUS_EFF_UP;
        }
    }

    // try and handle defiant lol
    if ((GetBattlerAbility(sp, sp->state_client) == ABILITY_DEFIANT || GetBattlerAbility(sp, sp->state_client) == ABILITY_COMPETITIVE)
     && sp->oneSelfFlag[sp->state_client].defiant_flag == 0
     && statchange < 0
     && sp->state_client != sp->attack_client // can't raise own stats
     && sp->state_client != BattleWorkPartnerClientNoGet(bw, sp->attack_client) // can't raise partner's stats
     && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
     && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
     && ((sp->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0))
    {
        sp->oneSelfFlag[sp->state_client].defiant_flag = 1;
    }
    else
    {
        sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
    }


    if (statchange > 0)
    {
        if (battlemon->states[STAT_ATTACK + stattochange] == 12)
        {
            sp->server_status_flag |= SERVER_STATUS_FLAG_STAT_CHANGE_NEGATIVE;

            if ((sp->addeffect_type == ADD_EFFECT_INDIRECT)
             || (sp->addeffect_type == ADD_EFFECT_ABILITY))
            {
                IncrementBattleScriptPtr(sp, address2);
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                return FALSE;
            }
            else
            {
                sp->mp.msg_id = BATTLE_MSG_STAT_WONT_GO_HIGHER;
                sp->mp.msg_tag = TAG_NICK_STAT;
                sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                sp->mp.msg_para[1] = STAT_ATTACK + stattochange;
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                IncrementBattleScriptPtr(sp, address1);
                return FALSE;
            }
        }
        else
        {
            if (sp->addeffect_type == ADD_EFFECT_ABILITY)
            {
                switch (statchange)
                {
                case 1:
                    sp->mp.msg_id = BATTLE_MSG_ABILITY_RAISED_STAT;
                    break;
                case 2:
                    sp->mp.msg_id = BATTLE_MSG_ABILITY_RAISED_STAT_SHARPLY;
                    break;
                default:
                    sp->mp.msg_id = BATTLE_MSG_ABILITY_RAISED_STAT_DRASTICALLY;
                    break;
                }
                sp->mp.msg_tag = TAG_NICK_ABILITY_STAT;
                sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                sp->mp.msg_para[2] = STAT_ATTACK + stattochange;
            }
            else if (sp->addeffect_type == ADD_EFFECT_HELD_ITEM)
            {
                sp->mp.msg_id = BATTLE_MSG_ITEM_RAISED_STAT;
                sp->mp.msg_tag = TAG_NICK_ITEM_STAT;
                sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                sp->mp.msg_para[1] = sp->item_work;
                sp->mp.msg_para[2] = STAT_ATTACK + stattochange;
            }
            else
            {
                switch (statchange)
                {
                case 1:
                    sp->mp.msg_id = BATTLE_MSG_STAT_RAISED;
                    break;
                case 2:
                    sp->mp.msg_id = BATTLE_MSG_STAT_RAISED_SHARPLY;
                    break;
                default:
                    sp->mp.msg_id = BATTLE_MSG_STAT_RAISED_DRASTICALLY;
                    break;
                }
                sp->mp.msg_tag = TAG_NICK_STAT;
                sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                sp->mp.msg_para[1] = STAT_ATTACK + stattochange;
            }
            battlemon->states[STAT_ATTACK + stattochange] += statchange;
            if (battlemon->states[STAT_ATTACK + stattochange] > 12)
            {
                battlemon->states[STAT_ATTACK + stattochange] = 12;
            }
        }
    }
    else
    {
        if ((sp->addeffect_flag & ADD_STATUS_NO_ABILITY) == 0)
        {
            if (sp->attack_client != sp->state_client)
            {
                if (sp->scw[IsClientEnemy(bw, sp->state_client)].mistCount)
                {
                    sp->mp.msg_id = BATTLE_MSG_PROTECTED_BY_MIST;
                    sp->mp.msg_tag = TAG_NICK;
                    sp->mp.msg_para[0] = CreateNicknameTag(sp,sp->state_client);
                    flag = 1;
                }
                else if ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_FLOWER_VEIL) == TRUE
                       || MoldBreakerAbilityCheck(sp, sp->attack_client, BATTLER_ALLY(sp->state_client), ABILITY_FLOWER_VEIL) == TRUE) // any enemy has flower veil (accounting for mold breaker, otherwise would just CheckSideAbility)
                      && (sp->battlemon[sp->state_client].type1 == TYPE_GRASS || sp->battlemon[sp->state_client].type2 == TYPE_GRASS)) // and target has grass type
                {
                    // specifically for flower veil, we know that one of the Pokémon have flower veil.  we need to change the client that it prints the ability of to the flower veil client
                    u32 flower_veil_client;

                    flower_veil_client = (GetBattlerAbility(sp, sp->state_client) == ABILITY_FLOWER_VEIL) ? sp->state_client : BATTLER_ALLY(sp->state_client);

                    if (sp->addeffect_type == ADD_EFFECT_ABILITY)
                    {
                        sp->mp.msg_id = BATTLE_MSG_ABILITY_SUPPRESSES_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICK_ABILITY_NICK_ABILITY;
                        sp->mp.msg_para[0] = CreateNicknameTag(sp, flower_veil_client);
                        sp->mp.msg_para[1] = sp->battlemon[flower_veil_client].ability;
                        sp->mp.msg_para[2] = CreateNicknameTag(sp, sp->attack_client);
                        sp->mp.msg_para[3] = sp->battlemon[sp->attack_client].ability;
                    }
                    else
                    {
                        sp->mp.msg_id = BATTLE_MSG_PREVENTS_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICK_ABILITY;
                        sp->mp.msg_para[0] = CreateNicknameTag(sp, flower_veil_client);
                        sp->mp.msg_para[1] = sp->battlemon[flower_veil_client].ability;
                    }
                    flag = 1;
                }
                else if ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_CLEAR_BODY) == TRUE)
                      || (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_WHITE_SMOKE) == TRUE)
                      || (GetBattlerAbility(sp, sp->state_client) == ABILITY_FULL_METAL_BODY))   // Full Metal Body cannot be ignored
                {
                    if (sp->addeffect_type == ADD_EFFECT_ABILITY)
                    {
                        sp->mp.msg_id = BATTLE_MSG_ABILITY_SUPPRESSES_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICK_ABILITY_NICK_ABILITY;
                        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                        sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                        sp->mp.msg_para[2] = CreateNicknameTag(sp, sp->attack_client);
                        sp->mp.msg_para[3] = sp->battlemon[sp->attack_client].ability;
                    }
                    else
                    {
                        sp->mp.msg_id = BATTLE_MSG_PREVENTS_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICK_ABILITY;
                        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                        sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                    }
                    flag = 1;
                }
                else if (((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_KEEN_EYE) == TRUE)
                       && ((STAT_ATTACK + stattochange) == STAT_ACCURACY))
                      || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_HYPER_CUTTER) == TRUE)
                       && ((STAT_ATTACK + stattochange) == STAT_ATTACK))
                       || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_BIG_PECKS) == TRUE)
                       && ((STAT_ATTACK + stattochange) == STAT_DEFENSE)))
                    {
                    if (sp->addeffect_type == ADD_EFFECT_ABILITY)
                    {
                        sp->mp.msg_id = BATTLE_MSG_ABILITY_SUPPRESSES_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICK_ABILITY_NICK_ABILITY;
                        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                        sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                        sp->mp.msg_para[2] = CreateNicknameTag(sp, sp->attack_client);
                        sp->mp.msg_para[3] = sp->battlemon[sp->attack_client].ability;
                    }
                    else
                    {
                        sp->mp.msg_id = BATTLE_MSG_ITEM_PREVENTS_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICK_ABILITY_STAT;
                        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                        sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                        sp->mp.msg_para[2] = STAT_ATTACK + stattochange;
                    }
                    flag = 1;
                }
                else if (battlemon->states[STAT_ATTACK + stattochange] == 0)
                {
                    sp->server_status_flag |= SERVER_STATUS_FLAG_STAT_CHANGE_NEGATIVE;
                    if ((sp->addeffect_type == ADD_EFFECT_INDIRECT)
                     || (sp->addeffect_type == ADD_EFFECT_ABILITY))
                    {
                        sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                        IncrementBattleScriptPtr(sp, address2);
                        return FALSE;
                    }
                    else
                    {
                        sp->mp.msg_id = BATTLE_MSG_STAT_WONT_GO_LOWER;
                        sp->mp.msg_tag = TAG_NICK_STAT;
                        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                        sp->mp.msg_para[1] = STAT_ATTACK + stattochange;
                        sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                        IncrementBattleScriptPtr(sp, address1);
                        return FALSE;
                    }
                }
                else if ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_SHIELD_DUST) == TRUE)
                      && (sp->addeffect_type == ADD_EFFECT_INDIRECT))
                {
                    flag = 1;
                }
                else if (sp->battlemon[sp->state_client].condition2 & STATUS2_SUBSTITUTE)
                {
                    flag = 2;
                }
            }
            else if (battlemon->states[STAT_ATTACK + stattochange] == 0)
            {
                sp->server_status_flag |= SERVER_STATUS_FLAG_STAT_CHANGE_NEGATIVE;
                if ((sp->addeffect_type == ADD_EFFECT_INDIRECT)
                 || (sp->addeffect_type == ADD_EFFECT_ABILITY))
                {
                    sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                    IncrementBattleScriptPtr(sp, address2);
                    return FALSE;
                }
                else
                {
                    sp->mp.msg_id = BATTLE_MSG_STAT_WONT_GO_LOWER;
                    sp->mp.msg_tag = TAG_NICK_STAT;
                    sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
                    sp->mp.msg_para[1] = STAT_ATTACK + stattochange;
                    sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                    IncrementBattleScriptPtr(sp, address1);
                    return FALSE;
                }
            }
            if ((flag == 2) && (sp->addeffect_type == ADD_STATUS_DIRECT))
            {
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                IncrementBattleScriptPtr(sp, address3);
                return FALSE;
            }
            else if ((flag) && (sp->addeffect_type == ADD_EFFECT_INDIRECT))
            {
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                IncrementBattleScriptPtr(sp, address2);
                return FALSE;
            }
            else if (flag)
            {
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                IncrementBattleScriptPtr(sp, address1);
                return FALSE;
            }
        }
        if (sp->addeffect_type == ADD_EFFECT_ABILITY && sp->client_work == sp->state_client)
        {
            sp->mp.msg_id = BATTLE_MSG_ABILITY_LOWERED_ITS_OWN_STAT;
            sp->mp.msg_tag = TAG_NICK_ABILITY_STAT;
            sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->client_work);
            sp->mp.msg_para[1] = sp->battlemon[sp->client_work].ability;
            sp->mp.msg_para[2] = STAT_ATTACK + stattochange;
        }
        else if (sp->addeffect_type == ADD_EFFECT_ABILITY)
        {
            sp->mp.msg_id = BATTLE_MSG_ATK_ABILITY_CUTS_MON_STAT;
            sp->mp.msg_tag = TAG_NICK_ABILITY_NICK_STAT;
            sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->attack_client);
            sp->mp.msg_para[1] = sp->battlemon[sp->attack_client].ability;
            sp->mp.msg_para[2] = CreateNicknameTag(sp, sp->state_client);
            sp->mp.msg_para[3] = STAT_ATTACK + stattochange;
        }
        // certain abilities fuck it up.  this fixes them
        else if (sp->addeffect_type == ADD_EFFECT_PRINT_WORK_ABILITY)
        {
            sp->mp.msg_id = BATTLE_MSG_ATK_ABILITY_CUTS_MON_STAT;
            sp->mp.msg_tag = TAG_NICK_ABILITY_NICK_STAT;
            sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->client_work);
            sp->mp.msg_para[1] = sp->battlemon[sp->client_work].ability;
            sp->mp.msg_para[2] = CreateNicknameTag(sp, sp->state_client);
            sp->mp.msg_para[3] = STAT_ATTACK+stattochange;
        }
        else
        {
            sp->mp.msg_id = ((statchange == -1) ? BATTLE_MSG_STAT_FELL : BATTLE_MSG_STAT_HARSHLY_FELL);
            sp->mp.msg_tag = TAG_NICK_STAT;
            sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->state_client);
            sp->mp.msg_para[1] = STAT_ATTACK + stattochange;
        }

        battlemon->states[STAT_ATTACK + stattochange] += statchange;
        if (battlemon->states[STAT_ATTACK + stattochange] < 0)
        {
            battlemon->states[STAT_ATTACK + stattochange] = 0;
        }
    }

    return 0;
}

/**
 *  @brief script command to handle one-hit ko moves
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_54_ohko_move_handle(void *bw, struct BattleStruct *sp)
{
    u16 hit;
    IncrementBattleScriptPtr(sp,1);

    sp->server_status_flag |= SERVER_STATUS_FLAG_OTHER_ACCURACY_CALC;

    if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_STURDY) == TRUE)
    {
        sp->waza_status_flag |= MOVE_STATUS_FLAG_NO_OHKO;
    }
    else{
        if(((sp->battlemon[sp->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_LOCK_ON) == 0)
            && (GetBattlerAbility(sp,sp->attack_client) != ABILITY_NO_GUARD)
            && (GetBattlerAbility(sp,sp->defence_client) != ABILITY_NO_GUARD))
        {
            hit = sp->moveTbl[sp->current_move_index].accuracy + (sp->battlemon[sp->attack_client].level - sp->battlemon[sp->defence_client].level);
            if (((BattleRand(bw) % 100) < hit)
             && (sp->battlemon[sp->attack_client].level >= sp->battlemon[sp->defence_client].level))
            {
                hit = 1;
            }
            else
            {
                hit = 0;
            }
        }
        else
        {
            if ((((sp->battlemon[sp->defence_client].moveeffect.battlerIdLockOn == sp->attack_client) && (sp->battlemon[sp->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_LOCK_ON))
                    || (GetBattlerAbility(sp,sp->attack_client) == ABILITY_NO_GUARD)
                    || (GetBattlerAbility(sp,sp->defence_client) == ABILITY_NO_GUARD))
                && (sp->battlemon[sp->attack_client].level >= sp->battlemon[sp->defence_client].level))
            {
                hit = 1;
            }
            else
            {
                hit = sp->moveTbl[sp->current_move_index].accuracy + (sp->battlemon[sp->attack_client].level - sp->battlemon[sp->defence_client].level);
                if(((BattleRand(bw) % 100) < hit)
                    && (sp->battlemon[sp->attack_client].level >= sp->battlemon[sp->defence_client].level))
                {
                    hit = 1;
                }
                else
                {
                    hit = 0;
                }
            }
            sp->waza_status_flag |= MOVE_STATUS_FLAG_LOCK_ON;
        }
        if (hit)
        {
            sp->damage = sp->battlemon[sp->defence_client].hp * -1;
            sp->waza_status_flag |= MOVE_STATUS_FLAG_OHKO_HIT;
        }
        else
        {
            if(sp->battlemon[sp->attack_client].level >= sp->battlemon[sp->defence_client].level)
            {
                sp->waza_status_flag |= FLAG_CONTACT;
            }
            else
            {
                sp->waza_status_flag |= MOVE_STATUS_FLAG_OHKO_HIT_NOHIT;
            }
        }
    }

    return FALSE;
}


/**
 *  @brief checks if the given moveNo is a two-turn move at all
 *
 *  @param sp global battle structure
 *  @param moveNo move index to check against a list of move effects that are charge moves
 */
BOOL CheckMoveIsChargeMove(struct BattleStruct *sp, int moveNo) {
    switch (sp->moveTbl[moveNo].effect) {
    case MOVE_EFFECT_BIDE:
    case MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT:
    case MOVE_EFFECT_CHARGE_TURN_HIGH_CRIT_FLINCH:
    case MOVE_EFFECT_CHARGE_TURN_DEF_UP:
    case MOVE_EFFECT_CHARGE_TURN_SUN_SKIPS:
    case MOVE_EFFECT_FLY:
    case MOVE_EFFECT_DIVE:
    case MOVE_EFFECT_DIG:
    case MOVE_EFFECT_BOUNCE:
    case MOVE_EFFECT_SHADOW_FORCE:
        return TRUE;
    }
    return FALSE;
// make sure to add geomancy here
}


u16 SleepTalkBanList[] =
{
    MOVE_ASSIST,
    MOVE_BELCH,
    MOVE_BEAK_BLAST,
    MOVE_COPYCAT,
    MOVE_DYNAMAX_CANNON,
    MOVE_FREEZE_SHOCK,
    MOVE_FOCUS_PUNCH,
    MOVE_ICE_BURN,
    MOVE_ME_FIRST,
    MOVE_METRONOME,
    MOVE_MIRROR_MOVE,
    MOVE_MIMIC,
    MOVE_SHELL_TRAP,
    MOVE_SKETCH,
    MOVE_STRUGGLE,
    MOVE_UPROAR,
};


/**
 *  @brief checks if the given moveNo is a two-turn move at all
 *
 *  @param sp global battle structure
 *  @param moveNo move index to check against a list of move effects that are charge moves
 */
BOOL CanSleepTalkCallMove(struct BattleStruct *sp, u32 move)
{
    if (CheckMoveCallsOtherMove(move) || CheckMoveIsChargeMove(sp, move) || move > NUM_OF_MOVES)
    {
        return FALSE;
    }

    for (u32 i = 0; i < NELEMS(SleepTalkBanList); i++)
    {
        if (move == SleepTalkBanList[i]) return FALSE;
    }
    return TRUE;
}


/**
 *  @brief script command to perform sleep talk's effect of redirecting to another move
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_5f_trysleeptalk(void *bw, struct BattleStruct *sp) {
    u32 moveIndex, nonSelectableMoves;

    IncrementBattleScriptPtr(sp, 1);

    u32 adrs = read_battle_script_param(sp);

    nonSelectableMoves = 0;

    for (moveIndex = 0; moveIndex < 4; moveIndex++) {
        if (!CanSleepTalkCallMove(sp, sp->battlemon[sp->attack_client].move[moveIndex]))
        {
            nonSelectableMoves |= No2Bit(moveIndex);
        }
    }

    nonSelectableMoves = StruggleCheck(bw, sp, sp->attack_client, nonSelectableMoves, ~2);

    if (nonSelectableMoves == 0xF) {
        IncrementBattleScriptPtr(sp, adrs);
    } else {
        do {
            moveIndex = BattleRand(bw) % 4;
        } while (No2Bit(moveIndex) & nonSelectableMoves);
        sp->waza_work = sp->battlemon[sp->attack_client].move[moveIndex];
    }

    return FALSE;
}


/**
 *  @brief script command to calculate the base power of Fury Cutter
 *  @brief and set the counter for Fury Cutter
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_6f_fury_cutter_damage_calc(void *bw UNUSED, struct BattleStruct *sp) {
    // probably no need to use int?
    u8 i;

    IncrementBattleScriptPtr(sp, 1);

    if (sp->battlemon[sp->attack_client].moveeffect.furyCutterCount < 3 &&
        // the second hit for Parental Bond doesn't increase the counter
        sp->battlemon[sp->attack_client].parental_bond_flag != 2) {
        sp->battlemon[sp->attack_client].moveeffect.furyCutterCount++;
    }

    sp->damage_power = sp->moveTbl[sp->current_move_index].power;

    for (i = 1; i < sp->battlemon[sp->attack_client].moveeffect.furyCutterCount; i++) {
        sp->damage_power *= 2;
    }

    return FALSE;
}

/**
 *  @brief script command to calculate the damage done by beat up
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_7c_beat_up_damage_calc(void *bw, struct BattleStruct *sp)
{
    int species, form, number_of_hits;
    s32 newBaseDamage;
    struct PartyPokemon *mon;

    IncrementBattleScriptPtr(sp, 1);

    int partyCount = Battle_GetClientPartySize(bw, sp->attack_client);

    if (sp->multi_hit_count_temp == 0) {

        sp->multi_hit_count_temp = 2;
        sp->loop_hit_check = 0xFD;
        sp->beat_up_count = 0;
        mon = Battle_GetClientPartyMon(bw, sp->attack_client, sp->beat_up_count);

        while(sp->beat_up_count != sp->sel_mons_no[sp->attack_client] &&
                (GetMonData(mon, MON_DATA_HP, 0) == 0 ||
                GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) == 0||
                GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) == 494 ||
                GetMonData(mon, MON_DATA_STATUS, 0) != 0))
                {

            sp->beat_up_count++;
            mon = Battle_GetClientPartyMon(bw, sp->attack_client, sp->beat_up_count);

        }
    }

    mon = Battle_GetClientPartyMon(bw, sp->attack_client, sp->beat_up_count);
    species = GetMonData(mon, MON_DATA_SPECIES, 0);
    form = GetMonData(mon, MON_DATA_FORM, 0);

    newBaseDamage = PokeFormNoPersonalParaGet(species, form, PERSONAL_BASE_ATTACK);
    newBaseDamage /= 10;
    sp->damage_power = 5;
    sp->damage_power += newBaseDamage;

    sp->beat_up_count++;
    sp->multi_hit_count = 2;
    number_of_hits = sp->beat_up_count;

    if (sp->beat_up_count < partyCount) {

        mon = Battle_GetClientPartyMon(bw, sp->attack_client, sp->beat_up_count);

        while(sp->beat_up_count != sp->sel_mons_no[sp->attack_client] &&
                (GetMonData(mon, MON_DATA_HP, 0) == 0 ||
                GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) == 0 ||
                GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0) == 494 ||
                GetMonData(mon, MON_DATA_STATUS, 0) != 0))
                {

            sp->beat_up_count++;
            mon = Battle_GetClientPartyMon(bw, sp->attack_client, sp->beat_up_count);

            if (sp->beat_up_count >= partyCount) {
                sp->multi_hit_count = 1;
                sp->multi_hit_count_temp = number_of_hits;
                break;
            }

        }
    } else {
        sp->multi_hit_count = 1;
        sp->multi_hit_count_temp = number_of_hits;
    }

    return FALSE;
}

/**
 *  @brief script command to carry out the effects of knock off
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_87_tryknockoff(void *bw UNUSED, struct BattleStruct *sp)
{
    IncrementBattleScriptPtr(sp, 1);

    u32 adrs = read_battle_script_param(sp);
    //u32 side = IsClientEnemy(bw, sp->defence_client);
    u32 item = sp->battlemon[sp->defence_client].item;

    // sticky hold and substitute will keep the mon's held item, but the damage boost will still apply
    if (sp->battlemon[sp->defence_client].item && MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_STICKY_HOLD) == TRUE)
    {
        sp->mp.msg_id = BATTLE_MSG_ABILITY_MADE_MOVE_INEFFECTIVE;
        sp->mp.msg_tag = TAG_NICK_ABILITY_MOVE;
        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->defence_client);
        sp->mp.msg_para[1] = sp->battlemon[sp->defence_client].ability;
        sp->mp.msg_para[2] = sp->current_move_index;
    }
    else if (CanKnockOffApply(sp))
    {
        sp->mp.msg_id = BATTLE_MSG_MON_KNOCKED_OFF_ITEM;
        sp->mp.msg_tag = TAG_NICK_NICK_ITEM;
        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->attack_client);
        sp->mp.msg_para[1] = CreateNicknameTag(sp, sp->defence_client);
        sp->mp.msg_para[2] = item;
        sp->battlemon[sp->defence_client].item = 0;
        // update:  no longer render further items unusable--just set the item to 0 here
        //sp->scw[side].knockoff_item |= No2Bit(sp->sel_mons_no[sp->defence_client]);
    } else {
        IncrementBattleScriptPtr(sp, adrs);
    }

    return FALSE;
}

const u16 sLowKickWeightToPower[][2] =
{
    {   100,     20}, //   0- 10 kg ->  20 bp
    {   250,     40}, //  10- 25 kg ->  40 bp
    {   500,     60}, //  25- 50 kg ->  60 bp
    {  1000,     80}, //  50-100 kg ->  80 bp
    {  2000,    100}, // 100-200 kg -> 100 bp
    {0xFFFF, 0xFFFF},
};

/**
 *  @brief grab a battler's weight
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param client battler whose weight to grab
 *  @return battler's weight
 */
s32 GetPokemonWeight(void *bw UNUSED, struct BattleStruct *sp, u32 client)
{
    s32 weight;

    weight = sp->battlemon[client].weight;

    if (GetBattlerAbility(sp, client) == ABILITY_HEAVY_METAL)
    {
        weight *= 2;
    }
    else if (GetBattlerAbility(sp, client) == ABILITY_LIGHT_METAL)
    {
        weight /= 2;
    }

    return weight;
}

/**
 *  @brief script command to calculate the damage done by low kick/grass knot
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_8c_lowkickdamagecalc(void *bw, struct BattleStruct *sp)
{
    int i;
    int weight;

    IncrementBattleScriptPtr(sp, 1);

    i = 0;

    weight = GetPokemonWeight(bw, sp, sp->defence_client);

    while (sLowKickWeightToPower[i][0] != 0xFFFF)
    {
        if (sLowKickWeightToPower[i][0] >= weight)
        {
            break;
        }
        i++;
    }

    if (sLowKickWeightToPower[i][0] != 0xFFFF)
    {
        sp->damage_power = sLowKickWeightToPower[i][1];
    }
    else
    {
        sp->damage_power = 120;
    }

    return FALSE;
}

/**
 *  @brief script command to check if the attack should leave the target with 1 hp
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_d0_checkshouldleavewith1hp(void *bw, struct BattleStruct *sp)
{
    int side, client_no, holdeffect;
    int atk;
    int flag = 0;

    IncrementBattleScriptPtr(sp, 1);
    side = read_battle_script_param(sp);

    client_no = GrabClientFromBattleScriptParam(bw, sp, side);
    holdeffect = HeldItemHoldEffectGet(sp,client_no);
    atk = HeldItemAtkGet(sp, client_no, ATK_CHECK_NORMAL);

    if ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_STURDY) == TRUE) && (sp->battlemon[client_no].hp == (s32)sp->battlemon[client_no].maxhp))
    {
        flag = 2;
    }
    else if ((holdeffect == HOLD_EFFECT_FOCUS_BAND) && ((BattleRand(bw) % 100) < atk))
    {
        flag = 1;
    }
    else if ((holdeffect == HOLD_EFFECT_HP_MAX_SURVIVE_1_HP) && (sp->battlemon[client_no].hp == (s32)sp->battlemon[client_no].maxhp))
    {
        flag = 1;
    }
    if (flag)
    {
        if ((sp->battlemon[client_no].hp + sp->hp_calc_work) <= 0)
        {
            sp->hp_calc_work = (sp->battlemon[client_no].hp - 1) * -1;
            if (flag != 2)
                sp->waza_status_flag |= MOVE_STATUS_FLAG_HELD_ON_ITEM;
            else
                sp->waza_status_flag |= MOVE_STATUS_FLAG_HELD_ON_ABILITY;
        }
    }

    return FALSE;
}

/**
 *  @brief script command to handle natural cure.  expanded for meloetta/regenerator
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_d1_trynaturalcure(void *bw, struct BattleStruct *sp)
{
    int side, client_no, address, ability, condition;
    struct PartyPokemon *pp;

    IncrementBattleScriptPtr(sp, 1);
    side = read_battle_script_param(sp);
    address = read_battle_script_param(sp);

    client_no = GrabClientFromBattleScriptParam(bw, sp, side);
    if ((sp->battlemon[client_no].hp) && (sp->sel_mons_no[client_no] != 6))
    {
        pp = BattleWorkPokemonParamGet(bw, client_no, sp->sel_mons_no[client_no]);
        ability = GetMonData(pp, MON_DATA_ABILITY, NULL);
        condition = GetMonData(pp, MON_DATA_STATUS, NULL);

        // handle meloetta pirouette form changing back to normal when switched out
        if ((sp->battlemon[client_no].species == SPECIES_MELOETTA)
         && (sp->battlemon[client_no].form_no != 0))
        {
            u32 form_no = 0;
            sp->battlemon[client_no].form_no = form_no;
            BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
            SetMonData(pp, MON_DATA_FORM, (u8 *)&form_no);
        }

        // natural cure is checked for here but handled by SwitchAbilityStatusRecoverCheck/the battle scripts this command is used in
        if ((sp->battlemon[client_no].ability != ABILITY_NATURAL_CURE)
         && (CheckStatusRecoverFromAbilityOnSwitch(sp, ability, condition) == FALSE))
        {
            IncrementBattleScriptPtr(sp, address);
        }

        // handle regenerator--mon restores 1/3 hp on switch
        if (ability == ABILITY_REGENERATOR) // switching mon ability is regenerator--not affected by gastro acid or etc
        {
            int hp = GetMonData(pp, MON_DATA_HP, NULL), hpmax = GetMonData(pp, MON_DATA_MAXHP, NULL);

            int hpdelta = hpmax / 3;

            if ((hp + hpdelta) > hpmax)
                hp = hpmax;
            else
                hp += hpdelta;

            SetMonData(pp, MON_DATA_HP, (u8 *)&hp);
        }
    }
    else
    {
        IncrementBattleScriptPtr(sp, address);
    }

    return FALSE;
}


// NEW BATTLE SCRIPT COMMANDS

/**
 *  @brief script command to reduce a battler's weight
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_E1_reduceweight(void *bw UNUSED, struct BattleStruct *sp)
{
    s32 delta;

    IncrementBattleScriptPtr(sp, 1);

    delta = read_battle_script_param(sp);
    if (delta >= sp->battlemon[sp->attack_client].weight)
        sp->battlemon[sp->attack_client].weight = 1;
    else
        sp->battlemon[sp->attack_client].weight -= delta;

    return FALSE;
}

/**
 *  @brief script command to calculate the damage for heavy slam
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_E2_heavyslamdamagecalc(void *bw, struct BattleStruct *sp)
{
    u32 ratio;

    IncrementBattleScriptPtr(sp, 1);

    // grab the ratio of defense weight/attack weight as a % to 2 decimal places
    ratio = (GetPokemonWeight(bw, sp, sp->defence_client) * 10000) / GetPokemonWeight(bw, sp, sp->attack_client);

    if (ratio <= 2000)      // < 20.00%
        sp->damage_power = 120;
    else if (ratio <= 2500) // 20.01% - 25.00%
        sp->damage_power = 100;
    else if (ratio <= 3334) // 25.01% - 33.34%
        sp->damage_power = 80;
    else if (ratio <= 5000) // 33.35% - 50.00%
        sp->damage_power = 60;
    else                    // > 50.01%
        sp->damage_power = 40;

    return FALSE;
}

/**
 *  @brief script command to jump somewhere if the user is a lower level than the target
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_E3_isuserlowerlevel(void *bw UNUSED, struct BattleStruct *sp)
{
    IncrementBattleScriptPtr(sp, 1);
    int address = read_battle_script_param(sp);

    if (sp->battlemon[sp->attack_client].level < sp->battlemon[sp->defence_client].level)
        IncrementBattleScriptPtr(sp, address);
    return FALSE;
}

/**
 *  @brief script command to set the new tailwind counter field
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_E4_settailwind(void *bw, struct BattleStruct *sp)
{
    IncrementBattleScriptPtr(sp, 1);
    u32 client_no = read_battle_script_param(sp);

    client_no = GrabClientFromBattleScriptParam(bw, sp, client_no);

    sp->tailwindCount[IsClientEnemy(bw, client_no)] = 4;

    return FALSE;
}

/**
 *  @brief script command to jump somewhere if tailwind is active on a battler's side
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_E5_iftailwindactive(void *bw, struct BattleStruct *sp)
{
    IncrementBattleScriptPtr(sp, 1);
    u32 client_no = read_battle_script_param(sp);
    u32 address = read_battle_script_param(sp);

    client_no = GrabClientFromBattleScriptParam(bw, sp, client_no);

    if (sp->tailwindCount[IsClientEnemy(bw, client_no)])
        IncrementBattleScriptPtr(sp, address);

    return FALSE;
}

/**
 *  @brief script command to jump somewhere if the current field is equal to the param
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_E6_ifcurrentfieldistype(void *bw, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);
    u32 terrain = read_battle_script_param(sp);
    int address = read_battle_script_param(sp);

    if (BattleWorkGroundIDGet(bw) == terrain && sp->terrainOverlay.type == TERRAIN_NONE) {
        IncrementBattleScriptPtr(sp, address);
    }

    return FALSE;
}

/**
 *  @brief script command to jump somewhere if move power is > 0
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_E7_ifmovepowergreaterthanzero(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);
    int address = read_battle_script_param(sp);

    if (sp->moveTbl[sp->current_move_index].power > 0) {
        IncrementBattleScriptPtr(sp, address);
    }
    return FALSE;
}

/**
 *  @brief function to check whether a mon is grounded or not
 *  @param sp global battle structure
 *  @param client_no resolved battler
 *  @return `TRUE` if grounded, `FALSE` otherwise
 */
BOOL IsClientGrounded(struct BattleStruct *sp, u32 client_no) {
    u8 holdeffect = HeldItemHoldEffectGet(sp, client_no);

    if ((sp->battlemon[client_no].ability != ABILITY_LEVITATE && holdeffect != HOLD_EFFECT_UNGROUND_DESTROYED_ON_HIT  // not holding Air Balloon
         && (sp->battlemon[client_no].moveeffect.magnetRiseTurns) == 0 && sp->battlemon[client_no].type1 != TYPE_FLYING && sp->battlemon[client_no].type2 != TYPE_FLYING) ||
        (holdeffect == HOLD_EFFECT_HALVE_SPEED                                     // holding Iron Ball
         || (sp->battlemon[client_no].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN)  // is Ingrained
         || (sp->field_condition & FIELD_STATUS_GRAVITY))) {
        // not in a semi-vulnerable state
        if ((sp->battlemon[client_no].effect_of_moves & (MOVE_EFFECT_FLAG_FLYING_IN_AIR | MOVE_EFFECT_FLAG_DIGGING | MOVE_EFFECT_FLAG_IS_DIVING | MOVE_EFFECT_FLAG_SHADOW_FORCE)) == 0) {
            return TRUE;
        }
    }

    return FALSE;
}

/**
 *  @brief script command to jump somewhere if the mon is grounded
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_E8_ifgrounded(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);
    u32 client_no = read_battle_script_param(sp);
    client_no = GrabClientFromBattleScriptParam(bw, sp, client_no);
    u32 address = read_battle_script_param(sp);

    if(IsClientGrounded(sp, client_no)) {
        IncrementBattleScriptPtr(sp, address);
    }

    return FALSE;
}

/**
 *  @brief script command to jump somewhere if the current move is a certain type
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_E9_checkifcurrentadjustedmoveistype(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    int type = read_battle_script_param(sp);
    int address = read_battle_script_param(sp);

    int movetype = GetAdjustedMoveType(sp, sp->attack_client, sp->current_move_index);
    // sp->moveTbl[sp->current_move_index].type
    if (type == movetype) {
        IncrementBattleScriptPtr(sp, address);
    }
    return FALSE;
}

/**
 *  @brief script command to jump somewhere if the current move is a contact move
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_EA_ifcontactmove(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);
    int address = read_battle_script_param(sp);

    if (sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT) {
        IncrementBattleScriptPtr(sp, address);
    }
    return FALSE;
}

/**
 *  @brief script command to jump somewhere if the current move is a sound move
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_EB_ifsoundmove(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);
    int address = read_battle_script_param(sp);

    if (IsMoveSoundBased(sp->current_move_index)) {
        IncrementBattleScriptPtr(sp, address);
    }

    return FALSE;
}

/**
 *  @brief script command to update the terrain overlay
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_EC_updateterrainoverlay(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    u8 endTerrainFlag = read_battle_script_param(sp);
    int address = read_battle_script_param(sp);
    int client_set_max;
    int client_no;

    enum TerrainOverlayType oldTerrainOverlay = sp->terrainOverlay.type;

    switch (sp->current_move_index) {
        case MOVE_GRASSY_TERRAIN:
            sp->terrainOverlay.type = GRASSY_TERRAIN;
            break;
        case MOVE_MISTY_TERRAIN:
            sp->terrainOverlay.type = MISTY_TERRAIN;
            break;
        case MOVE_ELECTRIC_TERRAIN:
            sp->terrainOverlay.type = ELECTRIC_TERRAIN;
            break;
        case MOVE_PSYCHIC_TERRAIN:
            sp->terrainOverlay.type = PSYCHIC_TERRAIN;
            break;
        default:
            // I think this could work for moves that remove terrain
            sp->terrainOverlay.type = TERRAIN_NONE;
            break;
    }

    if (endTerrainFlag == TRUE) {
        sp->terrainOverlay.type = TERRAIN_NONE;
    }

    // if the new terrain is the same as the old one, the move should fail
    if (oldTerrainOverlay == sp->terrainOverlay.type) {
        IncrementBattleScriptPtr(sp, address);
    } else {
        if (sp->terrainOverlay.type != TERRAIN_NONE) {
            // TODO: handle item effects
            sp->terrainOverlay.numberOfTurnsLeft = 5;
        } else {
            sp->terrainOverlay.numberOfTurnsLeft = 0;
        }
    }

    client_set_max = BattleWorkClientSetMaxGet(bw);

    if (sp->terrainOverlay.type == ELECTRIC_TERRAIN) {
        for (int i = 0; i < client_set_max; i++) {
            client_no = sp->turn_order[i];
            if (IsClientGrounded(sp, client_no)) {
                sp->battlemon[client_no].effect_of_moves &= ~(MOVE_EFFECT_YAWN_COUNTER);
            }
        }
    }

    return FALSE;
}

/**
 *  @brief script command to jump somewhere if the current terrain overlay is equal to the param
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_ED_ifterrainoverlayistype(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    u8 terrainOverlayType = read_battle_script_param(sp);
    int address = read_battle_script_param(sp);

    if (sp->terrainOverlay.type == terrainOverlayType) {
        IncrementBattleScriptPtr(sp, address);
    }

    return FALSE;
}

/**
 *  @brief script command to potentially_affected_by_psychic_terrain_move_used_flag
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_EE_setpsychicterrainmoveusedflag(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    sp->battlemon[sp->attack_client].potentially_affected_by_psychic_terrain_move_used_flag = 1;

    return FALSE;
}

/**
 *  @brief script command to jump somewhere if the current hit is the first hit of Parental Bond
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_EF_iffirsthitofparentalbond(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    int address = read_battle_script_param(sp);

    if (sp->battlemon[sp->attack_client].parental_bond_flag == 1 && sp->battlemon[sp->attack_client].ability == ABILITY_PARENTAL_BOND) {
        IncrementBattleScriptPtr(sp, address);
    }

    return FALSE;
}

/**
 *  @brief script command to jump somewhere if the current hit is the second hit of Parental Bond
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_F0_ifsecondhitofparentalbond(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    int address = read_battle_script_param(sp);

    if (sp->battlemon[sp->attack_client].parental_bond_flag == 2) {
        IncrementBattleScriptPtr(sp, address);
    }

    return FALSE;
}

/**
 *  @brief script command to set the Parental Bond flag
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_F1_setparentalbondflag(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    sp->battlemon[sp->attack_client].parental_bond_flag = 1;
    sp->battlemon[sp->attack_client].parental_bond_is_active = TRUE;

    return FALSE;
}

/**
 *  @brief script command to jump somewhere if the current move is a valid parental bond move
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_F2_ifcurrentmoveisvalidparentalbondmove(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    int address = read_battle_script_param(sp);

    if (IsValidParentalBondMove(bw, sp, TRUE)) {
        IncrementBattleScriptPtr(sp, address);
    }

    return FALSE;
}

/**
 *  @brief script command to jump somewhere if the knock off damage boost can not be applied
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_F3_canapplyknockoffdamageboost(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    int address = read_battle_script_param(sp);
    if (!CanKnockOffApply(sp))
        IncrementBattleScriptPtr(sp, address);

    return FALSE;
}

/**
 *  @brief script command to jump somewhere if parental bond is currently active beyond mummy
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_F4_isparentalbondactive(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    int address = read_battle_script_param(sp);

    if (sp->battlemon[sp->attack_client].parental_bond_is_active == TRUE) {
        IncrementBattleScriptPtr(sp, address);
    }

    return FALSE;
}

/**
 *  @brief check if knock off can remove the defender's held item
 *         does not count sticky hold and substitute because those still allow knock off's base power increase
 *
 *  @param sp global battle structure
 *  @return TRUE if knock off can remove the mon's item; FALSE otherwise
 */
BOOL CanKnockOffApply(struct BattleStruct *sp)
{
    u32 item = sp->battlemon[sp->defence_client].item;
    u32 species = sp->battlemon[sp->defence_client].species;
    u32 ability = GetBattlerAbility(sp, sp->defence_client);

    // if the user is about to die because of an opponent's rough skin, iron barbs, or rocky helmet, then do not proc knock off's item removal
        // abilities do 1/8th total hp as damage
    if ((((ability == ABILITY_ROUGH_SKIN || ability == ABILITY_IRON_BARBS) && sp->battlemon[sp->attack_client].hp <= (s32)(sp->battlemon[sp->attack_client].maxhp) / 8)
        // rocky helmet does 1/6th total hp as damage
      || ((item == ITEM_ROCKY_HELMET) && sp->battlemon[sp->attack_client].hp <= (s32)(sp->battlemon[sp->attack_client].maxhp) / 6))
     && sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT
     && (sp->waza_status_flag & MOVE_STATUS_FLAG_FAILURE_ANY) == 0)
    {
        return FALSE;
    }

    if (item != 0
        // z crystals can not be removed wherever they are
        //&& !IS_ITEM_Z_CRYSTAL(item)
        // mega stones can not be knocked off their own mon
        && !CheckMegaData(species, item)
        // arceus plate on arceus can not be knocked off
        && !(species == SPECIES_ARCEUS && IS_ITEM_ARCEUS_PLATE(item))
        // griseous orb on giratina can not be knocked off
        && !(species == SPECIES_GIRATINA && item == ITEM_GRISEOUS_ORB)
        // drives can not be knocked off of genesect
        && !(species == SPECIES_GENESECT && IS_ITEM_GENESECT_DRIVE(item))
        // silvally can not have its memory knocked off
        && !(species == SPECIES_SILVALLY && IS_ITEM_MEMORY(item))
        // zacian can not have its rusted sword knocked off
        && !(species == SPECIES_ZACIAN && item == ITEM_RUSTED_SWORD)
        // zamazenta can not have its rusted shield knocked off
        && !(species == SPECIES_ZAMAZENTA && item == ITEM_RUSTED_SHIELD)
        // paradox mons can not have their booster energy knocked off
        && !(IS_SPECIES_PARADOX_FORM(species) && item == ITEM_BOOSTER_ENERGY)
    )
    {
        return TRUE;
    }
    return FALSE;
}

extern u8 gSafariBallRateTable[13][2];
u16 MoonBallSpecies[] =
{
    SPECIES_NIDORAN_F,
    SPECIES_NIDORINA,
    SPECIES_NIDOQUEEN,
    SPECIES_NIDORAN_M,
    SPECIES_NIDORINO,
    SPECIES_NIDOKING,
    SPECIES_CLEFFA,
    SPECIES_CLEFAIRY,
    SPECIES_CLEFABLE,
    SPECIES_IGGLYBUFF,
    SPECIES_JIGGLYPUFF,
    SPECIES_WIGGLYTUFF,
    SPECIES_SKITTY,
    SPECIES_DELCATTY,
    SPECIES_MUNNA,
    SPECIES_MUSHARNA,
};

/**
 *  @brief calculate the amount of times a ball shakes
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return the amount of shakes a ball undergoes.  or'd with 0x80 for critical captures
 */
u32 CalculateBallShakes(void *bw, struct BattleStruct *sp)
{
    u32 i, captureRate, ballRate, type1, type2;

    if (BattleTypeGet(bw) & (BATTLE_TYPE_POKE_PARK | BATTLE_TYPE_CATCHING_DEMO)) // poke park and safari zone always succeed
    {
        return 4;
    }

    if (sp->item_work == ITEM_SAFARI_BALL)
    {
        captureRate = PokePersonalParaGet(sp->battlemon[sp->defence_client].species, PERSONAL_CATCH_RATE);
        captureRate = captureRate * gSafariBallRateTable[sp->safari_get_count][0] / gSafariBallRateTable[sp->safari_get_count][1];
    }
    else
    {
        captureRate = PokePersonalParaGet(sp->battlemon[sp->defence_client].species, PERSONAL_CATCH_RATE);
    }

    ballRate = 10;
    type1 = BattlePokemonParamGet(sp, sp->defence_client, BATTLE_MON_DATA_TYPE1, 0); // type 1
    type2 = BattlePokemonParamGet(sp, sp->defence_client, BATTLE_MON_DATA_TYPE2, 0); // type 2


    switch (sp->item_work)
    {
    case ITEM_MASTER_BALL:
        return 4; // automatic success
    case ITEM_ULTRA_BALL:
        ballRate = 20;
        break;
    case ITEM_GREAT_BALL:
        ballRate = 15;
        break;
    case ITEM_POKE_BALL:
        //ballRate = 10;
        break;
    case ITEM_SAFARI_BALL:
        ballRate = 15;
        break;
    case ITEM_NET_BALL:
        if (type1 == TYPE_WATER || type2 == TYPE_WATER || type1 == TYPE_BUG || type2 == TYPE_BUG)
            ballRate = 30;
        break;
    case ITEM_DIVE_BALL:
        if (BattleWorkGroundIDGet(bw) == 7) // if the battle is happening with a water background
            ballRate = 35;
        break;
    case ITEM_NEST_BALL:
        if (sp->battlemon[sp->defence_client].level <= 30)
        {
            ballRate = 40 - sp->battlemon[sp->defence_client].level;
        }
        break;
    case ITEM_REPEAT_BALL:
        if (Battle_CheckIfHasCaughtMon(bw, sp->battlemon[sp->defence_client].species))
            ballRate = 30;
        break;
    case ITEM_TIMER_BALL:
        ballRate = 10 + sp->total_turn;
        if (ballRate > 40)
            ballRate = 40;
        break;
    //case ITEM_LUXURY_BALL:
    //
    //    break;
    //case ITEM_PREMIER_BALL:
    //
    //    break;
    case ITEM_DUSK_BALL:
        if (Battle_GetTimeOfDay(bw) == 3 || Battle_GetTimeOfDay(bw) == 4 || BattleWorkGroundIDGet(bw) == 5)
            ballRate = 35;
        break;
    //case ITEM_HEAL_BALL:
    //
    //    break;
    case ITEM_QUICK_BALL:
        if (sp->total_turn < 1)
            ballRate = 40;
        break;
    //case ITEM_CHERISH_BALL:
    //
    //    break;
    case ITEM_FAST_BALL:
        if (PokePersonalParaGet(sp->battlemon[sp->defence_client].species, PERSONAL_BASE_SPEED) > 100)
            ballRate = 40;
        break;
    case ITEM_LEVEL_BALL:
        {
            u32 defLevel = sp->battlemon[sp->defence_client].level;
            u32 atkLevel = sp->battlemon[sp->attack_client].level;

            if (atkLevel >= 4*defLevel)
                ballRate = 80;
            else if (atkLevel >= 2*defLevel)
                ballRate = 40;
            else if (atkLevel > defLevel) // yes the pattern apparently doesn't hold
                ballRate = 20;
        }
        break;
    case ITEM_LURE_BALL:
        if (Battle_IsFishingEncounter(bw))
            ballRate = 40; // as of sword and shield
        break;
    case ITEM_HEAVY_BALL:
        if (GetPokemonWeight(bw, sp, sp->defence_client) < 1024)
        {
            if (captureRate > 20)
                captureRate -= 20;
            else
                captureRate = 1;
        }
        else if (GetPokemonWeight(bw, sp, sp->defence_client) < 2048)
            ballRate = 10; // do nothing
        else if (GetPokemonWeight(bw, sp, sp->defence_client) < 3072)
            captureRate += 20;
        else if (GetPokemonWeight(bw, sp, sp->defence_client) < 4096)
            captureRate += 30;
        else if (GetPokemonWeight(bw, sp, sp->defence_client) < 4096)
            captureRate += 40;

        if (captureRate > 255)
            captureRate = 255;

        break;
    case ITEM_LOVE_BALL:
        {
            u32 gender1 = BattlePokemonParamGet(sp, sp->attack_client, BATTLE_MON_DATA_SEX, NULL);
            u32 gender2 = BattlePokemonParamGet(sp, sp->defence_client, BATTLE_MON_DATA_SEX, NULL);

            if (sp->battlemon[sp->attack_client].species == sp->battlemon[sp->defence_client].species
             && gender1 != gender2
             && gender1 != POKEMON_GENDER_UNKNOWN
             && gender2 != POKEMON_GENDER_UNKNOWN)
                ballRate = 80;
        }
        break;
    //case ITEM_FRIEND_BALL: // assume that this and the heal ball are handled elsewhere
    //                       // Friend ball is handled at the end of the function, no clue for heal ball
    //    break;
    case ITEM_MOON_BALL:
        for (i = 0; i < NELEMS(MoonBallSpecies); i++) // yes, this is how game freak coded it in heart gold/soul silver
        {
            if (sp->battlemon[sp->defence_client].species == MoonBallSpecies[i])
                break;
        }
        if (i != NELEMS(MoonBallSpecies))
            ballRate = 40;
        break;
    case ITEM_SPORT_BALL:
        ballRate = 15;
        break;
    //case ITEM_PARK_BALL:
    //
    //    break;
    case ITEM_DREAM_BALL:
        if (sp->battlemon[sp->defence_client].condition & (STATUS_FLAG_ASLEEP))
        captureRate *= 4;
        break;
    //case ITEM_BEAST_BALL:
    //
    //    break;
    }

    // = captureRate * ballRate / 10 * (3maxHP - 2curHP) / (3maxHP)
    captureRate = ((captureRate * ballRate) / 10) * (sp->battlemon[sp->defence_client].maxhp * 3  -  sp->battlemon[sp->defence_client].hp * 2) / (sp->battlemon[sp->defence_client].maxhp * 3);

    if (sp->battlemon[sp->defence_client].condition & (STATUS_FLAG_ASLEEP | STATUS_FLAG_FROZEN))
        captureRate *= 2;

    if (sp->battlemon[sp->defence_client].condition & (STATUS_POISON_ANY | STATUS_FLAG_BURNED | STATUS_FLAG_PARALYZED))
        captureRate = captureRate * 15 / 10;

    if (captureRate > 255)
        i = 4;
    else
    {
        u32 work;

        work = (0xFF << 16) / captureRate;
        captureRate = sqrt(sqrt(work));
        captureRate = (0xFFFF << 4) / captureRate;


#ifdef IMPLEMENT_CRITICAL_CAPTURE

        u32 criticalCaptureWork, caughtMons, criticalCapture = FALSE;

        caughtMons = GetCaughtMonCount(SaveData_GetDexPtr(SaveBlock2_get()));
        if (caughtMons > 600)
            criticalCaptureWork = 25;
        else if (caughtMons > 450)
            criticalCaptureWork = 20;
        else if (caughtMons > 300)
            criticalCaptureWork = 15;
        else if (caughtMons > 150)
            criticalCaptureWork = 10;
        else if (caughtMons > 30)
            criticalCaptureWork = 5;
        else
            criticalCaptureWork = 0;

        criticalCaptureWork = captureRate * criticalCaptureWork / 10;

        if ((BattleRand(bw) & 0xFF) < criticalCaptureWork) // return critical capture number
            criticalCapture = TRUE;

        if (criticalCapture)
            caughtMons = 1;
        else
            caughtMons = 4;

#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
        u8 buf[64];
        sprintf(buf, "Shake probability = %d (%2d", captureRate, (captureRate * 100) / 65536);
        debugsyscall(buf);
        sprintf(buf, ".%02d%% per shake)\n", ((captureRate * 10000) / 65536) % 100);
        debugsyscall(buf);
#endif

        for (i = 0; i < caughtMons; i++) // there are 4 shake checks apparently
        {
            u32 rand = BattleRand(bw);
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
            sprintf(buf, "Shake #%d: rand = %d\n", i, rand);
            debugsyscall(buf);
#endif
            if (rand >= captureRate)
            {
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
                sprintf(buf, "Check for shake #%d unsuccessful.\n", i);
                debugsyscall(buf);
#endif
                break;
            }
        }

        if (sp->item_work == ITEM_FRIEND_BALL && i == caughtMons) // if amount of succeeded captures is the same as necessary for the type of capture
        {
            u32 friendship = 200;
            SetMonData(Battle_GetClientPartyMon(bw,sp->defence_client,0), MON_DATA_FRIENDSHIP, &friendship);
        }

        if (criticalCapture) // succeeded the one chance it had
            i = i | 0x80; // change the flow of the ball callback to make sure that critical captures only shake once then succeed.  if it shakes, it succeeds, though

#else

        for (i = 0; i < 4; i++)
        {
            if (BattleRand(bw) >= captureRate)
                break;
        }

#endif
    }

    if (sp->item_work == ITEM_FRIEND_BALL && (i & 0x7F) >= 4)  // 0x80 signifies critical capture, which is already caught above.  this code still necessary for the case that IMPLEMENT_CRITICAL_CAPTURE isn't defined
    {
        u32 friendship = 200;
        SetMonData(Battle_GetClientPartyMon(bw,sp->defence_client,0), MON_DATA_FRIENDSHIP, &friendship);
    }


#ifdef GUARANTEE_CAPTURES
    return 4;
#else
    return i;
#endif
}

u32 sSuccessfulCriticalCapture = 0;

/**
 *  @brief reroute the capture shake task if a critical capture activates
 *
 *  @param expcalc exp calculator structure
 *  @param shakes number of shakes or'd with 0x80 for critical captures
 *  @return amouont of actual shakes
 */
u32 DealWithCriticalCaptureShakes(struct EXP_CALCULATOR *expcalc, u32 shakes)
{
#ifdef IMPLEMENT_CRITICAL_CAPTURE
    sSuccessfulCriticalCapture = 0;
    if (shakes & 0x80) // critical capture
    {
        expcalc->work[3] = shakes&0x7F;
        if ((shakes&0x7F) == 1)
        {
            expcalc->work[2] = 4; // successful capture
            sSuccessfulCriticalCapture = TRUE;
        }
        else
        {
            expcalc->work[2] = 1;
            expcalc->work[3] = 1; // a failed critical capture still shakes once
        }
    }
    else
    {
        if (shakes == 4)
        {
            expcalc->work[3] = 3;
        }
        else
        {
            expcalc->work[3] = shakes;
        }
        expcalc->work[2] = shakes;
    }
    expcalc->seq_no = 3; // have the ball fall
    return 3;
#endif
}


extern u32 BallToSpaIDs[][3];
u32 LONG_CALL GetBallID_ov7(u32 itemId);

/**
 *  @brief load the particle effect on capture success
 *
 *  @param id ball id to load spa for
 *  @return index in narc for ball id spa
 */
u32 LoadCaptureSuccessSPA(u32 id)
{
    id = GetBallID_ov7(id);

    if (sSuccessfulCriticalCapture)
        return 133;
    else
        return BallToSpaIDs[id][0];
}

/**
 *  @brief load the emitter id on capture success for the stars
 *
 *  @param id ball id to load spa for
 *  @return emitter in ball success spa for the stars
 */
u32 LoadCaptureSuccessSPAStarEmitter(u32 id)
{
    id = GetBallID_ov7(id);

    if (sSuccessfulCriticalCapture)
        return 0;
    else
        return BallToSpaIDs[id][1];
}

/**
 *  @brief load the number of emitters in the ball spa
 *
 *  @param id ball id to load spa for
 *  @return number of emitters total
 */
u32 LoadCaptureSuccessSPANumEmitters(u32 id)
{
    id = GetBallID_ov7(id);

    if (sSuccessfulCriticalCapture)
        return 5;
    else
        return BallToSpaIDs[id][2];
}
