#include "../../include/types.h"
#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/mega.h"
#include "../../include/overlay.h"
#include "../../include/pokemon.h"
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

#ifdef DEBUG_BATTLE_SCENARIOS
#include "../../include/test_battle.h"
#endif

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
BOOL btl_scr_cmd_7c_beat_up_hit_count(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_87_tryknockoff(void *bw, struct BattleStruct *sp);
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
BOOL btl_scr_cmd_FC_trystickyweb(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_FD_trymegaorultraburstduringpursuit(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_FE_calcconfusiondamage(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_FF_checkcanactivatedefiantorcompetitive(void *bsys, struct BattleStruct *ctx);
BOOL btl_scr_cmd_100_jumptocurrententryhazard(void *bsys, struct BattleStruct *ctx);
void BattleContext_AddEntryHazardToQueue(struct BattleStruct *ctx, u32 side, u32 hazard);
BOOL btl_scr_cmd_101_addentryhazardtoqueue(void *bsys UNUSED, struct BattleStruct *ctx);
void BattleContext_RemoveEntryHazardFromQueue(struct BattleStruct *ctx, u32 side, u32 hazard);
BOOL btl_scr_cmd_102_removeentryhazardfromqueue(void *bsys UNUSED, struct BattleStruct *ctx);
BOOL btl_scr_cmd_103_checkprotectcontactmoves(void *bsys, struct BattleStruct *ctx);
BOOL btl_scr_cmd_104_tryincinerate(void* bsys, struct BattleStruct* ctx);
BOOL btl_scr_cmd_105_addtype(void* bsys UNUSED, struct BattleStruct* ctx);
BOOL btl_scr_cmd_106_tryauroraveil(void* bw, struct BattleStruct* ctx);
BOOL btl_scr_cmd_107_clearauroraveil(void *bsys, struct BattleStruct *ctx);
BOOL btl_scr_cmd_108_strengthsapcalc(void* bw, struct BattleStruct* sp);
BOOL btl_scr_cmd_109_checktargetispartner(void* bw, struct BattleStruct* sp);
BOOL btl_scr_cmd_10A_clearsmog(void *bsys UNUSED, struct BattleStruct *ctx);
BOOL btl_scr_cmd_10B_gotoifthirdtype(void* bsys UNUSED, struct BattleStruct* ctx);
BOOL btl_scr_cmd_10C_gotoifterastallized(void* bsys UNUSED, struct BattleStruct* ctx);
BOOL btl_scr_cmd_10D_HandleRoost(void* bsys UNUSED, struct BattleStruct* ctx);
BOOL btl_scr_cmd_10E_HandleSoak(void* bsys UNUSED, struct BattleStruct* ctx);
BOOL btl_scr_cmd_10F_HandleMagicPowder(void* bsys UNUSED, struct BattleStruct* ctx);
BOOL btl_scr_cmd_110_HandleForestsCurse(void* bsys UNUSED, struct BattleStruct* ctx);
BOOL btl_scr_cmd_111_HandleTrickOrTreat(void* bsys UNUSED, struct BattleStruct* ctx);
BOOL btl_scr_cmd_112_HandleBurnUp(void* bsys UNUSED, struct BattleStruct* ctx);
BOOL btl_scr_cmd_113_HandleDoubleShock(void* bsys UNUSED, struct BattleStruct* ctx);
BOOL btl_scr_cmd_114_stuffCheeks(void *bsys, struct BattleStruct *ctx);
BOOL btl_scr_cmd_115_setMoveConditionFlag(void *bsys, struct BattleStruct *ctx);
BOOL BtlCmd_GoToMoveScript(struct BattleSystem *bsys, struct BattleStruct *ctx);
BOOL BtlCmd_WeatherHPRecovery(void *bw, struct BattleStruct *sp);
BOOL BtlCmd_CalcWeatherBallParams(void *bw, struct BattleStruct *sp);
BOOL BtlCmd_EndOfTurnWeatherEffect(struct BattleSystem *bsys, struct BattleStruct *ctx);
BOOL BtlCmd_TryWish(struct BattleSystem *bsys, struct BattleStruct *ctx);
BOOL BtlCmd_TryFutureSight(struct BattleSystem *bsys, struct BattleStruct *ctx);
BOOL BtlCmd_SetMultiHit(struct BattleSystem *bsys, struct BattleStruct *ctx);
BOOL BtlCmd_TryProtection(void *bsys, struct BattleStruct *ctx);
BOOL BtlCmd_TrySubstitute(void *bw, struct BattleStruct *sp);
BOOL BtlCmd_TrySwapItems(void *bw, struct BattleStruct *sp);
BOOL BtlCmd_RapidSpin(void *bw, struct BattleStruct *sp);
BOOL BtlCmd_GenerateEndOfBattleItem(struct BattleSystem *bw, struct BattleStruct *sp);
BOOL BtlCmd_TryPluck(void* bw, struct BattleStruct* sp);
BOOL BtlCmd_TryFling(void *bw, struct BattleStruct *sp);
BOOL BtlCmd_PlayFaintAnimation(struct BattleSystem* bsys, struct BattleStruct* sp);
BOOL BtlCmd_TryBreakScreens(struct BattleSystem *bsys, struct BattleStruct *ctx);
BOOL BtlCmd_ResetAllStatChanges(struct BattleSystem *bsys, struct BattleStruct *ctx);
BOOL BtlCmd_CheckToxicSpikes(struct BattleSystem *bsys, struct BattleStruct *ctx);
BOOL BtlCmd_CopyStatStages(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx);
u32 CalculateBallShakes(void *bw, struct BattleStruct *sp);
u32 DealWithCriticalCaptureShakes(struct EXP_CALCULATOR *expcalc, u32 shakes);
u32 LoadCaptureSuccessSPA(u32 id);
u32 LoadCaptureSuccessSPAStarEmitter(u32 id);
u32 LoadCaptureSuccessSPANumEmitters(u32 id);

#ifdef DEBUG_BATTLE_SCRIPT_COMMANDS
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpointer-sign"
const u8 *BattleScrCmdNames[] =
{
    "PlayEncounterAnimation",
    "SetPokemonEncounter",
    "PokemonSlideIn",
    "PokemonSendOut",
    "RecallPokemon",
    "DeletePokemon",
    "SetTrainerEncounter",
    "ThrowPokeball",
    "TrainerSlideOut",
    "TrainerSlideIn",
    "BackgroundSlideI",
    "HealthbarSlideIn",
    "HealthbarSlideInDelay",
    "HealthbarSlideOut",
    "Wait",
    "CalcDamage",
    "CalcMaxDamage",
    "PrintAttackMessage",
    "PrintMessage",
    "PrintGlobalMessage",
    "PrintBufferedMessage",
    "BufferMessage",
    "BufferLocalMessage",
    "PlayMoveAnimation",
    "PlayMoveAnimationOnMons",
    "FlickerMon",
    "UpdateHealthBarValue",
    "UpdateHealthBar",
    "TryFaintMon",
    "PlayFaintAnimation",
    "WaitButtonABTime",
    "PlaySound",
    "CompareVarToValue",
    "CompareMonDataToValue",
    "FadeOutBattle",
    "GoToSubscript",
    "GoToEffectScript",
    "GoToMoveScript",
    "CalcCrit",
    "CalcExpGain",
    "StartGetExpTask",
    "WaitGetExpTask",
    "Dummy2A",
    "ShowParty",
    "WaitMonSelection",
    "SwitchAndUpdateMon",
    "GoToIfAnySwitches",
    "StartCatchMonTask",
    "WaitCatchMonTask",
    "SetMultiHit",
    "UpdateVar",
    "ChangeStatStage",
    "UpdateMonData",
    "ClearVolatileStatus",
    "ToggleVanish",
    "CheckAbility",
    "Random",
    "UpdateVarFromVar",
    "UpdateMonDataFromVar",
    "GoTo",
    "Call",
    "CallFromVar",
    "SetMirrorMove",
    "ResetAllStatChanges",
    "LockMoveChoice",
    "UnlockMoveChoice",
    "SetHealthbarStatus",
    "PrintTrainerMessage",
    "PayPrizeMoney",
    "PlayBattleAnimation",
    "PlayBattleAnimationOnMons",
    "PlayBattleAnimationFromVar",
    "PrintRecallMessage",
    "PrintSendOutMessage",
    "PrintEncounterMessage",
    "PrintFirstSendOutMessage",
    "PrintBufferedTrainerMessage",
    "TryConversion",
    "CompareVarToVar",
    "CompareMonDataToVar",
    "AddPayDayMoney",
    "TryLightScreen",
    "TryReflect",
    "TryMist",
    "TryOHKOMove",
    "DivideVarByValue",
    "DivideVarByVar",
    "TryMimic",
    "Metronome",
    "TryDisable",
    "Counter",
    "MirrorCoat",
    "TryEncore",
    "TryConversion2",
    "TrySketch",
    "TrySleepTalk",
    "CalcFlailPower",
    "TrySpite",
    "TryPartyStatusRefresh",
    "TryStealItem",
    "TryProtection",
    "TrySubstitute",
    "TryWhirlwind",
    "Transform",
    "TrySpikes",
    "CheckSpikes",
    "TryPerishSong",
    "GetMonBySpeedOrder",
    "GoToIfValidMon",
    "EndOfTurnWeatherEffect",
    "CalcRolloutPower",
    "CalcFuryCutterPower",
    "TryAttract",
    "TrySafeguard",
    "Present",
    "CalcMagnitudePower",
    "TryReplaceFaintedMon",
    "RapidSpin",
    "WeatherHPRecovery",
    "CalcHiddenPowerParams",
    "CopyStatStages",
    "TryFutureSight",
    "CheckMoveHit",
    "TryTeleport",
    "BeatUp",
    "FollowMe",
    "TryHelpingHand",
    "TrySwapItems",
    "TryWish",
    "TryAssist",
    "TrySetMagicCoat",
    "MagicCoat",
    "CalcRevengePowerMul",
    "TryBreakScreens",
    "TryYawn",
    "TryKnockOff",
    "CalcHPFalloffPower",
    "TryImprison",
    "TryGrudge",
    "TrySnatch",
    "CalcWeightBasedPower",
    "CalcWeatherBallParams",
    "TryPursuit",
    "ApplyTypeEffectiveness",
    "IfTurnFlag",
    "SetTurnFlag",
    "CalcGyroBallPower",
    "TryMetalBurst",
    "CalcPaybackPower",
    "CalcTrumpCardPower",
    "CalcWringOutPower",
    "TryMeFirst",
    "TryCopycat",
    "CalcPunishmentPower",
    "TrySuckerPunch",
    "CheckSideCondition",
    "TryFeint",
    "CheckCanShareStatus",
    "TryLastResort",
    "TryToxicSpikes",
    "CheckToxicSpikes",
    "CheckIgnorableAbility",
    "IfSameSide",
    "GenerateEndOfBattleItem",
    "TrickRoom",
    "IfMovedThisTurn",
    "CheckItemHoldEffect",
    "GetItemHoldEffect",
    "GetItemEffectParam",
    "TryCamouflage",
    "GetTerrainMove",
    "GetTerrainSecondaryEffect",
    "CalcNaturalGiftParams",
    "TryPluck",
    "TryFling",
    "YesNoMenu",
    "WaitYesNoResult",
    "ChoosePokemonMenu",
    "WaitPokemonMenuResult",
    "SetLinkBattleResult",
    "CheckStealthRock",
    "CheckEffectActivation",
    "CheckChatterActivation",
    "GetCurrentMoveData",
    "SetMosaic",
    "ChangeForm",
    "SetBattleBackground",
    "UseBagItem",
    "TryEscape",
    "ShowBattleStartPartyGauge",
    "HideBattleStartPartyGauge",
    "ShowPartyGauge",
    "HidePartyGauge",
    "LoadPartyGaugeGraphics",
    "FreePartyGaugeGraphics",
    "IncrementGameStat",
    "RestoreSprite",
    "TriggerAbilityOnHit",
    "SpriteToOAM",
    "OAMToSprite",
    "CheckBlackOut",
    "BoostRandomStatBy2",
    "RemoveItem",
    "TryRecycle",
    "TriggerHeldItemOnHit",
    "PrintBattleResultMessage",
    "PrintEscapeMessage",
    "PrintForfeitMessage",
    "CheckHoldOnWith1HP",
    "TryRestoreStatusOnSwitch",
    "CheckSubstitute",
    "CheckIgnoreWeather",
    "SetRandomTarget",
    "TriggerHeldItemOnPivotMove",
    "RefreshSprite",
    "PlayMoveHitSound",
    "PlayBGM",
    "CheckSafariGameDone",
    "WaitTime",
    "CheckCurMoveIsType",
    "LoadArchivedMonData",
    "RefreshMonData",
    "COMMAND_DE",
    "COMMAND_DF",
    "End",
    "ReduceWeight",
    "CalcHeavySlamPower",
    "IsAttackerLevelLowerThanDefender",
    "SetTailwindCounter",
    "GotoIfTailwindActive",
    "GotoIfCurrentFieldIsType",
    "GotoIfMovePowerNotZero",
    "GotoIfGrounded",
    "GotoIfCurrentAdjustedMoveIsType",
    "GotoIfContactMove",
    "GotoIfSoundMove",
    "UpdateTerrainOverlay",
    "GotoIfTerrainOverlayIsType",
    "SetPsychicTerrainMoveUsedFlag",
    "GotoIfFirstHitOfParentalBond",
    "GotoIfSecondHitOfParentalBond",
    "SetParentalBondFlag",
    "GotoIfCurrentMoveIsValidForParentalBond",
    "GotoIfCanApplyKnockOffBoost",
    "GotoIfParentalBondIsActive",
    "ChangePermanentBackground",
    "ChangeExecutionOrderPriority",
    "SetBindingTurns",
    "ClearBindingTurns",
    "CanClearPrimalWeather",
    "SetAbilityActivatedFlag",
    "SwitchInAbilityCheck",
    "TryStickyWeb",
    "TryMegaOrUltraBurstDuringPursuit",
    "CalcConfusionDamage",
    "CheckCanActivateDefiantOrCompetitive",
    "JumpToCurrentEntryHazard",
    "AddEntryHazardToQueue",
    "RemoveEntryHazardFromQueue",
    "CheckProtectContactMoves",
    "TryIncinerate",
    "AddType",
    "TryAuroraVeil",
    "ClearAuroraVeil",
    "StrengthSapCalc",
    "CheckTargetIsPartner",
    "ClearSmog",
    "GoToIfThirdType",
    "GoToIfTerastallized",
    "HandleRoost",
    "HandleSoak",
    "HandleMagicPowder",
    "HandleForestsCurse",
    "HandleTrickOrTreat",
    "HandleBurnUp",
    "HandleDoubleShock",
    "StuffCheeks",
    "SetMoveConditionFlag",
    // "YourCustomCommand",
};

u32 cmdAddress = 0;
#pragma GCC diagnostic pop
#endif // DEBUG_BATTLE_SCRIPT_COMMANDS

#define BASE_ENGINE_BTL_SCR_CMDS_MAX 0x107

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
    [0xFC - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_FC_trystickyweb,
    [0xFD - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_FD_trymegaorultraburstduringpursuit,
    [0xFE - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_FE_calcconfusiondamage,
    [0xFF - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_FF_checkcanactivatedefiantorcompetitive,
    [0x100 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_100_jumptocurrententryhazard,
    [0x101 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_101_addentryhazardtoqueue,
    [0x102 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_102_removeentryhazardfromqueue,
    [0x103 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_103_checkprotectcontactmoves,
    [0x104 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_104_tryincinerate,
    [0x105 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_105_addtype,
    [0x106 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_106_tryauroraveil,
    [0x107 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_107_clearauroraveil,
    [0x108 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_108_strengthsapcalc,
    [0x109 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_109_checktargetispartner,
    [0x10A - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_10A_clearsmog,
    [0x10B - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_10B_gotoifthirdtype,
    [0x10C - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_10C_gotoifterastallized,
    [0x10D - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_10D_HandleRoost,
    [0x10E - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_10E_HandleSoak,
    [0x10F - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_10F_HandleMagicPowder,
    [0x110 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_110_HandleForestsCurse,
    [0x111 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_111_HandleTrickOrTreat,
    [0x112 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_112_HandleBurnUp,
    [0x113 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_113_HandleDoubleShock,
    [0x114 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_114_stuffCheeks,
    [0x115 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_115_setMoveConditionFlag,
    // [BASE_ENGINE_BTL_SCR_CMDS_MAX - START_OF_NEW_BTL_SCR_CMDS + 1] = btl_scr_cmd_custom_01_your_custom_command,
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

// lgpe moves
    MOVE_ZIPPY_ZAP,
    MOVE_SPLISHY_SPLASH,
    MOVE_FLOATY_FALL,
    MOVE_PIKA_PAPOW,
    MOVE_BOUNCY_BUBBLE,
    MOVE_BUZZY_BUZZ,
    MOVE_SIZZLY_SLIDE,
    MOVE_GLITZY_GLOW,
    MOVE_BADDY_BAD,
    MOVE_SAPPY_SEED,
    MOVE_FREEZY_FROST,
    MOVE_SPARKLY_SWIRL,
    MOVE_VEEVEE_VOLLEY,
    MOVE_DOUBLE_IRON_BASH,

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

    gBattleSystem = bw; // constantly update bw even tho it really only need be done once

    do {
        command = sp->SkillSeqWork[sp->skill_seq_no];

#ifdef DEBUG_BATTLE_SCRIPT_COMMANDS
        if (cmdAddress != (u32)&sp->SkillSeqWork[sp->skill_seq_no])
        {
            cmdAddress = (u32)&sp->SkillSeqWork[sp->skill_seq_no];
            debug_printf("[BattleScriptCommandHandler] %s - 0x%02X", BattleScrCmdNames[command], command);
            if (command == 0xE0 || command == 0x24)
            {
                debug_printf("\n");
                cmdAddress = 0;
            }
            else if (command == 35) // GoToSubscript
            {
                debug_printf(" %d\n", sp->SkillSeqWork[sp->skill_seq_no+1]);
            }
            debug_printf("\n");
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
#ifdef DEBUG_BATTLE_SCRIPT_COMMANDS
    debug_printf("\n=================\nLoading %sscript index %d...\n\n", kind==ARC_BATTLE_SUB_SEQ?"sub":kind==ARC_BATTLE_MOVE_SEQ?"move ":"effect ", index);
#endif
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
#ifdef DEBUG_BATTLE_SCRIPT_COMMANDS
    debug_printf("\n=================\nLoading %sscript index %d...\n\n", kind==ARC_BATTLE_SUB_SEQ?"sub":kind==ARC_BATTLE_MOVE_SEQ?"move ":"effect ", index);
#endif
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
        client_no = sp->battlerIdTemp;
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

    // TODO figure out what should actually go here
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
            case MOVE_EFFECT_HURRICANE:
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
        // moves boosted by sheer force that still maintain their effect
        if ((sp->current_move_index == MOVE_SPARKLING_ARIA)
        // || (sp->current_move_index == MOVE_GENESIS_SUPERNOVA) // doesnt have an eff atm but still on the table
         || (sp->current_move_index == MOVE_SPIRIT_SHACKLE)
         || (sp->current_move_index == MOVE_ANCHOR_SHOT)
        // || (sp->current_move_index == MOVE_EERIE_SPELL) // same as genesis supernova
         || (sp->current_move_index == MOVE_CEASELESS_EDGE)
         || (sp->current_move_index == MOVE_STONE_AXE)
         || (sp->current_move_index == MOVE_ELECTRO_SHOT)) { // according to bulbapedia but only on the electro shot page ?
            sp->battlemon[sp->attack_client].sheer_force_flag = 1;
        }
    }

    JumpToMoveEffectScript(sp, 30, effect);

    return FALSE;
};

BOOL BtlCmd_GoToMoveScript(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    u32 unkA = read_battle_script_param(ctx);

    // Metronome uses a different message
    if (ctx->current_move_index != MOVE_METRONOME) {
        ctx->server_status_flag &= ~BATTLE_STATUS_NO_ATTACK_MESSAGE;
    }

    ctx->server_status_flag &= ~BATTLE_STATUS_MOVE_ANIMATIONS_OFF;

    ctx->current_move_index = ctx->waza_work;

    if (unkA == 0) {
        ctx->defence_client = ov12_022506D4(bsys, ctx, ctx->attack_client, (u16)ctx->waza_work, 1, 0);
        // Handle ourselves later
        // Handle redirection ourselves
        // ov12_02250A18(bsys, ctx, ctx->attack_client, ctx->waza_work);
        ctx->playerActions[ctx->attack_client][1] = ctx->defence_client;
    }

    if (ctx->defence_client == BATTLER_NONE) {
        ctx->next_server_seq_no = CONTROLLER_COMMAND_39;
        JumpToMoveEffectScript(ctx, 1, SUB_SEQ_NO_TARGET);
    } else {
        JumpToMoveEffectScript(ctx, 0, ctx->current_move_index);
    }

    return FALSE;
}

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
u8 ALIGN4 scratchpad[4] = {0, 0, 0, 0};

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
    struct BattleStruct *sp = expcalc->sp;

    client_no = (sp->fainting_client >> 1) & 1;

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

            if ((eqp == HOLD_EFFECT_EXP_SHARE) || (sp->obtained_exp_right_flag[client_no] & No2Bit(sel_mons_no)))
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
                if (sp->obtained_exp_right_flag[client_no /*(sp->fainting_client >> 1) & 1*/] & No2Bit(i))
                {
                    monCount++;
                }

                item = GetMonData(pploop, MON_DATA_HELD_ITEM, NULL);
                eqp = BattleItemDataGet(sp, item, 1);

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
            u32 level = sp->battlemon[sp->fainting_client].level; // need to calculate exp individually for each mon it seems

            u32 base = GetSpeciesBaseExp(sp->battlemon[sp->fainting_client].species, sp->battlemon[sp->fainting_client].form_no); // base experience
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
    }

#ifdef DEBUG_PRINT_EXPERIENCE_VALUES
    u8 buf[128];
    sprintf(buf, "[Task_DistributeExp_Extend] Scaled Rate - experience = %d, Lp = %d", sp->obtained_exp, Lp);
    debugsyscall(buf);
    sprintf(buf, ", level = %d, totalexp = %d, ", level, totalexp);
    debugsyscall(buf);
    sprintf(buf, "top = %d, bottom = %d\n", top, bottom);
    debugsyscall(buf);
#endif

#else // EXPERIENCE_FORMULA_GEN < 5 || EXPERIENCE_FORMULA_GEN == 6 // flat exp rate needs to be calculated
    if (expcalc->seq_no < 37) // prevents NULL access
    {
        u32 totalexp;
        struct Party *party = BattleWorkPokePartyGet(expcalc->bw, 0);

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
                    if (sp->obtained_exp_right_flag[client_no /*(sp->fainting_client >> 1) & 1*/] & No2Bit(i))
                    {
                        monCount++;
                    }

                    item = GetMonData(pploop, MON_DATA_HELD_ITEM, NULL);
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

    //distribute effort values to level_cap pokémon who would otherwise not get it
    //把基础点数分配给已经到达等级上限的宝可梦。
    if (expcalc->seq_no == 0 && sel_mons_no < BattleWorkPokeCountGet(expcalc->bw, exp_client_no) && GetMonData(BattleWorkPokemonParamGet(expcalc->bw, exp_client_no, sel_mons_no), MON_DATA_LEVEL, NULL) == GetLevelCap())
    {
        DistributeEffortValues(BattleWorkPokePartyGet(expcalc->bw, exp_client_no),
                               sel_mons_no,
                               sp->battlemon[sp->fainting_client].species,
                               sp->battlemon[sp->fainting_client].form_no);
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
 *  @brief script command to calculate the hits done by beat up.
 *  damage is calculated in CalcBaseDamage
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_7c_beat_up_hit_count(void *bw, struct BattleStruct *sp)
{
    struct PartyPokemon *mon;

    IncrementBattleScriptPtr(sp, 1);

    if (sp->multiHitCountTemp == 0) {
        sp->loop_hit_check = 0xFD;
        sp->beat_up_count = 0;
        sp->multiHitCount = 0;

        for (int i = 0; i < Battle_GetClientPartySize(bw, sp->attack_client); i++) {
            mon = Battle_GetClientPartyMon(bw, sp->attack_client, i);
            if (IsMonValidAndHealthy(mon)) {
                sp->multiHitCount++;
            }
        }
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
    // If the Pokémon is knocked out by the attack, Sticky Hold does not protect the held item.
    if (sp->battlemon[sp->defence_client].item && MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_STICKY_HOLD) == TRUE && sp->battlemon[sp->defence_client].hp)
    {
        sp->mp.msg_id = BATTLE_MSG_ITEM_CANNOT_BE_REMOVED;
        sp->mp.msg_tag = TAG_NICKNAME;
        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->defence_client);
    }
    else if (CanKnockOffApply(sp, sp->attack_client, sp->defence_client))
    {
        sp->mp.msg_id = BATTLE_MSG_MON_KNOCKED_OFF_ITEM;
        sp->mp.msg_tag = TAG_NICKNAME_NICKNAME_ITEM;
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

/**
 *  @brief grab a battler's weight
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param client battler whose weight to grab
 *  @return battler's weight
 */
s32 LONG_CALL GetPokemonWeight(void *bw UNUSED, struct BattleStruct *sp, int attack_client, u32 client)
{
    s32 weight;
    u32 weightModifier = 1;

    weight = sp->battlemon[client].weight;

    // Handle Heavy Ball (not attacking)
    if (attack_client == -1) {
        if (GetBattlerAbility(sp, client) == ABILITY_HEAVY_METAL) {
            weight *= 2;
        } else if (GetBattlerAbility(sp, client) == ABILITY_LIGHT_METAL) {
            weightModifier *= 2;
        }
    } else {
        if (MoldBreakerAbilityCheck(sp, attack_client, client, ABILITY_HEAVY_METAL)) {
            weight *= 2;
        } else if (MoldBreakerAbilityCheck(sp, attack_client, client, ABILITY_LIGHT_METAL)) {
            weightModifier *= 2;
        }
    }

    if (GetBattleMonItem(sp, client) == ITEM_FLOAT_STONE) {
        weightModifier *= 2;
    }

    return weight / weightModifier;
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

    weight = GetPokemonWeight(bw, sp, sp->attack_client, sp->defence_client);

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
            BattleFormChange(sp->battlerIdTemp, sp->battlemon[sp->battlerIdTemp].form_no, bw, sp, 1);
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
    ratio = (GetPokemonWeight(bw, sp, sp->attack_client, sp->defence_client) * 10000) / GetPokemonWeight(bw, sp, sp->attack_client, sp->attack_client);

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
         && (sp->battlemon[client_no].moveeffect.magnetRiseTurns) == 0 && !HasType(sp, client_no, TYPE_FLYING)) ||
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
 *  @brief function to check whether a mon is grounded or not
 *  @param sp global battle structure
 *  @param attacker resolved battler attacker
 *  @param defender resolved battler defender
 *  @return `TRUE` if grounded, `FALSE` otherwise
 */
BOOL LONG_CALL MoldBreakerIsClientGrounded(struct BattleStruct *sp, u32 attacker, u32 defender) {
    u8 holdeffect = HeldItemHoldEffectGet(sp, defender);

    BOOL hasLevitate = attacker == defender ? GetBattlerAbility(sp, defender) == ABILITY_LEVITATE : MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_LEVITATE);

    if ((!hasLevitate && holdeffect != HOLD_EFFECT_UNGROUND_DESTROYED_ON_HIT  // not holding Air Balloon
         && (sp->battlemon[defender].moveeffect.magnetRiseTurns) == 0 && !HasType(sp, defender, TYPE_FLYING)) ||
        (holdeffect == HOLD_EFFECT_SPEED_DOWN_GROUNDED                             // holding Iron Ball
         || (sp->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN)  // is Ingrained
         || (sp->field_condition & FIELD_STATUS_GRAVITY))) {
        // not in a semi-vulnerable state
        if ((sp->battlemon[defender].effect_of_moves & (MOVE_EFFECT_FLAG_FLYING_IN_AIR | MOVE_EFFECT_FLAG_DIGGING | MOVE_EFFECT_FLAG_IS_DIVING | MOVE_EFFECT_FLAG_SHADOW_FORCE)) == 0) {
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

    if (IsContactBeingMade(GetBattlerAbility(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->attack_client), HeldItemHoldEffectGet(sp, sp->defence_client), sp->current_move_index, sp->moveTbl[sp->current_move_index].flag)) {
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
    if (!CanKnockOffApply(sp, sp->attack_client, sp->defence_client))
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
    struct BattleSystem *bsys = bw;
    IncrementBattleScriptPtr(sp, 1);

    int bg = read_battle_script_param(sp);
    int terrain = read_battle_script_param(sp);

    if (bg == -1)
    {
        bg = bsys->sp->original_bgId;
    }
    if (terrain == -1)
    {
        terrain = bsys->sp->original_terrain;
    }
    LoadDifferentBattleBackground(bsys, bg, terrain);

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
            sp->oneTurnFlag[client_no].forceExecutionOrderFlag = EXECUTION_ORDER_AFTER_YOU;
            break;
        case EXECUTION_ORDER_QUASH:

            sp->oneTurnFlag[client_no].forceExecutionOrderFlag = EXECUTION_ORDER_QUASH;
            break;
        // user should not use this under normal circumstances
        case EXECUTION_ORDER_NORMAL:
            sp->oneTurnFlag[client_no].forceExecutionOrderFlag = EXECUTION_ORDER_NORMAL;
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
 *  @brief script command to check if Mega Evolution or Ultra Burst is needed to be queued for the attacker during Pursuit
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_FD_trymegaorultraburstduringpursuit(void *bw, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);

    // debug_printf("In trymegaorultraburstduringpursuit\n");

    int script = 0;
    int failAddress = read_battle_script_param(sp);

    if (newBS.needMega[sp->attack_client] == MEGA_NEED && sp->battlemon[sp->attack_client].hp) {
        if (BattleTypeGet(bw) & BATTLE_TYPE_MULTI) {
            if (sp->attack_client == 0 || (sp->attack_client == 2 && sp->battlemon[sp->attack_client].id_no == sp->battlemon[0].id_no))
                newBS.PlayerMegaed = TRUE;
        } else if (sp->attack_client == 0 || sp->attack_client == 2) {
            newBS.PlayerMegaed = TRUE;
        }

        sp->battlemon[sp->attack_client].form_no = GrabMegaTargetForm(sp->battlemon[sp->attack_client].species, sp->battlemon[sp->attack_client].item);
        BattleFormChange(sp->attack_client, sp->battlemon[sp->attack_client].form_no, bw, sp, TRUE);

        newBS.needMega[sp->attack_client] = MEGA_NO_NEED;
        sp->battlerIdTemp = sp->attack_client;
        if (CheckCanSpeciesMegaEvolveByMove(sp, sp->attack_client)) {
            script = SUB_SEQ_HANDLE_MOVE_MEGA_EVOLUTION;
        } else {
            script = SUB_SEQ_HANDLE_MEGA_EVOLUTION;
        }
    }

    if (script) {
        // debug_printf("script: %d\n", script);
        sp->temp_work = script;
    } else {
        // debug_printf("no script needed\n");
        IncrementBattleScriptPtr(sp, failAddress);
    }

    return FALSE;
}

/**
 *  @brief script command to calculate confusion damage since we cannot load both overlays at the same time
 *
 *  @param bsys battle work structure
 *  @param ctx global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_FE_calcconfusiondamage(void *bsys, struct BattleStruct *ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    u32 attacker = ctx->attack_client;
    u32 disguiseAddress = read_battle_script_param(ctx);

    ctx->moveOutCheck[attacker].stoppedFromConfusion = TRUE;
    ctx->defence_client = attacker;
    ctx->battlerIdTemp = attacker;
    ctx->hp_calc_work = CalcBaseDamage(bsys, ctx, MOVE_STRUGGLE, 0, 0, 40, 0, attacker, attacker, 1);
    ctx->hp_calc_work = AdjustDamageForRoll(bsys, ctx, ctx->hp_calc_work);
    ctx->hp_calc_work *= -1;

    if (((ctx->battlemon[attacker].species == SPECIES_MIMIKYU && GetBattlerAbility(ctx, attacker) == ABILITY_DISGUISE)
      || (ctx->battlemon[attacker].species == SPECIES_EISCUE && GetBattlerAbility(ctx, attacker) == ABILITY_ICE_FACE))
     && ctx->battlemon[attacker].form_no == 0
     && ctx->hp_calc_work == 0)
    {
        BattleFormChange(attacker, 1, bsys, ctx, TRUE);
        ctx->battlerIdTemp = attacker;
        ctx->battlemon[attacker].form_no = 1;
        IncrementBattleScriptPtr(ctx, disguiseAddress);
    }

    return FALSE;
}

/**
 *  @brief script command to check whether Defiant or Competitive can activate
 *
 *  @param bsys battle work structure
 *  @param ctx global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_FF_checkcanactivatedefiantorcompetitive(void *bsys UNUSED, struct BattleStruct *ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    int failAddress = read_battle_script_param(ctx);
    int handleDefiantAddress = read_battle_script_param(ctx);
    int handleCompetitiveAddress = read_battle_script_param(ctx);

    if ((ctx->battlemon[ctx->state_client].hp != 0)
    && (ctx->oneSelfFlag[ctx->state_client].defiant_flag)
    && (ctx->battlemon[ctx->state_client].states[STAT_ATTACK] < 12)
    && ((ctx->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
    && ((ctx->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
    && ((ctx->server_status_flag2 & SERVER_STATUS_FLAG2_U_TURN) == 0)) {
        ctx->oneSelfFlag[ctx->state_client].defiant_flag = 0;
        switch (GetBattlerAbility(ctx, ctx->state_client)) {
            case ABILITY_DEFIANT:
                if (ctx->battlemon[ctx->state_client].states[STAT_ATTACK] < 12) {
                    IncrementBattleScriptPtr(ctx, handleDefiantAddress);
                    return FALSE;
                }
                break;
            case ABILITY_COMPETITIVE:
                if (ctx->battlemon[ctx->state_client].states[STAT_SPATK] < 12) {
                    IncrementBattleScriptPtr(ctx, handleCompetitiveAddress);
                    return FALSE;
                }
                break;
            default:
                break;
        }
    }

    IncrementBattleScriptPtr(ctx, failAddress);

    return FALSE;
}

#ifdef DEBUG_ENTRY_HAZARD_PRINTS

const u8 *gHazardNames[] = {
    [HAZARD_IDX_NONE] = "no hazard",
    [HAZARD_IDX_SHARP_STEEL] = "sharp steel",
    [HAZARD_IDX_SPIKES] = "spikes",
    [HAZARD_IDX_TOXIC_SPIKES] = "toxic spikes",
    [HAZARD_IDX_STEALTH_ROCK] = "stealth rock",
    [HAZARD_IDX_STICKY_WEB] = "sticky web",
};

#endif

/**
 *  @brief script command to control the flow of the entry hazards script
 *
 *  @param bsys battle work structure
 *  @param ctx global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_100_jumptocurrententryhazard(void *bsys UNUSED, struct BattleStruct *ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    s32 hazardAddresses[NUM_HAZARD_IDX];
    u32 side = (1 & GrabClientFromBattleScriptParam(bsys, ctx, read_battle_script_param(ctx)));

    hazardAddresses[HAZARD_IDX_SPIKES-1] = read_battle_script_param(ctx);
    hazardAddresses[HAZARD_IDX_TOXIC_SPIKES-1] = read_battle_script_param(ctx);
    hazardAddresses[HAZARD_IDX_STEALTH_ROCK-1] = read_battle_script_param(ctx);
    hazardAddresses[HAZARD_IDX_STICKY_WEB-1] = read_battle_script_param(ctx);
    hazardAddresses[HAZARD_IDX_SHARP_STEEL-1] = read_battle_script_param(ctx);

    // queue system -- read from the current queue step and then jump to that offset
    if (ctx->entryHazardQueue[side][ctx->hazardQueueTracker] != HAZARD_IDX_NONE)
    {
#ifdef DEBUG_ENTRY_HAZARD_PRINTS
        debug_printf("[JumpToCurrentEntryHazard] Jumping to side %d queue pos %d hazard %d (%s)\n", side, ctx->hazardQueueTracker,
            ctx->entryHazardQueue[side][ctx->hazardQueueTracker],
            gHazardNames[ctx->entryHazardQueue[side][ctx->hazardQueueTracker]]);
#endif
        IncrementBattleScriptPtr(ctx, hazardAddresses[ctx->entryHazardQueue[side][ctx->hazardQueueTracker]-1]);
        ctx->hazardQueueTracker++;
    }
    else // no more hazards to be processed
    {
        ctx->hazardQueueTracker = 0;
    }

    return FALSE;
}

void BattleContext_AddEntryHazardToQueue(struct BattleStruct *ctx, u32 side, u32 hazard)
{
    if (hazard != HAZARD_IDX_NONE) // idk man people might misuse the system or something
    {
        for (int i = 0; i < NUM_HAZARD_IDX; i++)
        {
            if (ctx->entryHazardQueue[side][i] == hazard)
            {
#ifdef DEBUG_ENTRY_HAZARD_PRINTS
                debug_printf("[BattleContext_AddEntryHazardToQueue] Hazard %s already in side %d queue (slot %d).  Skipping.\n",
                    gHazardNames[hazard], side, i);
#endif
                break;
            }
            if (ctx->entryHazardQueue[side][i] == HAZARD_IDX_NONE)
            {
#ifdef DEBUG_ENTRY_HAZARD_PRINTS
                debug_printf("[BattleContext_AddEntryHazardToQueue] Adding hazard %s to side %d queue position %d.\n",
                    gHazardNames[hazard], side, i);
#endif
                ctx->entryHazardQueue[side][i] = hazard;
                break;
            }
        }
    }
}

/**
 *  @brief script command to add to the queue of the entry hazard system
 *
 *  @param bsys battle work structure
 *  @param ctx global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_101_addentryhazardtoqueue(void *bsys UNUSED, struct BattleStruct *ctx)
{
    IncrementBattleScriptPtr(ctx, 1);

    u32 side = (1 & GrabClientFromBattleScriptParam(bsys, ctx, read_battle_script_param(ctx)));
    u32 hazard = read_battle_script_param(ctx);
    BattleContext_AddEntryHazardToQueue(ctx, side, hazard);

    return FALSE;
}

/**
 *  @brief script command to remove from the queue a specific hazard
 *
 *  @param ctx global battle structure
 *  @param hazard HAZARD_IDX_* to remove
 */
void BattleContext_RemoveEntryHazardFromQueue(struct BattleStruct *ctx, u32 side, u32 hazard)
{
    int i = 0;
    if (hazard != HAZARD_IDX_NONE) // idk man people might misuse the system or something
    {
        BOOL hasMetZero = FALSE;
        for (i = 0; i < NUM_HAZARD_IDX; i++)
        {
            // remove the current element
            if (hazard == ctx->entryHazardQueue[side][i])
            {
                ctx->entryHazardQueue[side][i] = HAZARD_IDX_NONE;
                if (ctx->hazardQueueTracker) ctx->hazardQueueTracker--; // set everything back
                break;
            }
        }
        for (i = 0; i < (NUM_HAZARD_IDX-1); i++)
        {
            // if the current element is NONE, we want to move every subsequent element back one
            if (HAZARD_IDX_NONE == ctx->entryHazardQueue[side][i] || hasMetZero)
            {
                u32 nextHazard = ctx->entryHazardQueue[side][i+1];
                ctx->entryHazardQueue[side][i] = nextHazard;
                hasMetZero = TRUE;
            }
        }
    }
#ifdef DEBUG_ENTRY_HAZARD_PRINTS
    debug_printf("[BattleContext_RemoveEntryHazardFromQueue] Removed hazard %s from side %d queue.\nRemaining queue:\n",
        gHazardNames[hazard],
        side)
    for (i = 0; i < NUM_HAZARD_IDX; i++)
    {
        if (ctx->entryHazardQueue[side][i] != HAZARD_IDX_NONE)
            debug_printf("    [%d] = %s\n", i, gHazardNames[ctx->entryHazardQueue[side][i]]);
    }
#endif
}

/**
 *  @brief script command to remove from the queue a specific hazard
 *
 *  @param bsys battle work structure
 *  @param ctx global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_102_removeentryhazardfromqueue(void *bsys UNUSED, struct BattleStruct *ctx)
{
    IncrementBattleScriptPtr(ctx, 1);

    u32 side = (1 & GrabClientFromBattleScriptParam(bsys, ctx, read_battle_script_param(ctx)));
    u32 hazard = read_battle_script_param(ctx);
    BattleContext_RemoveEntryHazardFromQueue(ctx, side, hazard);

    return FALSE;
}

BOOL btl_scr_cmd_103_checkprotectcontactmoves(void *bsys UNUSED, struct BattleStruct *ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    if (IsContactBeingMade(GetBattlerAbility(ctx, ctx->attack_client), HeldItemHoldEffectGet(ctx, ctx->attack_client), HeldItemHoldEffectGet(ctx, ctx->defence_client), ctx->current_move_index, ctx->moveTbl[ctx->current_move_index].flag)
     && ctx->battlemon[ctx->attack_client].hp
     && ctx->oneTurnFlag[ctx->defence_client].gainedProtectFlagFromAlly == FALSE
     && (ctx->server_status_flag & BATTLE_STATUS_CHARGE_TURN) == 0) {
        switch (ctx->moveProtect[ctx->defence_client]) {
            case MOVE_KINGS_SHIELD:
                if (ctx->battlemon[ctx->attack_client].states[STAT_ATTACK] > 0) {
                    // King's Shield lowers Attack by two stages in Generation 6 and 7.
                    ctx->addeffect_param = (GEN_LATEST > 7) ? ADD_STATUS_EFF_BOOST_STATS_ATTACK_DOWN : ADD_STATUS_EFF_BOOST_STATS_ATTACK_DOWN_2;
                    ctx->state_client = ctx->attack_client;
                    SkillSequenceGosub(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BOOST_STATS);
                }
                break;
            case MOVE_SPIKY_SHIELD:
                if (GetBattlerAbility(ctx, ctx->attack_client) != ABILITY_MAGIC_GUARD) {
                    ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[ctx->attack_client].maxhp * -1, 8);
                    ctx->battlerIdTemp = ctx->attack_client;
                    SkillSequenceGosub(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SPIKY_SHIELD);
                }
                break;
            case MOVE_BANEFUL_BUNKER:
                if (ctx->battlemon[ctx->attack_client].condition == 0) {
                    ctx->addeffect_type = ADD_STATUS_MOVE_EFFECT;
                    ctx->state_client = ctx->attack_client;
                    // Swap atk client to defender so it checks the protect users ability for Corrosion
                    ctx->attack_client = ctx->defence_client;
                    SkillSequenceGosub(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_APPLY_POISON);
                }
                break;
            case MOVE_OBSTRUCT:
                if (ctx->battlemon[ctx->attack_client].states[STAT_DEFENSE] > 0) {
                    ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_DEFENSE_DOWN_2;
                    ctx->state_client = ctx->attack_client;
                    SkillSequenceGosub(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BOOST_STATS);
                }
                break;
            case MOVE_SILK_TRAP:
                if (ctx->battlemon[ctx->attack_client].states[STAT_SPEED] > 0) {
                    ctx->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SPEED_DOWN;
                    ctx->state_client = ctx->attack_client;
                    SkillSequenceGosub(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BOOST_STATS);
                }
                break;
            case MOVE_BURNING_BULWARK:
                if (ctx->battlemon[ctx->attack_client].condition == 0) {
                    ctx->addeffect_type = ADD_STATUS_MOVE_EFFECT;
                    ctx->state_client = ctx->attack_client;
                    SkillSequenceGosub(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_APPLY_BURN);
                }
                break;
            default:
                break;
        }
    }

    return FALSE;
}

/**
 *  @brief script command to calculate Strength Sap healing
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_108_strengthsapcalc(void* bw UNUSED, struct BattleStruct* sp) {
    IncrementBattleScriptPtr(sp, 1);

    s32 damage;
    u16 attack;
    s8 atkstate;

    attack = BattlePokemonParamGet(sp, sp->defence_client, BATTLE_MON_DATA_ATK, NULL);
    atkstate = BattlePokemonParamGet(sp, sp->defence_client, BATTLE_MON_DATA_STATE_ATK, NULL);

    damage = attack * StatBoostModifiers[atkstate][0];
    damage /= StatBoostModifiers[atkstate][1];

    sp->hp_calc_work = -damage;

//    debug_printf("strengthsap: %d\n", damage);

    return FALSE;
}

/**
 *  @brief script command to check if the target is partner or not.
 *  used for pollen puff because TryHelpingHand has unique conditions built in
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_109_checktargetispartner(void *bw UNUSED, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);
    int adrs = read_battle_script_param(sp);
    int defender = sp->defence_client;
    int attacker = sp->attack_client;

    if (defender == BATTLER_ALLY(attacker))
    {
        sp->battlerIdTemp = sp->defence_client; // corrects the full health msg
        IncrementBattleScriptPtr(sp, adrs);
    //    debug_printf("target is ally\n")
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
    } else if ((sp->current_move_index != MOVE_SHORE_UP && sp->field_condition & WEATHER_SUNNY_ANY)
               ||(sp->current_move_index == MOVE_SHORE_UP && sp->field_condition & WEATHER_SANDSTORM_ANY)) {
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

    int item = GetBattleMonItem(ctx, battlerId);
    int hold_effect = BattleItemDataGet(ctx, item, 1);
    int ability = GetBattlerAbility(ctx, battlerId);

    if (CheckSideAbility(bsys, ctx, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0 && CheckSideAbility(bsys, ctx, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0) {
        if (ctx->field_condition & WEATHER_SANDSTORM_ANY) {
            if (!HasType(ctx, battlerId, TYPE_ROCK) &&
                !HasType(ctx, battlerId, TYPE_STEEL) &&
                !HasType(ctx, battlerId, TYPE_GROUND) &&
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
                } else if (!HasType(ctx, battlerId, TYPE_ICE) &&
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

// https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/page-9#post-9400247
BOOL BtlCmd_SetMultiHit(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    int cnt = read_battle_script_param(ctx);
    int checkMultiHit = read_battle_script_param(ctx);

    if (ctx->multiHitCountTemp == 0) {
        // Handle 2-5 hits
        if (cnt == 0) {
            if (GetBattlerAbility(ctx, ctx->attack_client) == ABILITY_SKILL_LINK) {
                cnt = 5;
            } else if ((ctx->battlemon[ctx->attack_client].species == SPECIES_GRENINJA && ctx->battlemon[ctx->attack_client].form_no == 1)
            && ctx->current_move_index == MOVE_WATER_SHURIKEN) {
                cnt = 3;
            } else {
                cnt = (BattleRand(bsys) % 100);  // 0 - 99, 100 numbers
                if (cnt < 35) {
                    cnt = 2;
                } else if (cnt < 70) {
                    cnt = 3;
                } else if (cnt < 85) {
                    cnt = 4;
                } else {  // >= 85
                    cnt = 5;
                }

                // If it rolled 4 or 5 Loaded Dice doesn't do anything,
                // otherwise it rolls the number of hits as 5 minus a random integer from 0 to 1 inclusive.
                if (HeldItemHoldEffectGet(ctx, ctx->attack_client) == HOLD_EFFECT_INCREASE_MULTI_STRIKE_MINIMUM) {
                    if (cnt != 4 && cnt != 5) {
                        cnt = 5 - (BattleRand(bsys) % 2);  // 5 - (0 or 1)
                    }
                }
            }
        }

        // Population Bomb checks accuracy for each hit, like Triple Kick and Triple Axel.
        // Loaded Dice causes it to only run the first accuracy check, and rolls the number of hits as 10 minus a random integer from 0 to 6 inclusive.
        if (cnt == 10 && HeldItemHoldEffectGet(ctx, ctx->attack_client) == HOLD_EFFECT_INCREASE_MULTI_STRIKE_MINIMUM) {
            cnt = 10 - (BattleRand(bsys) % 7); // 10 - (0 to 6)
        }

        ctx->multiHitCount = cnt;
        ctx->multiHitCountTemp = cnt;

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

BOOL BtlCmd_TryProtection(void *bsys UNUSED, struct BattleStruct *ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    int UNUSED adrs = read_battle_script_param(ctx); // Unused, but still required as param

    if (ctx->moveTbl[ctx->current_move_index].effect == MOVE_EFFECT_PROTECT) {
        ctx->oneTurnFlag[ctx->attack_client].protectFlag = TRUE;
        // Own protect moves should keep this flag off - incase protect user is slower than side protect user.
        ctx->oneTurnFlag[ctx->attack_client].gainedProtectFlagFromAlly = FALSE;
        ctx->mp.msg_id = BATTLE_MSG_PROTECT_ITSELF; // "{0} protected itself!"
        ctx->mp.msg_tag = TAG_NICKNAME;
        ctx->mp.msg_para[0] = CreateNicknameTag(ctx, ctx->attack_client);
    }

    if (ctx->moveTbl[ctx->current_move_index].effect == MOVE_EFFECT_PROTECT_USER_SIDE) {
        ctx->oneTurnFlag[ctx->attack_client].protectFlag = TRUE;

        // Only give gainedProtectFlagFromAlly flag when ally doesn't have protect flag
        if (ctx->oneTurnFlag[BATTLER_ALLY(ctx->attack_client)].protectFlag == FALSE) {
            ctx->oneTurnFlag[BATTLER_ALLY(ctx->attack_client)].protectFlag = TRUE;
            ctx->oneTurnFlag[BATTLER_ALLY(ctx->attack_client)].gainedProtectFlagFromAlly = TRUE;
        }

        ctx->mp.msg_id = BATTLE_MSG_PROTECT_USER_SIDE; // "{0} protected [your/the opposing] team"
        ctx->mp.msg_tag = TAG_MOVE_SIDE;
        ctx->mp.msg_para[0] = ctx->current_move_index;
        ctx->mp.msg_para[1] = IsClientEnemy(bsys, ctx->attack_client);
    }

    if (ctx->moveTbl[ctx->current_move_index].effect == MOVE_EFFECT_SURVIVE_WITH_1_HP) {
        ctx->oneTurnFlag[ctx->attack_client].prevent_one_hit_ko_ability = TRUE;
        ctx->mp.msg_id = BATTLE_MSG_BRACED_ITSELF; // "{0} braced itself!"
        ctx->mp.msg_tag = TAG_NICKNAME;
        ctx->mp.msg_para[0] = CreateNicknameTag(ctx, ctx->attack_client);
    }

    // Don't increase protectSuccessTurns at max
    // Mat Block and Crafty Shield don't increase the counter, Quick Guard and Wide Guard do.
    if (ctx->protectSuccessTurns[ctx->attack_client] < 6
    && !(ctx->current_move_index == MOVE_MAT_BLOCK)
    && !(ctx->current_move_index == MOVE_CRAFTY_SHIELD)) {
        ctx->protectSuccessTurns[ctx->attack_client]++;
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

    // clear all of these now since they will be cleared
    for (int i = 0; i < NUM_HAZARD_IDX; i++)
        sp->entryHazardQueue[0][i] = HAZARD_IDX_NONE;
    for (int i = 0; i < NUM_HAZARD_IDX; i++)
        sp->entryHazardQueue[1][i] = HAZARD_IDX_NONE;

    //Binding Moves
    if (sp->binding_turns[sp->attack_client] != 0) {
        sp->binding_turns[sp->attack_client] = 0;
        sp->battlerIdTemp = sp->battlemon[sp->attack_client].moveeffect.battlerIdBinding;
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

    //Sticky Web
    if (sp->side_condition[side] & SIDE_STATUS_STICKY_WEB) {
        sp->side_condition[side] &= ~SIDE_STATUS_STICKY_WEB;
        sp->waza_work = MOVE_STICKY_WEB;
        SkillSequenceGosub(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BLOW_AWAY_HAZARDS_MESSAGE);
        return FALSE;
    }

    IncrementBattleScriptPtr(sp, 1);

    return FALSE;
}

/**
 * @brief Try to execute the Sticky Web effect.
 * Stores the user and the users side in sp->scw
 * Stores the existence of Sticky Web in sp->side_condition to the defenders side
 * This command will fail if there is Sticky Web already laid on the defenders side.
 *
 * @param bw battle work structure
 * @param sp global battle structure
 * @return FALSE
 */

BOOL btl_scr_cmd_FC_trystickyweb(void *bw, struct BattleStruct *sp) {
    IncrementBattleScriptPtr(sp, 1);
    int adrs = read_battle_script_param(sp);
    int side = IsClientEnemy(bw, sp->defence_client);

    if (sp->side_condition[side] & SIDE_STATUS_STICKY_WEB) {
        sp->oneSelfFlag[sp->attack_client].no_pressure_flag = 1;
        IncrementBattleScriptPtr(sp, adrs);
    } else {
        sp->side_condition[side] |= SIDE_STATUS_STICKY_WEB;
    }

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
 *  @brief calculate the amount of times a ball shakes
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return the amount of shakes a ball undergoes.  or'd with CRITICAL_CAPTURE_MASK for critical captures
 */
u32 CalculateBallShakes(void *bw, struct BattleStruct *sp)
{
    u32 ovyId, offset, ret;
    BOOL (*internalFunc)(void *bw, struct BattleStruct *sp);

    ovyId = OVERLAY_CALCULATEBALLSHAKES;
    offset = 0x023C0400 | 1;
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (int (*)(void *bw, struct BattleStruct *sp))(offset);
    ret = internalFunc(bw, sp);
    UnloadOverlayByID(ovyId);

    return ret;
}

u32 sSuccessfulCriticalCapture = 0;

/**
 *  @brief reroute the capture shake task if a critical capture activates
 *
 *  @param expcalc exp calculator structure
 *  @param shakes number of shakes or'd with CRITICAL_CAPTURE_MASK for critical captures
 *  @return amouont of actual shakes
 */
u32 DealWithCriticalCaptureShakes(struct EXP_CALCULATOR *expcalc, u32 shakes)
{
#ifdef IMPLEMENT_CRITICAL_CAPTURE
    sSuccessfulCriticalCapture = FALSE;
    if (shakes & CRITICAL_CAPTURE_MASK) // critical capture
    {
        expcalc->work[3] = shakes & ~CRITICAL_CAPTURE_MASK;
        if ((shakes & ~CRITICAL_CAPTURE_MASK) == 1)
        {
            expcalc->work[2] = 4; // successful capture
            sSuccessfulCriticalCapture = TRUE;
        }
        else
        {
            expcalc->work[2] = 1;
            // https://xcancel.com/Sibuna_Switch/status/1605588207898218496#m
            // https://xcancel.com/Sibuna_Switch/status/1847665451809075315#m
            expcalc->work[3] = 0; // a failed critical capture no longer shakes once and just breaks free
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

extern const u16 sPickupTable1[18];
extern const u16 sPickupTable2[11];
extern const u8 sPickupWeightTable[9];
extern const u8 sHoneyGatherChanceTable[10];

BOOL BtlCmd_GenerateEndOfBattleItem(struct BattleSystem *bw, struct BattleStruct *sp) {
    int rnd, i, j, k;
    u16 species, item;
    u8 ability, lvl;
    struct PartyPokemon *mon;
    u32 quantityPickedUp = 0, partyIndex = 0, itemPickedUp = ITEM_NONE;

    IncrementBattleScriptPtr(sp, 1);

    for (i = 0; i < Battle_GetClientPartySize(bw, 0); i++) {
        mon     = Battle_GetClientPartyMon(bw, 0, i);
        species = GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0);
        item    = GetMonData(mon, MON_DATA_HELD_ITEM, 0);
        ability = GetMonData(mon, MON_DATA_ABILITY, 0);
        if (ability == ABILITY_PICKUP
            && species != SPECIES_NONE
            && species != SPECIES_EGG
            && item == ITEM_NONE
            && (BattleRand(bw) % 10) == 0) {
            rnd = BattleRand(bw) % 100;
            lvl = (GetMonData(mon, MON_DATA_LEVEL, 0) - 1) / 10;
            if (lvl >= 10) {
                lvl = 9;
            }
            for (j = 0; j < 9; j++) {
                if (sPickupWeightTable[j] > rnd) {
                    item = sPickupTable1[lvl + j];
                    SetMonData(mon, MON_DATA_HELD_ITEM, &item);
                    break;
                } else if (rnd >= 98 && rnd <= 99) {
                    item = sPickupTable2[lvl + (99 - rnd)];
                    SetMonData(mon, MON_DATA_HELD_ITEM, &item);
                    break;
                }
            }
            quantityPickedUp++;
            partyIndex = i;
            itemPickedUp = item;
        }
        if (ability == ABILITY_HONEY_GATHER
            && species != SPECIES_NONE
            && species != SPECIES_EGG
            && item == ITEM_NONE) {
            j   = 0;
            k   = 10;
            lvl = GetMonData(mon, MON_DATA_LEVEL, NULL);
            while (lvl > k) {
                j++;
                k += 10;
            }

            GF_ASSERT(j < 10);

            if ((BattleRand(bw) % 100) < sHoneyGatherChanceTable[j]) {
                item = ITEM_HONEY;
                SetMonData(mon, MON_DATA_HELD_ITEM, &item);
                quantityPickedUp++;
                partyIndex = i;
                itemPickedUp = ITEM_HONEY;
            }
        }
    }

    sp->calc_work = quantityPickedUp;

    if (quantityPickedUp > 1)
    {
        sp->mp.msg_id = BATTLE_MSG_GENERIC_PICKED_UP_ITEM;
        sp->mp.msg_tag = TAG_NONE;
    }
    else if (quantityPickedUp > 0) // aka == 1
    {
        sp->mp.msg_id = BATTLE_MSG_PICKED_UP_ITEM;
        sp->mp.msg_tag = TAG_NICKNAME_ITEM;
        sp->mp.msg_para[0] = (partyIndex << 8) | 0;
        sp->mp.msg_para[1] = itemPickedUp;
    }

    return FALSE;
}

/**
 *  @brief check if a held item can be tricked or not depending on the items and species
 *
 *  @param attacker_item the held item of the attacker
 *  @param attacker_species the attacker species
 *  @param defender_item the held item of the defender
 *  @param defender_species the defender species
 *  @return TRUE if the interacting species and items can trick, FALSE otherwise
 */
BOOL LONG_CALL CanTrickHeldItemManual(u16 attacker_item, u16 attacker_species, u16 defender_item, u16 defender_species)
{
    return (CanItemBeRemovedFromSpecies(attacker_species, attacker_item)
         && CanItemBeRemovedFromSpecies(attacker_species, defender_item)
         && CanItemBeRemovedFromSpecies(defender_species, attacker_item)
         && CanItemBeRemovedFromSpecies(defender_species, defender_item));
}

BOOL LONG_CALL CanTrickHeldItem(struct BattleStruct *ctx, u32 attacker, u32 defender)
{
    u32 attackerSpecies = ctx->battlemon[attacker].species;
    u32 attackerItem = ctx->battlemon[attacker].item; // bypass klutz and friends probably
    u32 attackerForm = ctx->battlemon[attacker].form_no;
    u32 defenderSpecies = ctx->battlemon[defender].species;
    u32 defenderItem = ctx->battlemon[defender].item; // bypass klutz and friends probably
    u32 defenderForm = ctx->battlemon[defender].form_no;

    BOOL attackerSlowbroHandling = (attackerSpecies == SPECIES_SLOWBRO && (attackerItem == ITEM_SLOWBRONITE || defenderItem == ITEM_SLOWBRONITE) && attackerForm == 2);
    BOOL defenderSlowbroHandling = (defenderSpecies == SPECIES_SLOWBRO && (attackerItem == ITEM_SLOWBRONITE || defenderItem == ITEM_SLOWBRONITE) && defenderForm == 2);

    // CheckMegaData will gladly tell you a galarian slowbro can't trick its slowbronite away...  we have to take over
    if (attackerSlowbroHandling && defenderSlowbroHandling)
    {
        return TRUE;
    }
    else if (attackerSlowbroHandling || defenderSlowbroHandling)
    {
        u32 offendingItem = attackerItem == ITEM_SLOWBRONITE ? 1 : defenderItem == ITEM_SLOWBRONITE ? 2 : 0;
        if (offendingItem == 1)
        {
            attackerItem = ITEM_POKE_BALL;
        }
        else if (offendingItem == 2)
        {
            defenderItem = ITEM_POKE_BALL;
        }
    }

    return (CanTrickHeldItemManual(attackerItem, attackerSpecies, defenderItem, defenderSpecies));
}

BOOL BtlCmd_TrySwapItems(void* bw, struct BattleStruct *sp)
{
    IncrementBattleScriptPtr(sp, 1);

    int attack = read_battle_script_param(sp);
    int defence = read_battle_script_param(sp);

    int isTrickAllowedInFight = BattleTypeGet(bw) & (BATTLE_TYPE_BATTLE_TOWER | BATTLE_TYPE_WIRELESS);
#ifdef AI_CAN_GRAB_ITEMS
    isTrickAllowedInFight = 0;
#endif

    int attackerItem = sp->battlemon[sp->attack_client].item;
    //int attackerSpecies = sp->battlemon[sp->attack_client].species;
    int defenderItem = sp->battlemon[sp->defence_client].item;
    //int defenderSpecies = sp->battlemon[sp->defence_client].species;
    if (isTrickAllowedInFight != 0)
        IncrementBattleScriptPtr(sp, attack);
    else if (attackerItem == 0 && defenderItem == 0)
        IncrementBattleScriptPtr(sp, attack);
    else if (!CanTrickHeldItem(sp, sp->attack_client, sp->defence_client))
        IncrementBattleScriptPtr(sp, attack);
    else if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_STICKY_HOLD) == TRUE)
        IncrementBattleScriptPtr(sp, defence);

    return FALSE;
}


/**
 *  @brief script command to jump somewhere if incinerate cannot destroy the berry or gem
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_104_tryincinerate(void* bw UNUSED, struct BattleStruct* sp)
{
    IncrementBattleScriptPtr(sp, 1);

    u32 adrs = read_battle_script_param(sp);
    if (CanActivateDamageReductionBerry(sp, sp->defence_client))
    {
        IncrementBattleScriptPtr(sp, adrs);
        return FALSE;
    }

    u32 item = sp->battlemon[sp->defence_client].item;
	BOOL isItemGemOrBerry = (IS_ITEM_BERRY(item) || IS_ITEM_GEM(item));
    // sticky hold and substitute will keep the mon's held item
    // If the Pokémon is knocked out by the attack, Sticky Hold does not protect the held item.
    if (isItemGemOrBerry && MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_STICKY_HOLD) == TRUE && sp->battlemon[sp->defence_client].hp)
    {
        sp->mp.msg_id = BATTLE_MSG_ITEM_CANNOT_BE_REMOVED;
        sp->mp.msg_tag = TAG_NICKNAME;
        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->defence_client);
    }
    else if (isItemGemOrBerry)
    {
        sp->mp.msg_id = BATTLE_MSG_ITEM_INCINERATED;
        sp->mp.msg_tag = TAG_NICKNAME_ITEM;
        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->defence_client);
        sp->mp.msg_para[1] = item;
        sp->battlemon[sp->defence_client].item = 0; //no recycle
    }
    else
    {
        IncrementBattleScriptPtr(sp, adrs);
    }

    return FALSE;
}

// Unused
BOOL btl_scr_cmd_105_addtype(void* bsys UNUSED, struct BattleStruct* ctx)
{
    IncrementBattleScriptPtr(ctx, 1);
    int type = read_battle_script_param(ctx);

    GF_ASSERT(type >= TYPE_NORMAL && type <= TYPE_DARK);

    AddType(ctx, ctx->defence_client, type);

    return FALSE;
}

/**
 *  @brief Script command to set Aurora Veil, adapted from base game's reflect/light screen code.
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL btl_scr_cmd_106_tryauroraveil(void* bw, struct BattleStruct* sp)
{
    IncrementBattleScriptPtr(sp, 1);

    // Fail conditions are handled in BattleController_BeforeMove.c
    // int adrs = read_battle_script_param(sp);
    int side = IsClientEnemy(bw, sp->attack_client);

    sp->side_condition[side] |= SIDE_STATUS_AURORA_VEIL;
    sp->scw[side].auroraVeilCount = 5;
    sp->scw[side].auroraVeilBattler = sp->attack_client;
    if (HeldItemHoldEffectGet(sp, sp->attack_client) == HOLD_EFFECT_EXTEND_SCREENS) {
        sp->scw[side].auroraVeilCount += HeldItemAtkGet(sp, sp->attack_client, 0);
    }

    // TODO: Check if there is any difference in message between single and double battles.
    // I don't think there is.
    sp->mp.msg_id = BATTLE_MSG_AURORA_VEIL;
    sp->mp.msg_tag = TAG_MOVE_SIDE;
    sp->mp.msg_para[0] = sp->current_move_index;
    sp->mp.msg_para[1] = sp->attack_client;

    return FALSE;
}

/**
 *  @brief script command to clear Aurora Veil, currently only used for Defog (other moves use TryBreakScreens)
 *
 *  @param bsys
 *  @param ctx
 *  @return FALSE
 */

BOOL btl_scr_cmd_107_clearauroraveil(void *bsys, struct BattleStruct *ctx)
{
    IncrementBattleScriptPtr(ctx, 1);

    int side = IsClientEnemy(bsys, ctx->defence_client);

    ctx->side_condition[side] &= ~SIDE_STATUS_AURORA_VEIL;
    ctx->scw[side].auroraVeilCount = 0;

    return FALSE;
}

/**
 *  @brief script command to jump somewhere if pluck/bugbite cannot eat the berry
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return FALSE
 */
BOOL BtlCmd_TryPluck(void* bw, struct BattleStruct* sp)
{
    IncrementBattleScriptPtr(sp, 1);

    u32 adrs = read_battle_script_param(sp);
    u32 adrs2 UNUSED = read_battle_script_param(sp);
    u32 item = sp->battlemon[sp->defence_client].item;
    if (CanActivateDamageReductionBerry(sp, sp->defence_client) || item == ITEM_JABOCA_BERRY)
    {
        IncrementBattleScriptPtr(sp, adrs);
        return FALSE;
    }

    BOOL isBerry = IS_ITEM_BERRY(item);
    // sticky hold and substitute will keep the mon's held item
    // If the Pokémon is knocked out by the attack, Sticky Hold does not protect the held item.
    if (isBerry && MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_STICKY_HOLD) == TRUE && sp->battlemon[sp->defence_client].hp)
    {
        sp->mp.msg_id = BATTLE_MSG_ITEM_CANNOT_BE_REMOVED;
        sp->mp.msg_tag = TAG_NICKNAME;
        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->defence_client);
    }
    else if (isBerry && TryEatOpponentBerry(bw, sp, sp->defence_client)) //TODO: needs expansion/wrapper for newer berries
    {
        sp->mp.msg_id = BATTLE_MSG_STOLE_BERRY;
        sp->mp.msg_tag = TAG_NICKNAME_ITEM;
        sp->mp.msg_para[0] = CreateNicknameTag(sp, sp->attack_client);
        sp->mp.msg_para[1] = item;
        sp->battlemon[sp->defence_client].item = 0; //no recycle

        if (GetItemData(item, ITEM_PARAM_HOLD_EFFECT, 5) != 0) {
            sp->onceOnlyMoveConditionFlags[SanitizeClientForTeamAccess(bw, sp->attack_client)][sp->sel_mons_no[sp->attack_client]].berryEatenAndCanBelch = TRUE;
        }
    }
    else
    {
        IncrementBattleScriptPtr(sp, adrs);
    }

    return FALSE;
}

BOOL BtlCmd_TryFling(void *bw, struct BattleStruct *sp)
{
    IncrementBattleScriptPtr(sp, 1);

    u32 adrs = read_battle_script_param(sp);

    if (TryFling(bw, sp, sp->attack_client) != TRUE) {
        IncrementBattleScriptPtr(sp, adrs);
    }

    u32 item = sp->battlemon[sp->attack_client].item;
    if (IS_ITEM_BERRY(item) && GetItemData(item, ITEM_PARAM_HOLD_EFFECT, 5) != 0) {
        sp->onceOnlyMoveConditionFlags[SanitizeClientForTeamAccess(bw, sp->defence_client)][sp->sel_mons_no[sp->defence_client]].berryEatenAndCanBelch = TRUE;
    }

    return FALSE;
}

BOOL BtlCmd_PlayFaintAnimation(struct BattleSystem* bsys, struct BattleStruct* sp)
{
    IncrementBattleScriptPtr(sp, 1);

    BattleController_EmitPlayFaintAnimation(bsys, sp, sp->fainting_client);

    sp->server_status_flag &= (MaskOfFlagNo(sp->fainting_client) << BATTLE_STATUS_FAINTED_SHIFT) ^ -1;
    sp->server_status_flag2 |= MaskOfFlagNo(sp->fainting_client) << BATTLE_STATUS2_EXP_GAIN_SHIFT;
    sp->playerActions[sp->fainting_client][0] = CONTROLLER_COMMAND_40;

    //TrainerIDs in a 1on1 will be 0,xyz,0,0. In a 2on2 they will be 0,xyz,ghf,abc.
    switch (sp->fainting_client)
    {
    case BATTLER_PLAYER:
        sp->playerSideHasFaintedTeammateThisTurn = TRAINER_1;//0b01
        if (bsys->trainerId[BATTLER_PLAYER2] == 0) //Ally trainer does not exist => must be player, both pokemon slots see the fainted mate
            sp->playerSideHasFaintedTeammateThisTurn = TRAINER_BOTH;//0b11
        break;
    case BATTLER_ENEMY:
        sp->enemySideHasFaintedTeammateThisTurn = TRAINER_1;//0b01
        if (bsys->trainerId[BATTLER_ENEMY2] == 0) //Ally trainer does not exist => must be enemy trainer #1, both pokemon slots see the fainted mate
            sp->enemySideHasFaintedTeammateThisTurn = TRAINER_BOTH;//0b11
        break;
    case BATTLER_PLAYER2:
        sp->playerSideHasFaintedTeammateThisTurn = TRAINER_2;//0b10
        if (bsys->trainerId[BATTLER_PLAYER2] == 0)
            sp->playerSideHasFaintedTeammateThisTurn = TRAINER_BOTH;//0b11
        break;
    case BATTLER_ENEMY2:
        sp->enemySideHasFaintedTeammateThisTurn = TRAINER_2;//0b10
        if (bsys->trainerId[BATTLER_ENEMY2] == 0)
            sp->enemySideHasFaintedTeammateThisTurn = TRAINER_BOTH;//0b11
        break;
    }

    InitFaintedWork(bsys, sp, sp->fainting_client);
    return FALSE;
}

BOOL BtlCmd_TryBreakScreens(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    int adrs = read_battle_script_param(ctx);
    int side = IsClientEnemy(bsys, ctx->defence_client);

    if ((ctx->side_condition[side] & SIDE_STATUS_REFLECT) || (ctx->side_condition[side] & SIDE_STATUS_LIGHT_SCREEN) || (ctx->side_condition[side] & SIDE_STATUS_AURORA_VEIL)) {
        ctx->side_condition[side] &= ~SIDE_STATUS_REFLECT;
        ctx->side_condition[side] &= ~SIDE_STATUS_LIGHT_SCREEN;
        ctx->side_condition[side] &= ~SIDE_STATUS_AURORA_VEIL;
        ctx->scw[side].reflectCount = 0;
        ctx->scw[side].lightScreenCount = 0;
        ctx->scw[side].auroraVeilCount = 0;
    } else {
        IncrementBattleScriptPtr(ctx, adrs);
    }

    return FALSE;
}

void reset_stat_changes(struct BattleStruct *ctx, int battlerId)
{
    for (int stat = 0; stat < 8; stat++) {
        ctx->battlemon[battlerId].states[stat] = 6;
    }
    // ctx->battleMons[battlerId].status2 &= ~STATUS2_FOCUS_ENERGY; as of Gen5
}

BOOL BtlCmd_ResetAllStatChanges(struct BattleSystem *bsys, struct BattleStruct *ctx)
{
    IncrementBattleScriptPtr(ctx, 1);

    int battlersMax = BattleWorkClientSetMaxGet(bsys);
    for (int battlerId = 0; battlerId < battlersMax; ++battlerId) {
        reset_stat_changes(ctx, battlerId);
    }
    return FALSE;
}

BOOL btl_scr_cmd_10A_clearsmog(void *bsys UNUSED, struct BattleStruct *ctx)
{
    IncrementBattleScriptPtr(ctx, 1);
    reset_stat_changes(ctx, ctx->defence_client);
    return FALSE;
}

BOOL btl_scr_cmd_10B_gotoifthirdtype(void *bsys UNUSED, struct BattleStruct *ctx)
{
    IncrementBattleScriptPtr(ctx, 1);
    s32 side = read_battle_script_param(ctx);
    s32 type = read_battle_script_param(ctx);
    u32 address = read_battle_script_param(ctx);

    s32 battlerID = GrabClientFromBattleScriptParam(bsys, ctx, side);

    // Proceed only if type ID is a valid, existing type and our types match.
    if (type >= 0 && type < NUMBER_OF_MON_TYPES && ctx->battlemon[battlerID].type3 == type)
        IncrementBattleScriptPtr(ctx, address);

    return FALSE;
}

BOOL btl_scr_cmd_10C_gotoifterastallized(void *bsys UNUSED, struct BattleStruct *ctx)
{
    IncrementBattleScriptPtr(ctx, 1);
    s32 battlerID = read_battle_script_param(ctx);
    u32 address = read_battle_script_param(ctx);

    if (ctx->battlemon[battlerID].is_currently_terastallized)
        IncrementBattleScriptPtr(ctx, address);

    return FALSE;
}

BOOL btl_scr_cmd_10D_HandleRoost(void* bsys UNUSED, struct BattleStruct* ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    u32 battlerId = GrabClientFromBattleScriptParam(bsys, ctx, read_battle_script_param(ctx));

    if ((ctx->battlemon[battlerId].is_currently_terastallized)
        || (ctx->battlemon[battlerId].type1 == ctx->battlemon[battlerId].type2 && ctx->battlemon[battlerId].type1 != TYPE_FLYING)) {
            return FALSE;
    }

    if (ctx->battlemon[battlerId].type1 == ctx->battlemon[battlerId].type2) {
        ctx->battlemon[battlerId].type1 = TYPE_NORMAL;
        ctx->battlemon[battlerId].type2 = TYPE_NORMAL;
    }

    if (ctx->battlemon[battlerId].type1 == TYPE_FLYING) {
        ctx->battlemon[battlerId].type1 = ctx->battlemon[battlerId].type2;
    } else {
        ctx->battlemon[battlerId].type2 = ctx->battlemon[battlerId].type1;
    }

    return FALSE;
}

BOOL btl_scr_cmd_10E_HandleSoak(void* bsys UNUSED, struct BattleStruct* ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    if (ctx->battlemon[ctx->defence_client].is_currently_terastallized) {
        return FALSE;
    }

    ChangeToPureType(ctx, ctx->defence_client, TYPE_WATER);
    ctx->moveConditionsFlags[ctx->defence_client].soakFlag = TRUE;

    return FALSE;
}

BOOL btl_scr_cmd_10F_HandleMagicPowder(void* bsys UNUSED, struct BattleStruct* ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    if (ctx->battlemon[ctx->defence_client].is_currently_terastallized) {
        return FALSE;
    }

    ChangeToPureType(ctx, ctx->defence_client, TYPE_PSYCHIC);
    ctx->moveConditionsFlags[ctx->defence_client].magicPowderFlag = TRUE;

    return FALSE;
}

BOOL btl_scr_cmd_110_HandleForestsCurse(void* bsys UNUSED, struct BattleStruct* ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    if (ctx->battlemon[ctx->defence_client].is_currently_terastallized) {
        return FALSE;
    }

    AddType(ctx, ctx->defence_client, TYPE_GRASS);
    ctx->moveConditionsFlags[ctx->defence_client].forestsCurseFlag = TRUE;

    return FALSE;
}

BOOL btl_scr_cmd_111_HandleTrickOrTreat(void* bsys UNUSED, struct BattleStruct* ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    if (ctx->battlemon[ctx->defence_client].is_currently_terastallized) {
        return FALSE;
    }

    AddType(ctx, ctx->defence_client, TYPE_GHOST);
    ctx->moveConditionsFlags[ctx->defence_client].trickOrTreatFlag = TRUE;

    return FALSE;
}

BOOL btl_scr_cmd_112_HandleBurnUp(void* bsys UNUSED, struct BattleStruct* ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    if (ctx->battlemon[ctx->attack_client].is_currently_terastallized) {
        return FALSE;
    }

    RemoveType(ctx, ctx->attack_client, TYPE_FIRE);
    ctx->moveConditionsFlags[ctx->attack_client].burnUpFlag = TRUE;

    return FALSE;
}

BOOL btl_scr_cmd_113_HandleDoubleShock(void* bsys UNUSED, struct BattleStruct* ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    if (ctx->battlemon[ctx->attack_client].is_currently_terastallized) {
        return FALSE;
    }

    RemoveType(ctx, ctx->attack_client, TYPE_ELECTRIC);
    ctx->moveConditionsFlags[ctx->attack_client].doubleShockFlag = TRUE;

    return FALSE;
}

BOOL BtlCmd_CheckToxicSpikes(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    IncrementBattleScriptPtr(ctx, 1);

    int side = read_battle_script_param(ctx);
    int adrs = read_battle_script_param(ctx);

    int battlerID = GrabClientFromBattleScriptParam(bsys, ctx, side);
	int fieldSide = IsClientEnemy(bsys, battlerID);

    if (ctx->scw[fieldSide].toxicSpikesLayers) {
        ctx->calc_work = ctx->scw[fieldSide].toxicSpikesLayers;
        ctx->addeffect_type = ADD_EFFECT_TOXIC_SPIKES;
        ctx->state_client = battlerID;
        if (HasType(ctx, battlerID, TYPE_POISON)) {
            ctx->side_condition[fieldSide] &= ~SIDE_STATUS_TOXIC_SPIKES;
            ctx->scw[fieldSide].toxicSpikesLayers = 0;
            ctx->calc_work = 0;
        }
    } else {
        IncrementBattleScriptPtr(ctx, adrs);
    }
    return FALSE;
}

BOOL btl_scr_cmd_114_stuffCheeks(void *bsys, struct BattleStruct *ctx)
{
    IncrementBattleScriptPtr(ctx, 1);
    u32 failAddress = read_battle_script_param(ctx);

    u32 script = 0;
    // stuff cheeks already made sure there is a berry
    u32 itemHeldEffect = HeldItemHoldEffectGet(ctx, ctx->attack_client);
    u32 boost = HeldItemAtkGet(ctx, ctx->attack_client, ATK_CHECK_NORMAL);
    //TODO: ripen

    switch (itemHeldEffect) {
    case HOLD_EFFECT_HP_RESTORE: // oran berry
        ctx->hp_calc_work = boost;
        script = SUB_SEQ_ITEM_HP_RESTORE;
        break;
    case HOLD_EFFECT_HP_PCT_RESTORE: // sitrus berry
        ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[ctx->attack_client].maxhp * boost, 100);
        script = SUB_SEQ_ITEM_HP_RESTORE;
        break;
    case HOLD_EFFECT_PRZ_RESTORE: // cheri berry
        if (ctx->battlemon[ctx->attack_client].condition & STATUS_PARALYSIS) {
            script = SUB_SEQ_ITEM_RECOVER_PRZ;
        }
        break;
    case HOLD_EFFECT_SLP_RESTORE: // chesto berry
        if (ctx->battlemon[ctx->attack_client].condition & STATUS_SLEEP) {
            script = SUB_SEQ_ITEM_RECOVER_SLP;
        }
        break;
    case HOLD_EFFECT_PSN_RESTORE: // pecha berry
        if (ctx->battlemon[ctx->attack_client].condition & STATUS_POISON_ALL) {
            script = SUB_SEQ_ITEM_RECOVER_PSN;
        }
        break;
    case HOLD_EFFECT_BRN_RESTORE: // rawst berry
        if (ctx->battlemon[ctx->attack_client].condition & STATUS_BURN) {
            script = SUB_SEQ_ITEM_RECOVER_BRN;
        }
        break;
    case HOLD_EFFECT_FRZ_RESTORE: // aspear berry
        if (ctx->battlemon[ctx->attack_client].condition & STATUS_FREEZE) {
            script = SUB_SEQ_ITEM_RECOVER_FRZ;
        }
        break;
    case HOLD_EFFECT_PP_RESTORE: // leppa berry
    {
        int index;
        for (index = 0; index < CLIENT_MAX; index++) {
            if (ctx->battlemon[ctx->attack_client].move[index] && !ctx->battlemon[ctx->attack_client].pp[index]) {
                break;
            }
        }
        if (index != CLIENT_MAX) {
            BattleMon_AddVar(&ctx->battlemon[ctx->attack_client], MON_DATA_MOVE1PP + index, boost);
            CopyBattleMonToPartyMon(bsys, ctx, ctx->attack_client);
            ctx->waza_work = ctx->battlemon[ctx->attack_client].move[index];
            script = SUB_SEQ_ITEM_PP_RESTORE;
        }
        break;
    }
    case HOLD_EFFECT_CONFUSE_RESTORE: // persim berry
        if (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_CONFUSION) {
            script = SUB_SEQ_ITEM_RECOVER_CNF;
        }
        break;
    case HOLD_EFFECT_STATUS_RESTORE: // lum berry
        if ((ctx->battlemon[ctx->attack_client].condition & STATUS_ALL) || (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_CONFUSION)) {
            if (ctx->battlemon[ctx->attack_client].condition & STATUS_PARALYSIS) {
                script = SUB_SEQ_ITEM_RECOVER_PRZ;
            }
            if (ctx->battlemon[ctx->attack_client].condition & STATUS_SLEEP) {
                script = SUB_SEQ_ITEM_RECOVER_SLP;
            }
            if (ctx->battlemon[ctx->attack_client].condition & STATUS_POISON_ALL) {
                script = SUB_SEQ_ITEM_RECOVER_PSN;
            }
            if (ctx->battlemon[ctx->attack_client].condition & STATUS_BURN) {
                script = SUB_SEQ_ITEM_RECOVER_BRN;
            }
            if (ctx->battlemon[ctx->attack_client].condition & STATUS_FREEZE) {
                script = SUB_SEQ_ITEM_RECOVER_FRZ;
            }
            if (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_CONFUSION) {
                script = SUB_SEQ_ITEM_RECOVER_CNF;
            }
            if ((ctx->battlemon[ctx->attack_client].condition & STATUS_ALL) && (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_CONFUSION)) {
                script = SUB_SEQ_ITEM_RECOVER_ALL;
            }
        }
        break;
    case HOLD_EFFECT_HP_RESTORE_SPICY: // figy berry
        ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[ctx->attack_client].maxhp, boost);
        ctx->msg_work = 0;
        if (GetFlavorPreferenceFromPID(ctx->battlemon[ctx->attack_client].personal_rnd, FLAVOR_SPICY) == -1) {
            script = SUB_SEQ_ITEM_HP_RESTORE_CNF;
        } else {
            script = SUB_SEQ_ITEM_HP_RESTORE;
        }
        break;
    case HOLD_EFFECT_HP_RESTORE_DRY: // wiki berry
        ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[ctx->attack_client].maxhp, boost);
        ctx->msg_work = 1;
        if (GetFlavorPreferenceFromPID(ctx->battlemon[ctx->attack_client].personal_rnd, FLAVOR_DRY) == -1) {
            script = SUB_SEQ_ITEM_HP_RESTORE_CNF;
        } else {
            script = SUB_SEQ_ITEM_HP_RESTORE;
        }
        break;
    case HOLD_EFFECT_HP_RESTORE_SWEET: // mago berry
        ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[ctx->attack_client].maxhp, boost);
        ctx->msg_work = 2;
        if (GetFlavorPreferenceFromPID(ctx->battlemon[ctx->attack_client].personal_rnd, FLAVOR_SWEET) == -1) {
            script = SUB_SEQ_ITEM_HP_RESTORE_CNF;
        } else {
            script = SUB_SEQ_ITEM_HP_RESTORE;
        }
        break;
    case HOLD_EFFECT_HP_RESTORE_BITTER: // aguav berry
        ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[ctx->attack_client].maxhp, boost);
        ctx->msg_work = 3;
        if (GetFlavorPreferenceFromPID(ctx->battlemon[ctx->attack_client].personal_rnd, FLAVOR_BITTER) == -1) {
            script = SUB_SEQ_ITEM_HP_RESTORE_CNF;
        } else {
            script = SUB_SEQ_ITEM_HP_RESTORE;
        }
        break;
    case HOLD_EFFECT_HP_RESTORE_SOUR: // iapapa berry
        ctx->hp_calc_work = BattleDamageDivide(ctx->battlemon[ctx->attack_client].maxhp, boost);
        ctx->msg_work = 4;
        if (GetFlavorPreferenceFromPID(ctx->battlemon[ctx->attack_client].personal_rnd, FLAVOR_SOUR) == -1) {
            script = SUB_SEQ_ITEM_HP_RESTORE_CNF;
        } else {
            script = SUB_SEQ_ITEM_HP_RESTORE;
        }
        break;
    case HOLD_EFFECT_PINCH_ATK_UP: // liechi berry
        if (ctx->battlemon[ctx->attack_client].states[1] < SUB_SEQ_BOOST_STATS) {
            ctx->msg_work = 1;
            script = SUB_SEQ_ITEM_STAT_BOOST;
        }
        break;
    case HOLD_EFFECT_PINCH_DEF_UP: // ganlon berry
        if (ctx->battlemon[ctx->attack_client].states[2] < SUB_SEQ_BOOST_STATS) {
            ctx->msg_work = 2;
            script = SUB_SEQ_ITEM_STAT_BOOST;
        }
        break;
    case HOLD_EFFECT_PINCH_SPEED_UP: // salac berry
        if (ctx->battlemon[ctx->attack_client].states[3] < SUB_SEQ_BOOST_STATS) {
            ctx->msg_work = 3;
            script = SUB_SEQ_ITEM_STAT_BOOST;
        }
        break;
    case HOLD_EFFECT_PINCH_SPATK_UP: // petaya berry
        if (ctx->battlemon[ctx->attack_client].states[4] < SUB_SEQ_BOOST_STATS) {
            ctx->msg_work = 4;
            script = SUB_SEQ_ITEM_STAT_BOOST;
        }
        break;
    case HOLD_EFFECT_PINCH_SPDEF_UP: // apicot berry
        if (ctx->battlemon[ctx->attack_client].states[5] < SUB_SEQ_BOOST_STATS) {
            ctx->msg_work = 5;
            script = SUB_SEQ_ITEM_STAT_BOOST;
        }
        break;
    case HOLD_EFFECT_PINCH_CRITRATE_UP: // lansat berry
        if (!(ctx->battlemon[ctx->attack_client].condition2 & STATUS2_FOCUS_ENERGY)) {
            script = SUB_SEQ_ITEM_STAT_BOOST_2;
        }
        break;
    case HOLD_EFFECT_PINCH_RANDOM_UP: // starf berry
    {
        int stat;
        for (stat = 0; stat < 5; stat++) {
            if (ctx->battlemon[ctx->attack_client].states[1 + stat] < SUB_SEQ_BOOST_STATS) {
                break;
            }
        }
        if (stat != 5) {
            do {
                stat = BattleRand(bsys) % 5;
            } while (ctx->battlemon[ctx->attack_client].states[1 + stat] == SUB_SEQ_BOOST_STATS);
            ctx->msg_work = stat + 1;
            script = SUB_SEQ_ITEM_STAT_BOOST_2;
        }
    } break;
    // TODO: confirm these do nothing
    case HOLD_EFFECT_PINCH_PRIORITY:  //custap
    case HOLD_EFFECT_RECOIL_PHYSICAL: //rowap
    case HOLD_EFFECT_RECOIL_SPECIAL: //jaboca
    case HOLD_EFFECT_PINCH_ACC_UP: // micle berry
    default:
        break;
    }

    if (itemHeldEffect != 0) {
        ctx->onceOnlyMoveConditionFlags[SanitizeClientForTeamAccess(bsys, ctx->attack_client)][ctx->sel_mons_no[ctx->attack_client]].berryEatenAndCanBelch = TRUE;
    }

    if (script) {
        ctx->temp_work = script;
    } else {
        IncrementBattleScriptPtr(ctx, failAddress);
    }

    return FALSE;
}

BOOL btl_scr_cmd_115_setMoveConditionFlag(void *bsys, struct BattleStruct *ctx)
{
    IncrementBattleScriptPtr(ctx, 1);
    u32 move = read_battle_script_param(ctx);
    u32 side = read_battle_script_param(ctx);
    u32 client_no = GrabClientFromBattleScriptParam(bsys, ctx, side);

    switch (move) {
    case MOVE_POWDER:
        ctx->moveConditionsFlags[client_no].powderBlockingFireMove = TRUE;
        break;
    case MOVE_LASER_FOCUS:
        ctx->moveConditionsFlags[client_no].laserFocusTimer = 2;
        break;
    case MOVE_GLAIVE_RUSH:
        ctx->moveConditionsFlags[client_no].glaiveRush = TRUE;
        break;
    case MOVE_THROAT_CHOP:
        ctx->moveConditionsFlags[client_no].throatChopTimer = 2;
        break;
    default:
        break;
    }

     return FALSE;
}

BOOL BtlCmd_CopyStatStages(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx)
{
    IncrementBattleScriptPtr(ctx, 1);

    for (int stat = 0; stat < 8; stat++) {
        ctx->battlemon[ctx->attack_client].states[stat] = ctx->battlemon[ctx->defence_client].states[stat];
    }

    ctx->battlemon[ctx->attack_client].condition2 |= (ctx->battlemon[ctx->defence_client].condition2 & STATUS2_FOCUS_ENERGY);

    ctx->moveConditionsFlags[ctx->attack_client].laserFocusTimer = ctx->moveConditionsFlags[ctx->defence_client].laserFocusTimer;

    return FALSE;
}
