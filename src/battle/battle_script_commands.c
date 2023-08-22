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


BOOL btl_scr_cmd_E1_reduceweight(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_E2_heavyslamdamagecalc(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_E3_isuserlowerlevel(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_E4_settailwind(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_E5_iftailwindactive(void *bw, struct BattleStruct *sp);

typedef BOOL (*btl_scr_cmd_func)(void *bw, struct BattleStruct *sp);
#define START_OF_NEW_BTL_SCR_CMDS 0xE1
extern const btl_scr_cmd_func BattleScriptCmdTable[];


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
};



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
            sprintf(buf, "%s - 0x%02X\n", BattleScrCmdNames[command], command);
            debugsyscall(buf);
            if (command == 0xE0 || command == 0x24)
            {
                debugsyscall("\n");
                cmdAddress = 0;
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

    if ((((sp->server_status_flag & SERVER_STATUS_FLAG_NO_ANIMATIONS) == 0)
      && (BattleWorkConfigWazaEffectOnOffCheck(bw) == TRUE))
     || (move == MOVE_TRANSFORM || move == MOVE_470)) // mega evolution is animation 470--force it to play regardless of whether or not animations are on
    {
        sp->server_status_flag |= SERVER_STATUS_FLAG_NO_ANIMATIONS;
        SCIO_WazaEffectSet(bw, sp, move);
    }
    if (BattleWorkConfigWazaEffectOnOffCheck(bw) == FALSE)
    {
        SkillSequenceGosub(sp, 1, SUB_SEQ_WAIT_FOR_UNPLAYED_ANIMATION);
    }

    return FALSE;
}


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

    cli_a = SideClientNoGet(bw, sp, attack);
    cli_d = SideClientNoGet(bw, sp, defence);

    if ((((sp->server_status_flag & SERVER_STATUS_FLAG_NO_ANIMATIONS)==0)
      && (BattleWorkConfigWazaEffectOnOffCheck(bw) == TRUE))
     || (move == MOVE_TRANSFORM || move == MOVE_470))
    {
        sp->server_status_flag |= SERVER_STATUS_FLAG_NO_ANIMATIONS;
        SCIO_WazaEffect2Set(bw, sp, move, cli_a, cli_d);
    }
    if (BattleWorkConfigWazaEffectOnOffCheck(bw) == FALSE)
    {
        SkillSequenceGosub(sp, 1, SUB_SEQ_WAIT_FOR_UNPLAYED_ANIMATION);
    }

    return FALSE;
}


BOOL btl_scr_cmd_24_jumptocurmoveeffectscript(void *bw, struct BattleStruct *sp)
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
                effect = MOVE_EFFECT_RECOIL_HIT;
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
//        //int mons_getting_exp = 0;
//        //int mons_getting_exp_from_item = 0;
//        u16 item;
//        u32 totalexp;
//        int eqp;
//        struct PartyPokemon *pp;
//
//        sp->mons_getting_exp = 0;
//        sp->mons_getting_exp_from_item = 0;
//
//        for (i = 0; i < BattleWorkPokePartyGet(bw, 0)->PokeCount; i++)
//        {
//            pp = BattleWorkPokemonParamGet(bw, 0, i);
//            if ((GetMonData(pp, ID_PARA_monsno, NULL)) && (GetMonData(pp, ID_PARA_hp, NULL)))
//            {
//                if (sp->obtained_exp_right_flag[(sp->fainting_client >> 1) & 1] & No2Bit(i))
//                {
//                    sp->mons_getting_exp++;
//                }
//
//                item = GetMonData(pp, ID_PARA_item, NULL);
//                eqp = BattleItemDataGet(sp, item, 1);
//
//                if (eqp == HOLD_EFFECT_EXP_SHARE)
//                {
//                    sp->mons_getting_exp_from_item++;
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


struct EXP_CALCULATOR
{
    /* 0x00 */ void *bw;
    /* 0x04 */ struct BattleStruct *sp;
    /* 0x08 */ u8 unk8[0x28-0x8];
    /* 0x28 */ u32 seq_no;
    /* 0x2C */ u32 ballID;
    /* 0x30 */ u32 work[8];
}; // size = 0x50


// forgot i could do this so fucking nice
void Task_DistributeExp_Extend(void *arg0, void *work)
{
    struct EXP_CALCULATOR *expcalc = work;
#if EXPERIENCE_FORMULA_GEN == 5 || EXPERIENCE_FORMULA_GEN > 6 // scaled exp rate
    int sel_mons_no;
    struct PartyPokemon *pp;
    int client_no;
    int exp_client_no;
    int item;
    int eqp;
    u32 totalexp = 0;

    client_no = (expcalc->sp->fainting_client) >> 1 & 1;
    exp_client_no = 0;

    // count how many pokémon are getting experience - only count for the first pokemon, don't update until the next time we gain after
    if (expcalc->work[6] == 0)
    {
        expcalc->sp->mons_getting_exp = 0;
        expcalc->sp->mons_getting_exp_from_item = 0;
        for (int i = 0; i < BattleWorkPokePartyGet(expcalc->bw, 0)->PokeCount; i++)
        {
            pp = BattleWorkPokemonParamGet(expcalc->bw, exp_client_no, i);
            if ((GetMonData(pp, ID_PARA_monsno, NULL)) && (GetMonData(pp, ID_PARA_hp, NULL)))
            {
                if (expcalc->sp->obtained_exp_right_flag[(expcalc->sp->fainting_client >> 1) & 1] & No2Bit(i))
                {
                    expcalc->sp->mons_getting_exp++;
                }

                item = GetMonData(pp, ID_PARA_item, NULL);
                eqp = BattleItemDataGet(expcalc->sp, item, 1);

                if (eqp == HOLD_EFFECT_EXP_SHARE)
                {
                    expcalc->sp->mons_getting_exp_from_item++;
                }
            }
        }
    }

    // grab the pokémon that is actually gaining the experience
    for (sel_mons_no = expcalc->work[6]; sel_mons_no < BattleWorkPokeCountGet(expcalc->bw, exp_client_no); sel_mons_no++)
    {
        pp = BattleWorkPokemonParamGet(expcalc->bw, exp_client_no, sel_mons_no);
        item = GetMonData(pp, ID_PARA_item, NULL);
        eqp = GetItemData(item, ITEM_PARAM_HOLD_EFFECT, 5);
        if ((eqp == HOLD_EFFECT_EXP_SHARE) || (expcalc->sp->obtained_exp_right_flag[client_no] & No2Bit(sel_mons_no)))
        {
            break;
        }
    }

    // actually calculate the experience
    u32 Lp = GetMonData(pp, ID_PARA_level, NULL); // this should contain the level of the person getting experience
    u32 level = expcalc->sp->battlemon[expcalc->sp->fainting_client].level + 1; // need to calculate exp individually for each mon it seems

    totalexp = GetSpeciesBaseExp(expcalc->sp->battlemon[expcalc->sp->fainting_client].species, expcalc->sp->battlemon[expcalc->sp->fainting_client].form_no); // base experience
    totalexp = (totalexp * level) / 5;

    u32 top = (2*level + 10) * (2*level + 10); // tack on the square root later
    u32 bottom = (level + Lp + 10) * (level + Lp + 10) * sqrt(level + Lp + 10);

    totalexp *= top;
    totalexp /= bottom;
    totalexp = totalexp * sqrt(2*level + 10); // square root tacked on

    if (expcalc->sp->mons_getting_exp_from_item)
    {
        expcalc->sp->obtained_exp = (totalexp / 2) / expcalc->sp->mons_getting_exp;
        if (expcalc->sp->obtained_exp == 0)
        {
            expcalc->sp->obtained_exp = 1;
        }
        expcalc->sp->exp_share_obtained_exp = (totalexp / 2) / expcalc->sp->mons_getting_exp_from_item;
        if (expcalc->sp->exp_share_obtained_exp == 0)
        {
            expcalc->sp->exp_share_obtained_exp = 1;
        }
    }
    else
    {
        expcalc->sp->obtained_exp = totalexp / expcalc->sp->mons_getting_exp;
        if (expcalc->sp->obtained_exp == 0)
        {
            expcalc->sp->obtained_exp = 1;
        }
        expcalc->sp->exp_share_obtained_exp = 0;
    }
#else // EXPERIENCE_FORMULA_GEN < 5 || EXPERIENCE_FORMULA_GEN == 6 // flat exp rate needs to be calculated
    {
        int i;
        u16 item;
        u32 totalexp;
        int eqp;
        struct PartyPokemon *pp;
        struct BattleStruct *sp = expcalc->sp;
        void *bw = expcalc->bw;

        // count how many pokémon are getting experience - only count for the first pokemon, don't update until the next time we gain after
        if (expcalc->work[6] == 0)
        {
            expcalc->sp->mons_getting_exp = 0;
            expcalc->sp->mons_getting_exp_from_item = 0;
            for (int i = 0; i < BattleWorkPokePartyGet(expcalc->bw, 0)->PokeCount; i++)
            {
                pp = BattleWorkPokemonParamGet(expcalc->bw, exp_client_no, i);
                if ((GetMonData(pp, ID_PARA_monsno, NULL)) && (GetMonData(pp, ID_PARA_hp, NULL)))
                {
                    if (expcalc->sp->obtained_exp_right_flag[(expcalc->sp->fainting_client >> 1) & 1] & No2Bit(i))
                    {
                        expcalc->sp->mons_getting_exp++;
                    }

                    item = GetMonData(pp, ID_PARA_item, NULL);
                    eqp = BattleItemDataGet(expcalc->sp, item, 1);

                    if (eqp == HOLD_EFFECT_EXP_SHARE)
                    {
                        expcalc->sp->mons_getting_exp_from_item++;
                    }
                }
            }
        }

        // multiply by 255/390 (map audino to 255) to not get massively inflated experience rates
        totalexp = 255 * GetSpeciesBaseExp(sp->battlemon[sp->fainting_client].species, sp->battlemon[sp->fainting_client].form_no) / 390;//PokePersonalParaGet(sp->battlemon[sp->fainting_client].species, PERSONAL_EXP_YIELD);
        totalexp = (totalexp * sp->battlemon[sp->fainting_client].level) / 7;
        if (expcalc->sp->mons_getting_exp_from_item)
        {
            sp->obtained_exp = (totalexp / 2) / expcalc->sp->mons_getting_exp;
            if (sp->obtained_exp == 0)
            {
                sp->obtained_exp = 1;
            }
            sp->exp_share_obtained_exp = (totalexp / 2) / expcalc->sp->mons_getting_exp_from_item;
            if (sp->exp_share_obtained_exp == 0)
            {
                sp->exp_share_obtained_exp = 1;
            }
        }
        else
        {
            sp->obtained_exp = totalexp / expcalc->sp->mons_getting_exp;
            if (sp->obtained_exp == 0)
            {
                sp->obtained_exp = 1;
            }
            sp->exp_share_obtained_exp = 0;
        }
    }
#endif

    Task_DistributeExp(arg0, work);
}


#ifdef IMPLEMENT_CAPTURE_EXPERIENCE

extern u32 gKeepStructureCallbackIntact;
u32 ALIGN4 store_current_exp_step = 0;
u32 ALIGN4 store_work_params[7] = {0, 0, 0, 0, 0, 0, 0};

#endif // IMPLEMENT_CAPTURE_EXPERIENCE


BOOL Task_DistributeExp_capture_experience(void *arg0, void *work, u32 get_client_no)
{
#ifdef IMPLEMENT_CAPTURE_EXPERIENCE

    BOOL ret = FALSE;
    u32 original_work_params[7];
    struct EXP_CALCULATOR *expcalc = work;

    if (BattleTypeGet(expcalc->bw) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_POKE_PARK | BATTLE_TYPE_CATCHING_DEMO)) // these types of battles should not yield experience when catching a pokémon
        return TRUE;

    gKeepStructureCallbackIntact = 1; // signal to experience callback that it shouldn't delete the overall pokemon-getting callback since we're technically a parasite here

    // first step:  store the required variables
    u32 store_fainting_client = expcalc->sp->fainting_client;
    expcalc->seq_no = store_current_exp_step;
    for (int i = 0; i < 7; i++)
    {
        original_work_params[i] = expcalc->work[i];
    }

    // second step:  overwrite required vars for exp calculation.  part is also done in for loop above, oh well
    expcalc->sp->fainting_client = get_client_no;
    for (int i = 0; i < 7; i++)
    {
        expcalc->work[i] = store_work_params[i];
    }

    // third step:  run current step of exp distribution
    Task_DistributeExp_Extend(arg0, expcalc);


    // fourth step:  if exp has finished, reset exp vars and return TRUE so that the parent function can move forward
    if (expcalc->seq_no == 38) // force nothing else to run
    {
        ret = TRUE;

        store_current_exp_step = 0;
        for (int i = 0; i < 7; i++) // reset and pass back to main func
        {
            store_work_params[i] = 0;
            expcalc->work[i] = original_work_params[i];
        }
    }
    else // otherwise store the exp step to the variable, restore work params, pass back to main func
    {
        store_current_exp_step = expcalc->seq_no;
        for (int i = 0; i < 7; i++)
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
     && ((sp->server_status_flag2 & SERVER_STATUS2_FLAG_x10) == 0))
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
                sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
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
                sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
                sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                sp->mp.msg_para[2] = STAT_ATTACK + stattochange;
            }
            else if (sp->addeffect_type == ADD_EFFECT_HELD_ITEM)
            {
                sp->mp.msg_id = BATTLE_MSG_ITEM_RAISED_STAT;
                sp->mp.msg_tag = TAG_NICK_ITEM_STAT;
                sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
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
                sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
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
                    sp->mp.msg_para[0] = TagNickParaMake(sp,sp->state_client);
                    flag = 1;
                }
                else if ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_CLEAR_BODY) == TRUE)
                      || (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_WHITE_SMOKE) == TRUE)
                      || (GetBattlerAbility(sp, sp->state_client) == ABILITY_FULL_METAL_BODY)   // Full Metal Body cannot be ignored
                      || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_FLOWER_VEIL) == TRUE) &&
                            (sp->battlemon[sp->attack_client].type1 == TYPE_GRASS || sp->battlemon[sp->attack_client].type2 == TYPE_GRASS)))
                    {
                    if (sp->addeffect_type == ADD_EFFECT_ABILITY)
                    {
                        sp->mp.msg_id = BATTLE_MSG_ABILITY_SUPPRESSES_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICK_ABILITY_NICK_ABILITY;
                        sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
                        sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                        sp->mp.msg_para[2] = TagNickParaMake(sp, sp->attack_client);
                        sp->mp.msg_para[3] = sp->battlemon[sp->attack_client].ability;
                    }
                    else
                    {
                        sp->mp.msg_id = BATTLE_MSG_PREVENTS_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICK_ABILITY;
                        sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
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
                        sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
                        sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                        sp->mp.msg_para[2] = TagNickParaMake(sp, sp->attack_client);
                        sp->mp.msg_para[3] = sp->battlemon[sp->attack_client].ability;
                    }
                    else
                    {
                        sp->mp.msg_id = BATTLE_MSG_ITEM_PREVENTS_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICK_ABILITY_STAT;
                        sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
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
                        sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
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
                else if (sp->battlemon[sp->state_client].condition2 & STATUS2_FLAG_SUBSTITUTE)
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
                    sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
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
            sp->mp.msg_para[0] = TagNickParaMake(sp, sp->client_work);
            sp->mp.msg_para[1] = sp->battlemon[sp->client_work].ability;
            sp->mp.msg_para[2] = STAT_ATTACK + stattochange;
        }
        else if (sp->addeffect_type == ADD_EFFECT_ABILITY)
        {
            sp->mp.msg_id = BATTLE_MSG_ATK_ABILITY_CUTS_MON_STAT;
            sp->mp.msg_tag = TAG_NICK_ABILITY_NICK_STAT;
            sp->mp.msg_para[0] = TagNickParaMake(sp, sp->attack_client);
            sp->mp.msg_para[1] = sp->battlemon[sp->attack_client].ability;
            sp->mp.msg_para[2] = TagNickParaMake(sp, sp->state_client);
            sp->mp.msg_para[3] = STAT_ATTACK + stattochange;
        }
        // certain abilities fuck it up.  this fixes them
        else if (sp->addeffect_type == ADD_EFFECT_PRINT_WORK_ABILITY)
        {
            sp->mp.msg_id = BATTLE_MSG_ATK_ABILITY_CUTS_MON_STAT;
            sp->mp.msg_tag = TAG_NICK_ABILITY_NICK_STAT;
            sp->mp.msg_para[0] = TagNickParaMake(sp, sp->client_work);
            sp->mp.msg_para[1] = sp->battlemon[sp->client_work].ability;
            sp->mp.msg_para[2] = TagNickParaMake(sp, sp->state_client);
            sp->mp.msg_para[3] = STAT_ATTACK+stattochange;
        }
        else
        {
            sp->mp.msg_id = ((statchange == -1) ? BATTLE_MSG_STAT_FELL : BATTLE_MSG_STAT_HARSHLY_FELL);
            sp->mp.msg_tag = TAG_NICK_STAT;
            sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
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

BOOL btl_scr_cmd_7c_beat_up_damage_calc(void *bw, struct BattleStruct *sp)
{
    int species, form, number_of_hits;
    s32 newBaseDamage;
    struct BattlePokemon *mon;
    
    IncrementBattleScriptPtr(sp, 1);

    int partyCount = Battle_GetClientPartySize(bw, sp->attack_client);

    if (sp->multi_hit_count_temp == 0) {

        sp->multi_hit_count_temp = 2;
        sp->loop_hit_check = 0xFD;
        sp->beat_up_count = 0;
        mon = Battle_GetClientPartyMon(bw, sp->attack_client, sp->beat_up_count); 

        while(sp->beat_up_count != sp->sel_mons_no[sp->attack_client] &&
                (GetMonData(mon, ID_PARA_hp, 0) == 0 || 
                GetMonData(mon, ID_PARA_monsno_egg, 0) == 0|| 
                GetMonData(mon, ID_PARA_monsno_egg, 0) == 494 || 
                GetMonData(mon, ID_PARA_condition, 0) != 0))
                {

            sp->beat_up_count++;
            mon = Battle_GetClientPartyMon(bw, sp->attack_client, sp->beat_up_count); 
        
        }
    }   

    mon = Battle_GetClientPartyMon(bw, sp->attack_client, sp->beat_up_count);
    species = GetMonData(mon, ID_PARA_monsno, 0);
    form = GetMonData(mon, ID_PARA_form_no, 0);

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
                (GetMonData(mon, ID_PARA_hp, 0) == 0 || 
                GetMonData(mon, ID_PARA_monsno_egg, 0) == 0 || 
                GetMonData(mon, ID_PARA_monsno_egg, 0) == 494 || 
                GetMonData(mon, ID_PARA_condition, 0) != 0))
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

const u16 sLowKickWeightToPower[][2] =
{
    {   100,     20}, //   0- 10 kg ->  20 bp
    {   250,     40}, //  10- 25 kg ->  40 bp
    {   500,     60}, //  25- 50 kg ->  60 bp
    {  1000,     80}, //  50-100 kg ->  80 bp
    {  2000,    100}, // 100-200 kg -> 100 bp
    {0xFFFF, 0xFFFF},
};

s32 GetPokemonWeight(void *bw, struct BattleStruct *sp, u32 client)
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

// also handles grass knot
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


BOOL btl_scr_cmd_d0_checkshouldleavewith1hp(void *bw, struct BattleStruct *sp)
{
    int side, client_no, holdeffect;
    int atk;
    int flag = 0;

    IncrementBattleScriptPtr(sp, 1);
    side = read_battle_script_param(sp);

    client_no = SideClientNoGet(bw, sp, side);
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
    else if ((holdeffect == HOLD_EFFECT_HP_MAX_SURVIVE_1_HP) && (sp->battlemon[client_no].hp == sp->battlemon[client_no].maxhp))
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

// treating this additionally as a switching hook.  we'll handle meloetta etc. here
BOOL btl_scr_cmd_d1_trynaturalcure(void *bw, struct BattleStruct *sp)
{
    int side, client_no, address, ability, condition;
    struct PartyPokemon *pp;

    IncrementBattleScriptPtr(sp, 1);
    side = read_battle_script_param(sp);
    address = read_battle_script_param(sp);

    client_no = SideClientNoGet(bw, sp, side);
    if ((sp->battlemon[client_no].hp) && (sp->sel_mons_no[client_no] != 6))
    {
        pp = BattleWorkPokemonParamGet(bw, client_no, sp->sel_mons_no[client_no]);
        ability = GetMonData(pp, ID_PARA_speabino, NULL);
        condition = GetMonData(pp, ID_PARA_condition, NULL);

        // handle meloetta pirouette form changing back to normal when switched out
        if ((sp->battlemon[client_no].species == SPECIES_MELOETTA)
         && (sp->battlemon[client_no].form_no != 0))
        {
            u32 form_no = 0;
            sp->battlemon[client_no].form_no = form_no;
            BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
            SetMonData(pp, ID_PARA_form_no, (u8 *)&form_no);
        }

        // natural cure is checked for here but handled by SwitchAbilityStatusRecoverCheck/the battle scripts this command is used in
        if ((sp->battlemon[client_no].ability != ABILITY_NATURAL_CURE)
         && (ST_ServerTokuseiStatusRecoverReshuffleCheck(sp, ability, condition) == FALSE)) // SwitchAbilityStatusRecoverCheck
        {
            IncrementBattleScriptPtr(sp, address);
        }

        // handle regenerator--mon restores 1/3 hp on switch
        if (ability == ABILITY_REGENERATOR) // switching mon ability is regenerator--not affected by gastro acid or etc
        {
            int hp = GetMonData(pp, ID_PARA_hp, NULL), hpmax = GetMonData(pp, ID_PARA_hpmax, NULL);

            int hpdelta = hpmax / 3;

            if ((hp + hpdelta) > hpmax)
                hp = hpmax;
            else
                hp += hpdelta;

            SetMonData(pp, ID_PARA_hp, (u8 *)&hp);
        }
    }
    else
    {
        IncrementBattleScriptPtr(sp, address);
    }

    return FALSE;
}


// NEW BATTLE SCRIPT COMMANDS

BOOL btl_scr_cmd_E1_reduceweight(void *bw, struct BattleStruct *sp)
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

BOOL btl_scr_cmd_E3_isuserlowerlevel(void *bw, struct BattleStruct *sp)
{
    IncrementBattleScriptPtr(sp, 1);
    int address = read_battle_script_param(sp);

    if (sp->battlemon[sp->attack_client].level < sp->battlemon[sp->defence_client].level)
        IncrementBattleScriptPtr(sp, address);
    return FALSE;
}

BOOL btl_scr_cmd_E4_settailwind(void *bw, struct BattleStruct *sp)
{
    IncrementBattleScriptPtr(sp, 1);
    u32 client_no = read_battle_script_param(sp);

    client_no = SideClientNoGet(bw, sp, client_no);

    sp->tailwindCount[IsClientEnemy(bw, client_no)] = 4;

    return FALSE;
}

BOOL btl_scr_cmd_E5_iftailwindactive(void *bw, struct BattleStruct *sp)
{
    IncrementBattleScriptPtr(sp, 1);
    u32 client_no = read_battle_script_param(sp);
    u32 address = read_battle_script_param(sp);

    client_no = SideClientNoGet(bw, sp, client_no);

    if (sp->tailwindCount[IsClientEnemy(bw, client_no)])
        IncrementBattleScriptPtr(sp, address);

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

// calculate the amount of shakes that the ball will take.  4 is a success.  5 will do for critical capture
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

        if (BattleRand(bw) & 0xFF < criticalCaptureWork) // return critical capture number
            criticalCapture = TRUE;

        if (criticalCapture)
            caughtMons = 1;
        else
            caughtMons = 4;

        for (i = 0; i < caughtMons; i++) // there are 4 shake checks apparently
        {
            if (BattleRand(bw) >= captureRate)
            {
                break;
            }
        }

        if(sp->item_work == ITEM_FRIEND_BALL && i == caughtMons) // if amount of succeeded captures is the same as necessary for the type of capture
        {
            u32 friendship = 200;
            SetMonData(Battle_GetClientPartyMon(bw,sp->defence_client,0), ID_PARA_friend, &friendship);
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
        SetMonData(Battle_GetClientPartyMon(bw,sp->defence_client,0), ID_PARA_friend, &friendship);
    }


#ifdef GUARANTEE_CAPTURES
    return 4;
#else
    return i;
#endif
}


sSuccessfulCriticalCapture = 0;


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
    else// if (shakes < 4)
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
u32 __attribute__((long_call)) GetBallID_ov7(u32 itemId);


u32 LoadCaptureSuccessSPA(u32 id)
{
    id = GetBallID_ov7(id);

    if (sSuccessfulCriticalCapture)
        return 133;
    else
        return BallToSpaIDs[id][0];
}


u32 LoadCaptureSuccessSPAStarEmitter(u32 id)
{
    id = GetBallID_ov7(id);

    if (sSuccessfulCriticalCapture)
        return 0;
    else
        return BallToSpaIDs[id][1];
}


u32 LoadCaptureSuccessSPANumEmitters(u32 id)
{
    id = GetBallID_ov7(id);

    if (sSuccessfulCriticalCapture)
        return 5;
    else
        return BallToSpaIDs[id][2];
}
