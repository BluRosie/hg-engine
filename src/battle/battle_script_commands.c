#include "../../include/types.h"
#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/overlay.h"
#include "../../include/save.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/file.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/weather_numbers.h"

int SwitchInAbilityCheck(void *bw, struct BattleStruct *sp);

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
BOOL btl_scr_cmd_F5_changepermanentbg(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_F6_changeexecutionorderpriority(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_F7_setbindingcounter(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_F8_clearbindcounter(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_F9_canclearprimalweather(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_FA_setabilityactivatedflag(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_FB_switchinabilitycheck(void *bw, struct BattleStruct *sp);
BOOL BtlCmd_WeatherHPRecovery(void *bw, struct BattleStruct *sp);
BOOL BtlCmd_CalcWeatherBallParams(void *bw, struct BattleStruct *sp);
BOOL BtlCmd_EndOfTurnWeatherEffect(struct BattleSystem *bsys, struct BattleStruct *ctx);
BOOL BtlCmd_TryWish(struct BattleSystem *bsys, struct BattleStruct *ctx);
BOOL BtlCmd_TryFutureSight(struct BattleSystem *bsys, struct BattleStruct *ctx);
BOOL BtlCmd_SetMultiHit(struct BattleSystem *bsys, struct BattleStruct *ctx);
BOOL BtlCmd_TrySubstitute(void *bw, struct BattleStruct *sp);
BOOL BtlCmd_RapidSpin(void *bw, struct BattleStruct *sp);
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
    "changepermanentbg",
    "changeexecutionorderpriority",
    "setbindingcounter",
    "clearbindcounter",
    "canclearprimalweather",
    "setabilityactivatedflag",
    "switchinabilitycheck",
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
    [0xF5 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_F5_changepermanentbg,
    [0xF6 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_F6_changeexecutionorderpriority,
    [0xF7 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_F7_setbindingcounter,
    [0xF8 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_F8_clearbindcounter,
    [0xF9 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_F9_canclearprimalweather,
    [0xFA - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_FA_setabilityactivatedflag,
    [0xFB - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_FB_switchinabilitycheck,
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

// invalid moves
    MOVE_468,
    MOVE_469,
    MOVE_470,

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

    gBattleSystem = bw; // constantly update bw even tho it really only need be done once

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
void LONG_CALL LoadBattleSubSeqScript(struct BattleStruct *sp, int kind, int index)
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
void LONG_CALL PushAndLoadBattleScript(struct BattleStruct *sp, int kind, int index)
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
s32 LONG_CALL GrabClientFromBattleScriptParam(void *bw, struct BattleStruct *sp, int side)
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
BOOL LONG_CALL Link_QueueIsEmpty(struct BattleStruct *sp) {
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

    // mega evolution is animation 470--force it to play regardless of whether or not animations are on
    if ((((sp->server_status_flag & SERVER_STATUS_FLAG_ANIMATION_IS_PLAYING) == 0)
      && (CheckBattleAnimationsOption(bw) == TRUE))
     || (move == MOVE_TRANSFORM || move == MOVE_470 || move == MOVE_ELECTRIC_TERRAIN || move == MOVE_MISTY_TERRAIN || move == MOVE_GRASSY_TERRAIN || move == MOVE_PSYCHIC_TERRAIN))
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
     || (move == MOVE_TRANSFORM || move == MOVE_470 || move == MOVE_ELECTRIC_TERRAIN || move == MOVE_MISTY_TERRAIN || move == MOVE_GRASSY_TERRAIN || move == MOVE_PSYCHIC_TERRAIN))
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
            case MOVE_EFFECT_BADLY_POISON_HIT:
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
            case MOVE_EFFECT_PREVENT_HEALING_HIT: // Psychic Noise
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
        if (sp->current_move_index == MOVE_SPARKLING_ARIA) {
            sp->battlemon[sp->attack_client].sheer_force_flag = 1;
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
    int sel_mons_no = 0;
    int client_no;
    int item;
    int eqp;
    struct PartyPokemon *pp = NULL;
    struct EXP_CALCULATOR *expcalc = work;
    int exp_client_no = 0;

    client_no = (expcalc->sp->fainting_client >> 1) & 1;

    if (expcalc->seq_no < 37)
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
    }

#if EXPERIENCE_FORMULA_GEN == 5 || EXPERIENCE_FORMULA_GEN > 6 // scaled exp rate
    struct Party *party = BattleWorkPokePartyGet(expcalc->bw, 0);
    //u32 mons_getting_exp_from_item = 0;
    //u32 mons_getting_exp = 0;
    u32 totalexp = 0;

    // count how many pokémon are getting experience
    if (!expcalc->work[6])
    {
        monCount = 0;
        monCountFromItem = 0;
        for (int i = 0; i < party->count; i++)
        {
            struct PartyPokemon *pploop = BattleWorkPokemonParamGet(expcalc->bw, exp_client_no, i);
            if ((GetMonData(pploop, MON_DATA_SPECIES, NULL)) && (GetMonData(pploop, MON_DATA_HP, NULL)))
            {
                if (expcalc->sp->obtained_exp_right_flag[client_no /*(expcalc->sp->fainting_client >> 1) & 1*/] & No2Bit(i))
                {
                    monCount++;
                }

                item = GetMonData(pploop, MON_DATA_HELD_ITEM, NULL);
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
        if (sel_mons_no < BattleWorkPokeCountGet(expcalc->bw, exp_client_no))
        {
            // actually calculate the experience
            u32 Lp = GetMonData(pp, MON_DATA_LEVEL, NULL); // this should contain the level of the person getting experience
            u32 level = expcalc->sp->battlemon[expcalc->sp->fainting_client].level; // need to calculate exp individually for each mon it seems

            u32 base = GetSpeciesBaseExp(expcalc->sp->battlemon[expcalc->sp->fainting_client].species, expcalc->sp->battlemon[expcalc->sp->fainting_client].form_no); // base experience
            totalexp = (base * level) / 5;

            u32 top = (2*level + 10) * (2*level + 10) * sqrt(2*level + 10);
            u32 bottom = (level + Lp + 10) * (level + Lp + 10) * sqrt(level + Lp + 10);

            u32 result = top * totalexp;
            // top is at minimum 3 (beat a level 3 mon), don't need to worry about it being 0
            if (/*top != 0 && */(result / top) != totalexp)
            {
                // the only way that this is possible is if an overflow happened--the top value is going to be really high, so we correct the top to prevent overflow
                //debug_printf("[Task_DistributeExp_Extend] Overflow detected...  result = %d\n", result);
                // so basically the real bL*5 * top = (-1u) + (result + 1)
                // max bL*5 * top = 7840980000 (level 1 manages to beat level 100 blissey)
                // loops around to 3546012704
                // so now we just need to add the results divided by bottom (and add another 1 to correct for what i'm looking at)
                totalexp = result + 1;
                totalexp = (totalexp / bottom) + (-1u / bottom) + 1;
            }
            else
            {
                totalexp *= top;
                totalexp /= bottom;
            }

            //debug_printf("[Task_DistributeExp_Extend] L = %d, Lp = %d, b = %d, top = %d, bottom = %d, exp = %d\n", level, Lp, base, top, bottom, totalexp);

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

    // distribute effort values to level 100 pokémon who would otherwise not get it
    if (expcalc->seq_no == 0 && sel_mons_no < BattleWorkPokeCountGet(expcalc->bw, exp_client_no) && GetMonData(BattleWorkPokemonParamGet(expcalc->bw, exp_client_no, sel_mons_no), MON_DATA_LEVEL, NULL) == 100)
    {
        DistributeEffortValues(BattleWorkPokePartyGet(expcalc->bw, exp_client_no),
                               sel_mons_no,
                               expcalc->sp->battlemon[expcalc->sp->fainting_client].species,
                               expcalc->sp->battlemon[expcalc->sp->fainting_client].form_no);
    }

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
    u32 ovyId, offset;
    BOOL (*internalFunc)(void *bw, struct BattleStruct *sp);

    ovyId = OVERLAY_BTL_SCR_CMD_33_STATBUFFCHANGE;
    offset = 0x023C0400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (int (*)(void *bw, struct BattleStruct *sp))(offset);
    internalFunc(bw, sp);
    UnloadOverlayByID(ovyId);

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
    case MOVE_EFFECT_CHARGE_TURN_ATK_SP_ATK_SPEED_UP_2:
    case MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP:
    case MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP_RAIN_SKIPS:
        return TRUE;
    }
    return FALSE;
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
        sp->oneTurnFlag[sp->attack_client].parental_bond_flag != 2) {
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
    else if ((holdeffect == HOLD_EFFECT_MAYBE_ENDURE) && ((BattleRand(bw) % 100) < atk))
    {
        flag = 1;
    }
    else if ((holdeffect == HOLD_EFFECT_ENDURE) && (sp->battlemon[client_no].hp == (s32)sp->battlemon[client_no].maxhp))
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
BOOL LONG_CALL IsClientGrounded(struct BattleStruct *sp, u32 client_no) {
    u8 holdeffect = HeldItemHoldEffectGet(sp, client_no);

    if ((sp->battlemon[client_no].ability != ABILITY_LEVITATE && holdeffect != HOLD_EFFECT_UNGROUND_DESTROYED_ON_HIT  // not holding Air Balloon
         && (sp->battlemon[client_no].moveeffect.magnetRiseTurns) == 0 && sp->battlemon[client_no].type1 != TYPE_FLYING && sp->battlemon[client_no].type2 != TYPE_FLYING) ||
        (holdeffect == HOLD_EFFECT_SPEED_DOWN_GROUNDED                             // holding Iron Ball
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
    int item, itemPower;

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
            item = GetBattleMonItem(sp, sp->attack_client);
            itemPower = BattleItemDataGet(sp, item, 2);
            sp->terrainOverlay.numberOfTurnsLeft = 5;
            if (item == ITEM_TERRAIN_EXTENDER) {
                sp->terrainOverlay.numberOfTurnsLeft += itemPower;
            }
        } else {
            sp->terrainOverlay.numberOfTurnsLeft = 0;
        }
    }

    client_set_max = BattleWorkClientSetMaxGet(bw);

    if (sp->terrainOverlay.type == ELECTRIC_TERRAIN) {
        for (int i = 0; i < client_set_max; i++) {
            client_no = sp->turnOrder[i];
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

    if (sp->oneTurnFlag[sp->attack_client].parental_bond_flag == 1 && sp->battlemon[sp->attack_client].ability == ABILITY_PARENTAL_BOND) {
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

    if (sp->oneTurnFlag[sp->attack_client].parental_bond_flag == 2) {
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

    sp->oneTurnFlag[sp->attack_client].parental_bond_flag = 1;
    sp->oneTurnFlag[sp->attack_client].parental_bond_is_active = TRUE;

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

    if (sp->oneTurnFlag[sp->attack_client].parental_bond_is_active == TRUE) {
        IncrementBattleScriptPtr(sp, address);
    }

    return FALSE;
}

/**
 *  @brief script command to permanently change the battle background
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_F5_changepermanentbg(void *bw, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    int bg = read_battle_script_param(sp);
    int terrain = read_battle_script_param(sp);

    if (bg == -1)
    {
        bg = gBattleSystem->sp->original_bgId;
    }
    if (terrain == -1)
    {
        terrain = gBattleSystem->sp->original_terrain;
    }
    LoadDifferentBattleBackground(bw, bg, terrain);

    return FALSE;
}

/**
 *  @brief script command to change the execution order "priority" of a client
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_F6_changeexecutionorderpriority(void *bw, struct BattleStruct *sp) {
    u8 side, client_no, clientPosition;
    enum ForceExecutionOrder forceExecutionOrder;
    int address, maxBattlers = BattleWorkClientSetMaxGet(bw);

    IncrementBattleScriptPtr(sp, 1);

    side = read_battle_script_param(sp);
    client_no = GrabClientFromBattleScriptParam(bw, sp, side);

    forceExecutionOrder = read_battle_script_param(sp);

    address = read_battle_script_param(sp);

    for (clientPosition = 0; clientPosition < maxBattlers; clientPosition++) {
        if (sp->executionOrder[clientPosition] == client_no) {
            break;
        }
    }
    // If target has already performed action
    if (sp->executionIndex > clientPosition) {
        IncrementBattleScriptPtr(sp, address);
        return FALSE;
    }

    switch (forceExecutionOrder) {
        case EXECUTION_ORDER_AFTER_YOU:
            sp->oneTurnFlag[client_no].force_execution_order_flag = EXECUTION_ORDER_AFTER_YOU;
            break;
        case EXECUTION_ORDER_QUASH:

            sp->oneTurnFlag[client_no].force_execution_order_flag = EXECUTION_ORDER_QUASH;
            break;
        // user should not use this under normal circumstances
        case EXECUTION_ORDER_NORMAL:
            sp->oneTurnFlag[client_no].force_execution_order_flag = EXECUTION_ORDER_NORMAL;
            break;
        default:
            // idk crash the game I guess
            GF_ASSERT(forceExecutionOrder > EXECUTION_ORDER_AFTER_YOU);
            break;
    }

    return FALSE;
}


/**
 *  @brief script command to calculate and set the binding turns for a binding move that was just used
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_F7_setbindingcounter(void *bw, struct BattleStruct *sp) {
    u32 turns;

    IncrementBattleScriptPtr(sp, 1);

    turns = read_battle_script_param(sp);

    if (sp->binding_turns[sp->defence_client] != 0)
    {
        IncrementBattleScriptPtr(sp, turns);
        return FALSE;
    }

    if (HeldItemHoldEffectGet(sp, sp->attack_client) == HOLD_EFFECT_EXTEND_TRAPPING) {
        turns = 8; // 7 turns
    } else {
        turns = 5 + (BattleRand(bw) & 1); // 4-5 turns
    }

    sp->binding_turns[sp->defence_client] = turns;

    return FALSE;
}


/**
 *  @brief script command to clear binding turns
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_F8_clearbindcounter(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    sp->binding_turns[sp->attack_client] = 0;

    return FALSE;
}

/**
 *  @brief script command to try and clear primal weather
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_F9_canclearprimalweather(void *bw, struct BattleStruct *sp) {
    // u8 buf[64];
    // sprintf(buf, "In canclearprimalweather\n");
    // debugsyscall(buf);

    int client_no = 0;  // initialize
    u8 count = 0;
    int client_set_max, i, lowerBound, sunAddress, rainAddress, windsAddress, failAddress;

    IncrementBattleScriptPtr(sp, 1);

    lowerBound = read_battle_script_param(sp);
    sunAddress = read_battle_script_param(sp);
    rainAddress = read_battle_script_param(sp);
    windsAddress = read_battle_script_param(sp);
    failAddress = read_battle_script_param(sp);

    client_set_max = BattleWorkClientSetMaxGet(bw);

    u32 currentPrimalWeather = sp->field_condition & (WEATHER_EXTREMELY_HARSH_SUNLIGHT | WEATHER_HEAVY_RAIN | WEATHER_STRONG_WINDS);

    if (currentPrimalWeather) {
        for (i = 0; i < client_set_max; i++) {
            client_no = sp->turnOrder[i];
            switch (currentPrimalWeather) {
                case WEATHER_EXTREMELY_HARSH_SUNLIGHT:
                    if (GetBattlerAbility(sp, client_no) == ABILITY_DESOLATE_LAND && sp->battlemon[client_no].hp != 0) {
                        count++;
                    }
                    break;
                case WEATHER_HEAVY_RAIN:
                    if (GetBattlerAbility(sp, client_no) == ABILITY_PRIMORDIAL_SEA && sp->battlemon[client_no].hp != 0) {
                        count++;
                    }
                    break;
                case WEATHER_STRONG_WINDS:
                    if (GetBattlerAbility(sp, client_no) == ABILITY_DELTA_STREAM && sp->battlemon[client_no].hp != 0) {
                        count++;
                    }
                    break;

                default:
                    break;
            }
        }
    }

    // sprintf(buf, "Count: %d\n", count);
    // debugsyscall(buf);

    // There is still another mon with the primal ability on the field
    if (count > lowerBound) {
        IncrementBattleScriptPtr(sp, failAddress);
        return FALSE;
    } else {
        switch (currentPrimalWeather) {
            case WEATHER_EXTREMELY_HARSH_SUNLIGHT:
                // sprintf(buf, "WEATHER_EXTREMELY_HARSH_SUNLIGHT\n");
                // debugsyscall(buf);
                IncrementBattleScriptPtr(sp, sunAddress);
                return FALSE;
                break;
            case WEATHER_HEAVY_RAIN:
                // sprintf(buf, "WEATHER_HEAVY_RAIN\n");
                // debugsyscall(buf);
                IncrementBattleScriptPtr(sp, rainAddress);
                return FALSE;
                break;
            case WEATHER_STRONG_WINDS:
                // sprintf(buf, "WEATHER_STRONG_WINDS\n");
                // debugsyscall(buf);
                IncrementBattleScriptPtr(sp, windsAddress);
                return FALSE;
                break;

            default:
                // sprintf(buf, "Fail?\n");
                // debugsyscall(buf);
                break;
        }
    }

    return FALSE;
}

/**
 *  @brief script command to turn on the ability activated flag for a client
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_FA_setabilityactivatedflag(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    u8 side, client_no;

    side = read_battle_script_param(sp);
    client_no = GrabClientFromBattleScriptParam(bw, sp, side);

    sp->battlemon[client_no].ability_activated_flag = 1;

    return FALSE;
}

/**
 *  @brief script command to store the subscipt to jump to for effects that should trigger immediately
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_FB_switchinabilitycheck(void *bw, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    // u8 buf[64];
    // sprintf(buf, "In switchinabilitycheck\n");
    // debugsyscall(buf);

    int script;
    int failAddress = read_battle_script_param(sp);

    script = SwitchInAbilityCheck(bw, sp);
    if (script) {
        // sprintf(buf, "script: %d\n", script);
        // debugsyscall(buf);
        sp->temp_work = script;
    } else {
        // sprintf(buf, "no script needed\n");
        // debugsyscall(buf);
        IncrementBattleScriptPtr(sp, failAddress);
    }

    return FALSE;
}

/**
 *  @brief script command to calculate the amount of HP should a client recover by using Moonlight, Morning Sun, or Synthesis
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL BtlCmd_WeatherHPRecovery(void *bw, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    // u8 buf[64];
    // sprintf(buf, "In BtlCmd_WeatherHPRecovery\n");
    // debugsyscall(buf);

    // For Strong Winds, the moves Moonlight, Morning Sun, and Synthesis continue to recover ½ of max HP, as they do in clear weather.
    if (!(sp->field_condition & FIELD_CONDITION_WEATHER)
    || (sp->field_condition & WEATHER_STRONG_WINDS)
    || CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE)
    || CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK)) {
        // sprintf(buf, "Recover half\n");
        // debugsyscall(buf);
        sp->hp_calc_work = sp->battlemon[sp->attack_client].maxhp / 2;
    } else if (sp->field_condition & WEATHER_SUNNY_ANY) {
        // sprintf(buf, "Recover 2/3\n");
        // debugsyscall(buf);
        sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp * 20, 30);
    } else {
        // sprintf(buf, "Recover 1/4\n");
        // debugsyscall(buf);
        sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp, 4);
    }

    return FALSE;
}

BOOL BtlCmd_CalcWeatherBallParams(void *bw, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    // u8 buf[64];
    // sprintf(buf, "In BtlCmd_CalcWeatherBallParams\n");
    // debugsyscall(buf);

    if (!CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) && !CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK)) {
        if ((sp->field_condition & FIELD_CONDITION_WEATHER) && !(sp->field_condition & WEATHER_STRONG_WINDS)) {
            sp->damage_power = sp->moveTbl[sp->current_move_index].power * 2;
            if (sp->field_condition & WEATHER_RAIN_ANY) {
                sp->move_type = TYPE_WATER;
            }
            if (sp->field_condition & WEATHER_SANDSTORM_ANY) {
                sp->move_type = TYPE_ROCK;
            }
            if (sp->field_condition & WEATHER_SUNNY_ANY) {
                sp->move_type = TYPE_FIRE;
            }
            if (sp->field_condition & WEATHER_HAIL_ANY) {
                sp->move_type = TYPE_ICE;
            }
            // In Pokémon XD: Gale of Darkness, when used during a shadowy aura, Weather Ball's power doubles to 100, and the move becomes a typeless physical move
            if (sp->field_condition & WEATHER_SHADOWY_AURA_ANY) {
                sp->move_type = TYPE_TYPELESS;
            }

        } else {
            sp->damage_power = sp->moveTbl[sp->current_move_index].power;
        }
    }

    return FALSE;
}

BOOL BtlCmd_EndOfTurnWeatherEffect(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    u32 battlerId = GrabClientFromBattleScriptParam(bsys, ctx, read_battle_script_param(ctx));

    ctx->temp_work = 0;
    ctx->hp_calc_work = 0;

    u32 type1 = BattlePokemonParamGet(ctx, battlerId, BATTLE_MON_DATA_TYPE1, NULL);
    u32 type2 = BattlePokemonParamGet(ctx, battlerId, BATTLE_MON_DATA_TYPE2, NULL);

    int item = GetBattleMonItem(ctx, battlerId);
    int hold_effect = BattleItemDataGet(ctx, item, 1);
    int ability = GetBattlerAbility(ctx, battlerId);

    if (CheckSideAbility(bsys, ctx, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0 && CheckSideAbility(bsys, ctx, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0) {
        if (ctx->field_condition & WEATHER_SANDSTORM_ANY) {
            if (type1 != TYPE_ROCK && type2 != TYPE_ROCK &&
                type1 != TYPE_STEEL && type2 != TYPE_STEEL &&
                type1 != TYPE_GROUND && type2 != TYPE_GROUND &&
                ctx->battlemon[battlerId].hp &&
                ability != ABILITY_SAND_VEIL &&
                ability != ABILITY_MAGIC_GUARD &&
                ability != ABILITY_OVERCOAT &&
                ability != ABILITY_SAND_RUSH &&
                ability != ABILITY_SAND_FORCE &&
                hold_effect != HOLD_EFFECT_SPORE_POWDER_IMMUNITY &&
                !(ctx->battlemon[battlerId].effect_of_moves & 0x40080)) {
                    ctx->waza_work = MOVE_SANDSTORM;
                    ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp * -1, 16);
            }
        }
        if (ctx->field_condition & WEATHER_SUNNY_ANY) {
            if (ctx->battlemon[battlerId].hp && !(ctx->battlemon[battlerId].effect_of_moves & 0x40080)) {
                if (ability == ABILITY_DRY_SKIN || ability == ABILITY_SOLAR_POWER) {
                    ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp * -1, 8);
                }
                if (ability == ABILITY_SOLAR_POWER) {
                    ctx->temp_work = 2;
                }
            }
        }
        if (ctx->field_condition & WEATHER_HAIL_ANY) {
            if (ctx->battlemon[battlerId].hp && !(ctx->battlemon[battlerId].effect_of_moves & 0x40080)) {
                if (ability == ABILITY_ICE_BODY) {
                    if (ctx->battlemon[battlerId].hp < (s32)ctx->battlemon[battlerId].maxhp) {
                        ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp, 16);
                    }
                } else if (type1 != TYPE_ICE && type2 != TYPE_ICE &&
                           ability != ABILITY_SNOW_CLOAK &&
                           ability != ABILITY_MAGIC_GUARD &&
                           ability != ABILITY_OVERCOAT &&
                           hold_effect != HOLD_EFFECT_SPORE_POWDER_IMMUNITY) {
                    ctx->waza_work = MOVE_HAIL;
                    ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp * -1, 16);

                }
            }
        }

        if (ctx->field_condition & WEATHER_SNOW_ANY) {
            if (ctx->battlemon[battlerId].hp && !(ctx->battlemon[battlerId].effect_of_moves & 0x40080)) {
                if (ability == ABILITY_ICE_BODY) {
                    if (ctx->battlemon[battlerId].hp < (s32)ctx->battlemon[battlerId].maxhp) {
                        ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp, 16);
                    }
                }
            }
        }

        if (ctx->field_condition & WEATHER_RAIN_ANY) {
            if (ctx->battlemon[battlerId].hp && ctx->battlemon[battlerId].hp < (s32)ctx->battlemon[battlerId].maxhp &&
                ability == ABILITY_RAIN_DISH) {
                ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp, 16);
            }
            if (ctx->battlemon[battlerId].hp && ctx->battlemon[battlerId].hp < (s32)ctx->battlemon[battlerId].maxhp &&
                ability == ABILITY_DRY_SKIN) {
                ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[battlerId].maxhp, 8);
            }
        }
    }

    return FALSE;
}

BOOL BtlCmd_TryWish(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    int adrs = read_battle_script_param(ctx);

    if (ctx->fcc.wish_count[ctx->attack_client]) {
        IncrementBattleScriptPtr(ctx, adrs);
    } else {
        ctx->fcc.wish_count[ctx->attack_client] = 2;
        ctx->fcc.wish_sel_mons[ctx->attack_client] = ctx->sel_mons_no[ctx->attack_client];

        for (int i = 0; i < CLIENT_MAX * FUTURE_CONDITION_MAX; i++) {
            if (ctx->futureConditionQueue[i].conditionType.futureConditionType == FUTURE_CONDITION_NONE) {
                ctx->futureConditionQueue[i].conditionType.futureConditionType = FUTURE_CONDITION_WISH;
                ctx->futureConditionQueue[i].affectedClient = ctx->attack_client;
                break;
            }
        }
    }

    return FALSE;
}

// TODO: Modernize damage
BOOL BtlCmd_TryFutureSight(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    int adrs = read_battle_script_param(ctx);

    if (ctx->fcc.future_prediction_count[ctx->defence_client] == 0) {
        int side = IsClientEnemy(bsys, ctx->defence_client);
        ctx->side_condition[side] |= SIDE_STATUS_FUTURE_SIGHT;
        ctx->fcc.future_prediction_count[ctx->defence_client] = 3;
        ctx->fcc.future_prediction_wazano[ctx->defence_client] = ctx->current_move_index;
        ctx->fcc.future_prediction_client_no[ctx->defence_client] = ctx->attack_client;
        int damage = CalcBaseDamage(bsys, ctx, ctx->current_move_index, ctx->side_condition[side], ctx->field_condition, 0, 0, ctx->attack_client, ctx->defence_client, 1) * -1;
        ctx->fcc.future_prediction_damage[ctx->defence_client] = AdjustDamageForRoll(bsys, ctx, damage);
        if (ctx->oneTurnFlag[ctx->attack_client].helping_hand_flag) {
            ctx->fcc.future_prediction_damage[ctx->defence_client] = ctx->fcc.future_prediction_damage[ctx->defence_client]*15/10;
        }

        for (int i = 0; i < CLIENT_MAX * FUTURE_CONDITION_MAX; i++) {
            if (ctx->futureConditionQueue[i].conditionType.futureConditionType == FUTURE_CONDITION_NONE) {
                ctx->futureConditionQueue[i].conditionType.futureConditionType = FUTURE_CONDITION_FUTURE_SIGHT_OR_DOOM_DESIRE;
                ctx->futureConditionQueue[i].affectedClient = ctx->defence_client;
                break;
            }
        }
    } else {
        IncrementBattleScriptPtr(ctx, adrs);
    }

    return FALSE;
}

BOOL BtlCmd_SetMultiHit(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    int cnt = read_battle_script_param(ctx);
    int checkMultiHit = read_battle_script_param(ctx);

    if (ctx->multi_hit_count_temp == 0) {
        // Handle 2-5 hits
        if (cnt == 0) {
            if (GetBattlerAbility(ctx, ctx->attack_client) == ABILITY_SKILL_LINK) {
                cnt = 5;
            } else if (HeldItemHoldEffectGet(ctx, ctx->attack_client) == HOLD_EFFECT_INCREASE_MULTI_STRIKE_MINIMUM) { // Loaded Dice
                cnt = (BattleRand(bsys) & 1) + 4; // 0-1 + 4 -> 4-5 hits
            } else {
                cnt = (BattleRand(bsys) & 100);
                if (cnt >= 0 && cnt <= 35) {
                    cnt = 2;
                } else if (cnt > 35 && cnt <= 70) {
                    cnt = 3;
                } else if (cnt > 70 && cnt <= 85) {
                    cnt = 4;
                } else {
                    cnt = 5;
                }
            }
        }

        // Population Bomb
        if (cnt == 10 && HeldItemHoldEffectGet(ctx, ctx->attack_client) == HOLD_EFFECT_INCREASE_MULTI_STRIKE_MINIMUM) {
            cnt = BattleRand(bsys) % 7 + 4; // 0-6 + 4 -> 4-10 hits
        }

        ctx->multi_hit_count = cnt;
        ctx->multi_hit_count_temp = cnt;

        // MULTIHIT_TRIPLE_KICK, 0xDD
        // MULTIHIT_MULTI_HIT_MOVE, 0xFD
        if (HeldItemHoldEffectGet(ctx, ctx->attack_client) == HOLD_EFFECT_INCREASE_MULTI_STRIKE_MINIMUM) {  // Loaded Dice
            ctx->loop_hit_check = 0xFD;
        } else {
            ctx->loop_hit_check = checkMultiHit;
        }
    }

    return FALSE;
}

BOOL BtlCmd_TrySubstitute(void *bw UNUSED, struct BattleStruct *sp)
{
    IncrementBattleScriptPtr(sp, 1);

    int adrs = read_battle_script_param(sp);

    int subHp = BattleDamageDivide(sp->battlemon[sp->attack_client].maxhp, 4);

    if (sp->battlemon[sp->attack_client].hp <= subHp) {
        IncrementBattleScriptPtr(sp, adrs);
    } else {
        sp->hp_calc_work = -subHp;
        sp->battlemon[sp->attack_client].moveeffect.substituteHp = subHp;
        sp->binding_turns[sp->attack_client] = 0;
        //sp->battlemon[sp->attack_client].condition2 &= ~STATUS2_BIND;
    }

    return FALSE;
}

BOOL BtlCmd_RapidSpin(void *bw, struct BattleStruct *sp)
{
    int side = IsClientEnemy(bw, sp->attack_client);

    //Binding Moves
    if (sp->binding_turns[sp->attack_client] != 0) {
        sp->binding_turns[sp->attack_client] = 0;
        sp->client_work = sp->battlemon[sp->attack_client].moveeffect.battlerIdBinding;
        sp->waza_work = sp->battlemon[sp->attack_client].moveeffect.bindingMove;
        SkillSequenceGosub(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BREAK_CLAMP);
        return FALSE;
    }

    //Leech Seed
    if (sp->battlemon[sp->attack_client].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE) {
        sp->battlemon[sp->attack_client].effect_of_moves &= ~MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE;
        sp->battlemon[sp->attack_client].effect_of_moves &= ~MOVE_EFFECT_LEECH_SEED_BATTLER;
        sp->waza_work = MOVE_LEECH_SEED;
        SkillSequenceGosub(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BLOW_AWAY_HAZARDS_MESSAGE);
        return FALSE;
    }

    //Spikes
    if (sp->scw[side].spikesLayers) {
        sp->side_condition[side] &= ~SIDE_STATUS_SPIKES;
        sp->scw[side].spikesLayers = 0;
        sp->waza_work = MOVE_SPIKES;
        SkillSequenceGosub(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BLOW_AWAY_HAZARDS_MESSAGE);
        return FALSE;
    }

    //Toxic Spikes
    if (sp->scw[side].toxicSpikesLayers) {
        sp->side_condition[side] &= ~SIDE_STATUS_TOXIC_SPIKES;
        sp->scw[side].toxicSpikesLayers = 0;
        sp->waza_work = MOVE_TOXIC_SPIKES;
        SkillSequenceGosub(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BLOW_AWAY_HAZARDS_MESSAGE);
        return FALSE;
    }

    //Stealth Rocks
    if (sp->side_condition[side] & SIDE_STATUS_STEALTH_ROCK) {
        sp->side_condition[side] &= ~SIDE_STATUS_STEALTH_ROCK;
        sp->waza_work = MOVE_STEALTH_ROCK;
        SkillSequenceGosub(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BLOW_AWAY_HAZARDS_MESSAGE);
        return FALSE;
    }

    IncrementBattleScriptPtr(sp, 1);

    return FALSE;
}

/**
 *  @brief check if a substitute is up and jump to destination if there is one up
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL BtlCmd_CheckSubstitute(void *bsys, struct BattleStruct *ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    int side = read_battle_script_param(ctx);
    int adrs = read_battle_script_param(ctx);

    int battlerId = GrabClientFromBattleScriptParam(bsys, ctx, side);

    // handle infiltrator
    if ((ctx->addeffect_type == 4 || ctx->addeffect_type == 1) // SIDE_EFFECT_TYPE_MOVE_EFFECT || SIDE_EFFECT_TYPE_DIRECT
                                                                           // if the current check is being done from a move or move effect
     && GetBattlerAbility(ctx, ctx->attack_client) == ABILITY_INFILTRATOR  // and the attacker's ability is infiltrator
     && ctx->current_move_index != MOVE_TRANSFORM                          // and the move is not transform
     && ctx->current_move_index != MOVE_SKY_DROP)                          // and the move is not sky drop
    {
        return FALSE; // bypass the substitute that is up
    }

    if (ctx->battlemon[battlerId].condition2 & STATUS2_SUBSTITUTE || ctx->oneSelfFlag[battlerId].status_flag & SELF_STATUS_FLAG_SUBSTITUTE_HIT)
    {
        IncrementBattleScriptPtr(ctx, adrs);
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
        // technically this can be knocked off as of SV but the transformation code hasnt been moved to the core as of right now so ill leave it alone for right now
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
        // masks can not be knocked off of ogerpon
        && !(species == SPECIES_OGERPON && IS_ITEM_MASK(item))
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
