CheckSideAbility = 0x1AA64 + 0x022378C1;
BattlePokemonParamGet = 0x17520 + 0x022378C1;
BattleWorkMonDataGet = 0x20914 + 0x022378C1;
BattleItemDataGet = 0x205B4 + 0x022378C1;
BattleTypeGet = 0x2F20 + 0x022378C1;
CheckFieldMoveEffect = 0x1B428 + 0x022378C1;
CheckNumMonsHit = 0x1A9A0 + 0x022378C1;
BattleWorkPokemonParamGet = 0x2FC0 + 0x022378C1;
BattleWorkPokeCountGet = 0x2F74 + 0x022378C1;
BattleWorkZukanWorkGet = 0x307C + 0x022378C1;
BattleWorkClientSetMaxGet = 0x2F30 + 0x022378C1;
ST_ServerAgiCalc = 0x18388 + 0x022378C1;
Sub_GaugeObjHeadGet = 0x2E2F8 + 0x022378C1;
GetBattlerSelectedMove = 0x1AA30 + 0x022378C1;
ST_CheckIfInTruant = 0x1B380 + 0x022378C1;
SCIO_BlankMessage = 0x2CA30 + 0x022378C1;
BattleWorkFightMsgGet = 0x0223A930 | 1;
Task_DistributeExp = 0x02245898 | 1;


ServerCriticalMessage = 0x166BC+ 0x022378C1;
ServerWazaStatusMessage = 0x166D8 + 0x022378C1;
ST_ServerAddStatusCheck = 0x18BD0 + 0x022378C1;
ServerIkariCheck = 0x1672C + 0x022378C1;
ST_ServerWazaHitTokuseiCheck_Old = 0x1C544 + 0x022378C1;
ST_ServerWaruagakiCheck = 0x19F2C + 0x022378C1;
ServerSenseiCheck = 0x143E4 + 0x022378C1;
ServerStatusCheck = 0x13C68 + 0x022378C1;
ServerBadgeCheck = 0x13610 + 0x022378C1;
ServerPPCheck = 0x1393C + 0x022378C1;
ServerDefenceCheck = 0x13AD8 + 0x022378C1;
ST_ServerDefenceClientTokuseiCheck = 0x19158 + 0x022378C1;
ST_ServerTotteokiCountCalc = 0x1B570 + 0x022378C1;
ST_ServerMetronomeBeforeCheck = 0x1ED20 + 0x022378C1;
ST_ServerPokeAppearCheck = 0x1B8D4 + 0x022378C1;
SCIO_StatusEffectSet = 0x2BF88 + 0x022378C1;

/*battle table*/
SoubiItemWazaTypePowUpTbl = 0x0226CC3A;
TetsunoKobushiTable = 0x0226CBBE;
CondChgTable = 0x226CB88;
ItemDataIndex = 0x2100194;

gf_rand = 0x0201FD44 |1;
GF_ASSERT_INTERNAL = 0x0202551C | 1;
SetPokemonGet = 0x0202A434 |1;
SetPokemonSee = 0x0202A36C |1;
UpdatePokedexWithReceivedSpecies = 0x0202ECC0 | 1;
ArchiveDataLoadMalloc = 0x02007524 | 1;
ArchiveDataLoad = 0x02007509;
ArchiveDataLoadMallocOfs = 0x0200757C | 1;
NARC_ctor = 0x02007688 | 1;
ArchiveDataLoadOfs = 0x02007560 | 1;
/*sqrt = 0x0200048A | 1;*/

/*Pokemon*/
AllocMonZeroed = 0x0206DD2C | 1;
ZeroMonData = 0x0206DCE4 |1;
PokeParaSet = 0x0206DE38 |1;
PokeParaSetChr = 0x0206E108 |1;
PokeParaSetSexChr = 0x0206E14C |1;
PokeCopyPPtoPP = 0x0207188C |1;
GetMonData = 0x0206E540 |1;
GetBoxMonData = 0x0206E640 |1;
SetMonData = 0x0206EC40 |1;
PokeStatusPokeParamGet = 0x0208A520 | 1;
RecalcPartyPokemonStats = 0x0206E250 | 1;
ResetPartyPokemonAbility = 0x020722D4 |1;
SanitizeFormNumber = 0x02070438 |1;
PokePasoParaUnknownFormGet = 0x02070DA0 |1;
PokeFormNoPersonalParaGet = 0x0206FBC4 |1;
GetBoxMonGender = 0x0206FF90 |1;
PokeSexGetMonsNo = 0x0206FFC8 |1;
BoxMonSetFastModeOn = 0x0206DDD8 |1;
BoxMonSetFastModeOff = 0x0206DE00 |1;
SetBoxMonData = 0x0206ED70 |1;
FillInBoxMonLearnset = 0x020712D8 |1;
PokePersonalParaGet = 0x0206FBE8 |1;
BoxMonInit = 0x0206DD0C |1;
PokeLevelExpGet = 0x0206FD00 |1;
Daycare_GetBoxMonI = 0x0206BDB0 |1;
SetMonPersonality = 0x0207235C | 1;
GetNatureFromPersonality = 0x0206FE2C |1;
PokeParaLevelExpGet = 0x0206FCDC | 1;
PokeLevelUpCheck = 0x02070DB4 | 1;
MonHasMove = 0x02071754 | 1;
PartyHasMon = 0x020748CC | 1;
sub_020720FC = 0x020720FC | 1;
InitBoxMonMoveset = 0x020712D8 | 1;
GrabAndRegisterUnownForm = 0x02248444 | 1;
WildMonSetRandomHeldItem = 0x020721A4 | 1;
MonIsShiny = 0x0207003C | 1;
BoxMonIsShiny = 0x02070044 | 1;
sub_02017FE4 = 0x02017FE4 | 1;
SetEggStats = 0x0206C8B8 | 1;
SaveMisc_SetTogepiPersonalityGender = 0x0202ABB0 | 1;
SaveMisc_GetTogepiPersonalityGender = 0x0202ABBC | 1;

SaveData_GetRepelPtr = 0x0202DB05;
SaveData_GetEventPtr = 0x020503D0 | 1;
SaveData_GetDexPtr = 0x0202A634 |1;
SaveData_GetPlayerPartyPtr = 0x02074904 |1;
Save_HOF_RecordParty = 0x0202E0F8 | 1;
LoadHallOfFame = 0x02027104 | 1;
AddHallOfFameEntry = 0x02052A50 | 1;

GetVarAdrs = 0x020504A4 | 1;
EncDataSave_GetSaveDataPtr = 0x0202D9C4 | 1;
GetVarPointer = 0x02040374 |1;
VarSet = 0x020403C0 | 1;
VarGet = 0x020403AC | 1;
GF_CpuCopy8 = 0x0204D450;
GetEvScriptWorkMemberAdrs = 0x020402F0 |1;
WORDSET_RegisterAbilityName = 0x0200C060|1;
EventSet_Script = 0x0203FE74 |1;

sys_AllocMemory = 0x0201AA8C | 1;
sys_FreeMemoryEz = 0x0201AB0C | 1;
sys_AllocMemoryLo = 0x0201AACC | 1;

/*TextBox*/
TalkWinGraphicSet = 0x0200E644 |1;
CONFIG_GetWindowType = 0x0202ADCC |1;
GF_BGL_BmpWinGet_Frame = 0x0201EE8C |1;
FieldTalkWinClear = 0x0205B5A8 |1;
BmpTalkWinWrite = 0x0200E998 |1;
MSG_PrintInit = 0x02020080 |1;
SystemFontPaletteLoad = 0x02003030 |1;
TalkFontPaletteLoad = 0x0200304C |1;

/*Pal*/
ArcUtil_PalSet = 0x02007938 |1;

/*Window*/
FillWindowPixelBuffer = 0x0201D978 |1;
ConvertNumToString = 0x0208C87C |1;
StringPut = 0x0208C778 |1;
CopyWindowToVram = 0x0201D578 |1;

/*ItemUse*/
SetUpItemScript = 0x02064A8C |1;

/*OAM*/
OAM_LoadResourceCharArcH = 0x0200D504 | 1;
OAM_LoadResourcePlttWorkArcH = 0x0200D68C |1;
OAM_LoadResourceCellArcH = 0x0200D6EC | 1;
OAM_LoadResourceCellAnmArcH = 0x0200D71C |1;

OAM_LoadResourcePlttWorkArc = 0x0200D644 |1;
OAM_LoadResourceCellArc = 0x0200D6D4 | 1;
OAM_LoadResourceCellAnmArc = 0x0200D704 |1;
OAM_LoadResourceCharArc = 0x0200D4A4 |1;
OAM_ObjectAnimeSeqSetCap = 0x0200DC4C | 1;

OAM_ObjectAdd_S = 0x0200D734 |1;
OAM_ObjectUpdate = 0x0200DC0C |1;
OAM_FreeResourceChar = 0x0200D958 |1;
OAM_FreeResourceCell = 0x0200D978 |1;
OAM_FreeResourceCellAnm = 0x0200D988 |1;
OAM_FreeResourcePltt = 0x0200D968 |1;
CATS_ActorPointerDelete_S = 0x0200D9DC |1;

BG_LoadScreenTilemapData = 0x0201C0A8 | 1;
ScheduleBgTilemapBufferTransfer = 0x0201EFBC | 1;
ArcUtil_ScrnDataGet = 0x020079D8 | 1;

/*BATTLE_OAM*/
BGCallback_FightOnly = 0x2FADC + 0x022378C1;
BG_SlideSetInit = 0x02F5AC + 0x022378C1;
BattleWorkCATS_SYS_PTRGet = 0x3024 + 0x022378C1;
BattleWorkCATS_RES_PTRGet = 0x302C + 0x022378C1;
BGCallback_CommandSelect = 0x2F6C4 + 0x022378C1;
BattleWorkPfdGet = 0x3078 + 0x022378C1;
PokeIconPalArcIndexGet = 0x02074490 | 1;
PokeIconAnmCellArcIndexGet = 0x02074498 | 1;
PokeIconAnmCellAnmArcIndexGet = 0x020744A4 | 1;

EffectTCB_Delete = 0x315F8 + 0x022378C1;
Sub_TouchEndDelete = 0x314C8 + 0x022378C1;
Sub_ScrnOffsetRewrite = 0x31624 + 0x022378C1;
EffectTCB_Add = 0x315C4 + 0x022378C1;
BattleWorkGF_BGL_INIGet = 0x0223A7D4 | 1;

Snd_SePlay = 0x0200604C | 1;





/* new battle engine */
//GetBattlerAbility = 0x022527CC | 1;
BattleDamageDivide = 0x02253178 | 1;
BattleWorkWeatherGet = 0x0223BAF8 | 1;
BattleWorkEnemyClientGet = 0x32F8 + 0x022378C1;
TraceClientGet = 0x022585B8 | 1;
IsClientEnemy = 0x0223AB1C | 1;
TypeCalc = 0x02251D28 | 1;
AnticipateMoveEffectListCheck = 0x0225865C | 1;
BattleRand = 0x0223BD98 | 1;
ChooseRandomTarget = 0x02253DA0 | 1;
CountBattlerMoves = 0x02252EA8 | 1;
AbilityStatusRecoverCheck = 0x022543A0 | 1;
HeldItemHealCheck = 0x02254E7C | 1;
/*LoadBattleSubSeqScript = 0x172DC + 0x022378C1;*/
HeldItemHoldEffectGet = 0x02255830 | 1;
HeldItemAtkGet = 0x02255844 | 1;
IsMovingAfterClient = 0x0225561C | 1;
CheckSubstitute = 0x02256838 | 1;
GetArceusType = 0x02071C28 | 1;
BattleWorkBattleStatusFlagGet = 0x0223B514 | 1;
PokeParaGiratinaFormChange = 0x02071CA0 | 1;
SCIO_PSPtoPPCopy = 0x02263B4C | 1;
SCIO_IncRecord = 0x02263F0C | 1;
CheckStatusRecoverFromAbilityOnSwitch = 0x0225451C | 1;
CheckPressureForPPDecrease = 0x02258180 | 1;
CheckBattleAnimationsOption = 0x0223B6D4 | 1;
SCIO_QueueMoveAnimation = 0x0226340C | 1;
SCIO_QueueMoveAnimationConsiderAttackerDefender = 0x0226343C | 1;
SkillSequenceGosub = 0x02245520 | 1;
CheckIfAnyoneShouldFaint = 0x0224DC74 | 1;
Snd_BgmPlay = 0x02005D48 | 1;
BattleWorkPinchSEFlagSet = 0x0223BD3C | 1;
ST_ServerPokeOneSelfCheckActPP = 0x022568B0 | 1;
PokeExpCalc = 0x022463E8 | 1;
BattleWorkConfigMsgSpeedGet = 0x0223B718 | 1;
BattleMSG_Print = 0x0223C494 | 1;
GF_MSG_PrintEndCheck = 0x02020094 | 1;
SCIO_EXPGaugeCalcSet = 0x02263564 | 1;
ST_ServerQueCheck = 0x0224ED48 | 1;
SCIO_StatusEffectSet = 0x02263848 | 1;
SCIO_LevelUpEffectSet = 0x0226399C | 1;
BattleWorkPlaceIDGet = 0x0223AB60 | 1;
TryUseHeldItem = 0x0225471C | 1;
HeldItemHealStatusCheck = 0x02254E7C | 1;
Battle_GetClientPartySize = 0x0223a834 | 1;
Battle_GetClientPartyMon = 0x0223a880 | 1;

/*Battle Script Functions*/
IncrementBattleScriptPtr = 0x02245508 | 1;
/*read_battle_script_param = 0x022454E8 | 1;*/
CreateNicknameTag = 0x022522E0 | 1;
JumpToMoveEffectScript = 0x02245518 | 1;
BGCallback_Waza = 0x0226748C | 1;

/* Trainer data expansion */
gf_get_seed = 0x0201FD2C | 1;
PokeParty_Init = 0x020744DC | 1;
TT_TrainerPokeDataGet = 0x020735E8 | 1;
TrainerCBSet = 0x02072A44 | 1;
try_force_gender_maybe = 0x02073A98 | 1;
TrainerMonHandleFrustration = 0x02073AE4 | 1;
SetPartyPokemonMoveAtPos = 0x020714E8 | 1;
gf_srand = 0x0201FD38 | 1;
PokeParty_Add = 0x02074524 | 1;

/* Illusion */
CT_PokemonEncountSet = 0x02259968 | 1;
CT_PokemonEncountAppearSet = 0x02259BA8 | 1;
CT_PokemonAppearSet = 0x02259D48 | 1;
ClientCommandReset = 0x02259928 | 1;
BattleWorkPokePartyGet = 0x0223A7F4 | 1;
PokeParty_GetPokeCount = 0x02074640 | 1;
Party_GetMonByIndex = 0x02074644 | 1;
SideClientNoGet = 0x0224768C | 1;
BattleWorkClientNoGet = 0x0223AAD8 | 1;
BattleWorkPartnerClientNoGet = 0x0223AB6C | 1;
BattleWorkCommIDGet = 0x0223BFC0 | 1;
BattleWorkCommStandNoGet = 0x0223BFCC | 1;


/*Overworld Code*/
AddPokemonParam = 0x0224855C | 1;
GetEncountChar = 0x02247854 | 1;
/*get_mon_ow_tag = 0x02069D70 | 1;*/
does_species_have_dimorphism = 0x0206A338 | 1;

/*first E0 battle script commands*/
BattleScriptCmdTable = 0x0226C6C8;

/* i can't believe i haven't used this one yet */
GetItemData = 0x02077D88 | 1;
GiratinaBoxPokemonFormChange = 0x02071CBC | 1;
GrashideaFeasibleCheck = 0x02071DB4 | 1;
PokeList_FormDemoOverlayLoad = 0x0207CB54 | 1;

/* save stuff */
SaveBlock2_get = 0x020272B0 | 1;
Sav2_Misc_get = 0x0202A954 | 1;
SavArray_Flags_get = 0x020503D0 | 1;
PokeParty_Delete = 0x0207456C | 1;
Overlay_UnloadID = 0x02006F7C | 1;
Overlay_Load = 0x02006FF8 | 1;
WIPE_SYS_EndCheck = 0x0200FB5C | 1;
PokeListProc_End = 0x020795E0 | 1;
PROC_GetWork = 0x02007290 | 1;
ScriptJump = 0x0203FE0C | 1;
SetScriptVarPassSave = 0x02066A7C | 1;
GetScriptVarPassSave = 0x02066AAC | 1;
SetScriptFlagPassSave = 0x0206659C | 1;
ClearScriptFlagPassSave = 0x020665A4 | 1;
CheckScriptFlagPassSave = 0x020665AC | 1;
Sav2_PlayerData_GetProfileAddr = 0x02028E9C | 1;

/* rtc functions */
Party_ResetAllShayminToLandForme = 0x02071E2C | 1;
GF_RTC_CopyDateTime = 0x02014708 | 1;
GF_RTC_CopyTime = 0x0201474C | 1;
GF_RTC_CopyDate = 0x02014780 | 1;
IsNighttime = 0x02014804 | 1;
GF_RTC_GetTimeOfDay = 0x0201481C | 1;
GF_RTC_GetTimeOfDayWildParam = 0x02014830 | 1;
GF_RTC_GetTimeOfDayWildParamByHour = 0x0201485C | 1;


/* map object funcs */
GetMapObjectByID = 0x0205EE60 | 1;
MapObject_GetMovement = 0x0205F264 | 1;
MapObject_GetGfxID = 0x0205F25C | 1;
MapObject_SetGfxID = 0x0205F258 | 1;
sub_0205F6AC = 0x0205F6AC | 1;
MapObject_SetBits = 0x0205F20C | 1;
MapObject_ClearBits = 0x0205F214 | 1;
MapObject_SetID = 0x0205F248 | 1;
MapObject_SetType = 0x0205F268 | 1;
MapObject_GetType = 0x0205F26C | 1;
MapObject_SetFlagID = 0x0205F270 | 1;
MapObject_SetScript = 0x0205F278 | 1;
MapObject_SetParam = 0x0205F2D0 | 1;
MapObject_GetParam = 0x0205F2F4 | 1;
MapObject_SetXRange = 0x0205F318 | 1;
MapObject_SetYRange = 0x0205F320 | 1;
FieldSysGetAttrAddr = 0x020402F0 | 1;
MapObject_GfxDraw = 0x0205f484 | 1;
ChangeMapObjSprite = 0x021FA930 | 1;

/* 0x16C54 in overlay1 */
PlayerAlternate_MapObject_GfxDraw = 0x021FC554 | 1;

CreateFollowingSpriteFieldObject = 0x0206A128 | 1;
FollowingPokemon_GetSpriteID = 0x02069D70 | 1;
FollowPokeFsysParamSet = 0x02069F3C | 1;
FollowPokeMapObjectSetParams = 0x02069EE8 | 1;
FsysFollowMonClear = 0x0206A06C | 1;

CreateSpecialFieldObject = 0x0205E294 | 1;
DeleteMapObject = 0x0205E400 | 1;
MapObject_GetCurrentX = 0x0205F914 | 1;
MapObject_SetCurrentX = 0x0205F918 | 1;
MapObject_GetCurrentY = 0x0205F934 | 1;
MapObject_SetCurrentY = 0x0205F938 | 1;
MapObject_SetFlag29 = 0x0205F89C | 1;
sub_02069DC8 = 0x02069DC8 | 1;
ov01_021F9048 = 0x021F9048 | 1;

MapObject_PauseMovement = 0x0205F6FC | 1;
MapObject_UnpauseMovement = 0x0205F708 | 1;
MapObjectMan_PauseAllMovement = 0x0205F574 | 1;
MapObjectMan_UnpauseAllMovement = 0x0205F5A4 | 1;
MapObject_IsSingleMovementActive = 0x0205F648 | 1;
GetMetatileBehaviorAt = 0x02054918 | 1;
GetPlayerXCoord = 0x0205C67C | 1;
GetPlayerYCoord = 0x0205C688 | 1;

BagView_New = 0x02077878 | 1;
BagView_SetItem = 0x020778BC | 1;
Sav2_Bag_get = 0x0207879C | 1;

FreeOverlayAllocation = 0x02006F58 | 1;
GetOverlayLoadDestination = 0x02006FAC | 1;
CanOverlayBeLoaded = 0x020070AC | 1;
GetLoadedOverlaysInRegion = 0x02007124 | 1;
FS_SetDefaultDMA = 0x020D86D8;
LoadOverlayNormal = 0x02007180 | 1;
LoadOverlayNoInit = 0x02007188 | 1;
LoadOverlayNoInitAsync = 0x020071C0 | 1;

GetSoundDataPointer = 0x020043F8 | 1;
NNS_SndArcLoadSeq = 0x020C9DC4;
GF_SndHeapGetFreeSize = 0x0200472C | 1;
NNS_SndArcLoadSeqEx = 0x020C9E48;

NNS_SndArcGetBankInfo = 0x020C9724;
LoadBank = 0x020CA398;
NNS_SndArcGetFileAddress = 0x020C99A4;
NNS_SndArcGetWaveArcInfo = 0x020C9788;
NNSi_SndArcLoadWaveArc = 0x020CA194;
LoadSingleWaves = 0x020CA788;
SND_AssignWaveArc = 0x020D6154;

Fsys_GetWeather_HandleDiamondDust = 0x0203BBB4 | 1;
sub_0206D038 = 0x0206D038 | 1;
GetSpeciesNameIntoArray = 0x0200BC28 | 1;
PlayCry = 0x02006218 | 1;

weatherSysObjFadeInit = 0x021EC504 | 1;
weatherSysFogFadeInInitPack = 0x021EC5FC | 1;
weatherSysObjFade = 0x021EC538 | 1;
weatherSysFogFadeInMainPack = 0x021EC650 | 1;
weatherSysFogParamSet = 0x021EC678 | 1;
weatherSysFogSet = 0x021EC7C8 | 1;
weatherDustObj = 0x021EC85C | 1;
weatherSysObjFadeOutSet = 0x021EC52C | 1;
weatherSysFogFadeInit = 0x021EC790 | 1;
weatherSysFogFade = 0x021EC7AC | 1;
SetFogData = 0x021EA864 | 1;
stopWeatherWork_local = 0x021EBCA4 | 1;
moveFuncObj = 0x021EC2E4 | 1;
CLACT_AnmFrameSet = 0x020249D4 | 1;
getObjMat = 0x021EC304 | 1;
setClactMatrix = 0x021EB5F4 | 1;
addObj = 0x021EC1F4 | 1;
destObj = 0x021EC29C | 1;
scrollObj = 0x021EC470 | 1;
addWeatherSnow = 0x021ECF4C | 1;
objWeatherSnow = 0x021ED070|1;
GX_EngineAToggleLayers = 0x02022C60 | 1;
WeatherBGAlphaDef = 0x021EB818 | 1;
WeatherMoveReq = 0x021EB830 | 1;
WeatherMoveMain = 0x021EB840 | 1;

SetEncountData = 0x02247B64 | 1;
SetEncountDataSwarm_maybe = 0x02247DA0 | 1;

gSafariBallRateTable = 0x0226C3CE;
BattleWorkGroundIDGet = 0x0223AB40 | 1;
Battle_CheckIfHasCaughtMon = 0x0223C330 | 1;
Battle_GetTimeOfDay = 0x0223B520 | 1;
Battle_IsFishingEncounter = 0x0223AAB8 | 1;
Pokedex_CountDexOwned = 0x02029E84 | 1;
Pokedex_CountJohtoDexOwned = 0x02029EA0 | 1;
BallToSpaIDs = 0x0223746C;
GetBallID_ov7 = 0x0223251C | 1;

TypeCheckCalc = 0x022583B4 | 1;
ShouldDelayTurnEffectivenessChecking = 0x02258440 | 1;
ShouldUseNormalTypeEffCalc = 0x02251C74 | 1;
AI_TypeCheckCalc = 0x022521C8 | 1;
AI_ShouldUseNormalTypeEffCalc = 0x02252178 | 1;

Summary_GetPokemonData = 0x0208A520 | 1;
Summary_PickStatusIcon = 0x0208AD64 | 1;
Summary_PrintString = 0x0208C778 | 1;
Summary_NumberToString = 0x0208C87C | 1;
Summary_PrintCurrentOverMax = 0x0208C8C8 | 1;
Summary_PrintStatStringAccountForStat = 0x0208C7F8 | 1;
Summary_PrintStringGeneric = 0x0208C850 | 1;
CopyBoxPokemonToPokemon = 0x02071780 | 1;

GetExpByGrowthRateAndLevel = 0x0206FD30 | 1;

ServerGetExpCheck = 0x0224DD18 | 1;
ServerZenmetsuCheck = 0x0224D7EC | 1;
ST_ServerDir2ClientNoGet = 0x02257E98 | 1;

/* tasks */
CreateSysTask = 0x0200E320 | 1;
DestroySysTask = 0x0200E390 | 1;
SysTask_CreateOnVBlankQueue = 0x0200E33C | 1;
DebugTextBuf = 0x020741C4;

BattleWorkClientParamGet = 0x0223A7E8 | 1;

BattleStructureInit = 0x02250F44 | 1;
BattleStructureCounterInit = 0x02251038 | 1;
ServerMoveAIInit = 0x0224E384 | 1;
DumpMoveTableData = 0x02073300 | 1;

GF_ExpHeap_FndGetTotalFreeSize = 0x0201ABEC | 1;

/*Link_QueueIsEmpty = 0x0224ED48 | 1;*/
Link_CheckTimeout = 0x0224ED9C | 1;

Save_Daycare_Get = 0x020293D4 | 1;

/* item use funcs */
ItemFieldUseFunc_Generic = 0x02065150 | 1;
ItemMenuUseFunc_HealingItem = 0x02064B54 | 1;
ItemCheckUseFunc_Dummy = 0x02064BF4 | 1;
ItemMenuUseFunc_Bicycle = 0x02064BFC | 1;
ItemFieldUseFunc_Bicycle = 0x02064C30 | 1;
ItemCheckUseFunc_Bicycle = 0x02064DA8 | 1;
ItemMenuUseFunc_TMHM = 0x02064E18 | 1;
ItemMenuUseFunc_Mail = 0x02064EB8 | 1;
ItemMenuUseFunc_Berry = 0x02064F08 | 1;
ItemCheckUseFunc_Berry = 0x02064F04 | 1;
ItemMenuUseFunc_PalPad = 0x02064F28 | 1;
ItemFieldUseFunc_PalPad = 0x02064F5C | 1;
ItemMenuUseFunc_Honey = 0x02064F7C | 1;
ItemMenuUseFunc_OldRod = 0x02064FD4 | 1;
ItemFieldUseFunc_OldRod = 0x02065010 | 1;
ItemCheckUseFunc_FishingRod = 0x020650E8 | 1;
ItemMenuUseFunc_GoodRod = 0x02065030 | 1;
ItemFieldUseFunc_GoodRod = 0x0206506C | 1;
ItemMenuUseFunc_SuperRod = 0x0206508C | 1;
ItemFieldUseFunc_SuperRod = 0x020650C8 | 1;
ItemMenuUseFunc_EvoStone = 0x02065258 | 1;
ItemMenuUseFunc_EscapeRope = 0x02065310 | 1;
ItemCheckUseFunc_EscapeRope = 0x0206536C | 1;
ItemMenuUseFunc_ApricornBox = 0x020653D8 | 1;
ItemFieldUseFunc_ApricornBox = 0x02065408 | 1;
ItemMenuUseFunc_BerryPots = 0x02065428 | 1;
ItemFieldUseFunc_BerryPots = 0x02065458 | 1;
ItemMenuUseFunc_UnownReport = 0x02065474 | 1;
ItemFieldUseFunc_UnownReport = 0x020654A4 | 1;
ItemMenuUseFunc_DowsingMchn = 0x020654C0 | 1;
ItemFieldUseFunc_DowsingMchn = 0x020654F4 | 1;
ItemFieldUseFunc_GbSounds = 0x02065560 | 1;
ItemMenuUseFunc_Gracidea = 0x020655B8 | 1;
ItemFieldUseFunc_Gracidea = 0x020655F0 | 1;
ItemMenuUseFunc_VSRecorder = 0x02065614 | 1;
ItemFieldUseFunc_VSRecorder = 0x02065648 | 1;
sub_0203FAE8 = 0x0203FAE8 | 1;
sub_0203C8F0 = 0x0203C8F0 | 1;
RegisteredItem_CreateGoToAppTask = 0x020658B8 | 1;

PaletteRAMArray = 0x05000000;

GetMonNature = 0x0206FDFC | 1;
BattleWork_GetTrainerIndex = 0x0223A9AC | 1;

MIi_CpuClearFast = 0x020D4858;
SaveDetectFlash = 0x020286F8 | 1;
SaveData_InitSubstructs = 0x02027E5C | 1;
//SaveData_InitSlotSpecs = 0x02027EFC | 1;
Save_GetSaveFilesStatus = 0x020277D4 | 1;
//Save_LoadDynamicRegion = 0x02027AD4 | 1;
Save_GetPCBoxModifiedFlags = 0x02027170 | 1;
Save_CheckFrontierData = 0x020279EC | 1;
//Save_InitDynamicRegion = 0x020274A8 | 1;
sSaveDataPtr = 0x021D2228;
Sys_SetSleepDisableFlag = 0x0201A4BC | 1;
FlashClobberChunkFooter = 0x02027DF8 | 1;
FlashWriteChunk = 0x02028758 | 1;
Sys_ClearSleepDisableFlag = 0x0201A4CC | 1;
_NowWriteFlash = 0x02027DB4 | 1;
//Save_PrepareForAsyncWrite = 0x02027550 | 1;
//Save_WriteFileAsync = 0x02027564 | 1;
Save_InitDynamicRegion_Internal = 0x02027FA8 | 1;
//Save_WriteManInit = 0x02027BDC | 1;
//HandleWriteSaveAsync_PCBoxes = 0x02028968 | 1;
HandleWriteSaveAsync_NormalData = 0x02027C18 | 1;
//Save_WriteManFinish = 0x02027CEC | 1;
CancelAsyncSave = 0x02027D6C | 1;
SaveArray_CalcCRC16MinusFooter = 0x020275D0 | 1;
FlashLoadSaveDataFromChunk = 0x02027ABC | 1;
GF_CalcCRC16 = 0x0201FF98 | 1;
sub_020310A0 = 0x020310A0 | 1;
sub_0202C6FC = 0x0202C6FC | 1;
FlashWriteChunkInternal = 0x020287F8 | 1;
GetChunkOffsetFromCurrentSaveSlot = 0x020275E0 | 1;
sub_0202C714 = 0x0202C714 | 1;
sub_02031084 = 0x02031084 | 1;
Save_ResetPCBoxModifiedFlags = 0x02027180 | 1;
CARD_TryWaitBackupAsync = 0x020DD1A4;
CARD_CancelBackupAsync = 0x020DD1B0;
CARD_UnlockBackup = 0x020DC9B4;
OS_ReleaseLockID = 0x020D161C;
//Save_CalcPCBoxModifiedFlags = 0x02028C70 | 1;
//PCModifiedFlags_CountModifiedBoxes = 0x02028C9C | 1;
sub_020271A0 = 0x020271A0 | 1;
Save_SetAllPCBoxesModified = 0x02027190 | 1;
//Save_WritePCBoxes = 0x02028AB4 | 1;
WaitFlashWrite = 0x02028874 | 1;
//Save_WriteNextPCBox = 0x02028BA8 | 1;
//Save_WritePCFooter = 0x02028BF8 | 1;
//PCModifiedFlags_GetIndexOfNthModifiedBox = 0x02028CD4 | 1;

NewMsgDataFromNarc = 0x0200BAF8 | 1;
ReadMsgDataIntoU16Array = 0x0200BBF4 | 1;
DestroyMsgData = 0x0200BB44 | 1;
RestoreBoxMonPP = 0x020728C4 | 1;
//PCStorage_PlaceMonInBoxFirstEmptySlot = 0x02073BFC | 1;
//PCStorage_SetBoxModified = 0x020740D8 | 1;
CopyU16ArrayToString = 0x020269A0 | 1;
CopyStringToU16Array = 0x02026A68 | 1;
CheckMoveCallsOtherMove = 0x02252698 | 1;
//StruggleCheck = 0x022517EC | 1;

GfGfxLoader_LoadCharData = 0x020078F0 | 1;
PaletteData_LoadNarc = 0x02003200 | 1;
Ground_ActorResourceSet = 0x02265FD4 | 1;
BattleWorkGroundBGChg = 0x0223B874 | 1;
GrabTimeOfDayFileAdjustment = 0x0223B52C | 1;

gAnimScrTable = 0x02234DE8;
DrawFrameAndWindow2	= 0x0200E998 | 1;
AddWindowParameterized = 0x0201D40C | 1;

LoadLevelUpLearnset_HandleAlternateForm = 0x02071FC8 | 1;
TryAppendMonMove = 0x0207137C | 1;

BattleControllerPlayer_CalcExecutionOrder = 0x02249190 | 1;

Mon_UpdateRotomForm = 0x02071EC0 | 1;
Mon_UpdateShayminForm = 0x02071D6C | 1;
Daycare_GetBothBoxMonsPtr = 0x0206C1C8 | 1;

CurseUserIsGhost = 0x022526D0 | 1;
UnlockBattlerOutOfCurrentMove = 0x02250CA0 | 1;

CheckItemGradualHPRestore = 0x02254D80 | 1;
ov12_02252218 = 0x02252218 | 1;
TryHeldItemNegativeEffect = 0x0225551C | 1;
DistributeEffortValues = 0x022463E8 | 1;

sub_02037D78 = 0x02037D78 | 1;
PrintErrorMessageAndReset = 0x02096338 | 1;

OS_SetArenaHi = 0x020D2C78;
OS_GetInitArenaHi = 0x020D2AEC;
OS_SetArenaLo = 0x020D2C8C;
OS_GetInitArenaLo = 0x020D2BD0;
InitHeapSystem = 0x0201A7BC | 1;
sub_0200FBF4 = 0x0200FBF4 | 1;
OS_DisableIrqMask = 0x020D1204;
OS_SetIrqFunction = 0x020D1004;
OS_EnableIrqMask = 0x020D11D4;
Main_SetVBlankIntrCB = 0x0201A0FC | 1;
Main_SetHBlankIntrCB = 0x0201A120 | 1;
GfGfx_DisableEngineAPlanes = 0x02022C54 | 1;
GfGfx_DisableEngineBPlanes = 0x02022CBC | 1;
SetKeyRepeatTimers = 0x0201A71C | 1;
GfGfx_SwapDisplay = 0x02022D3C | 1;
GfGfx_SetBanks = 0x02022BE8 | 1;
BgConfig_Alloc = 0x0201AC88 | 1;
SetBothScreensModesAndDisable = 0x0201ACB0 | 1;
InitBgFromTemplate = 0x0201B1E4 | 1;
BgClearTilemapBufferAndCommit = 0x0201CAE0 | 1;
LoadUserFrameGfx1 = 0x0200E3DC | 1;
LoadFontPal0 = 0x02003030 | 1;
BG_ClearCharDataRange = 0x0201C1C4 | 1;
BG_SetMaskColor = 0x0201C2D8 | 1;
String_New = 0x02026354 | 1;
ResetAllTextPrinters = 0x02020080 | 1;
FillWindowPixelRect = 0x0201DA74 | 1;
DrawFrameAndWindow1 = 0x0200E580 | 1;
ReadMsgDataIntoString = 0x0200BB6C | 1;
AddTextPrinterParameterized = 0x020200A8 | 1;
String_Delete = 0x02026380 | 1;
GfGfx_BothDispOn = 0x02022D24 | 1;
SetMasterBrightnessNeutral = 0x0200FBE8 | 1;
SetBlendBrightness = 0x0200B4F0 | 1;
sub_02038D90 = 0x02038D90 | 1;
HandleDSLidAction = 0x0200110C | 1;
sub_02036144 = 0x02036144 | 1;
sub_02039AA4 = 0x02039AA4 | 1;
OS_WaitIrq = 0x020D0E6C;
RemoveWindow = 0x0201D520 | 1;
DestroyMsgData = 0x0200BB44 | 1;
OS_ResetSystem = 0x020D3B84;
AddWindow = 0x0201D4F8 | 1;

ov12_0224DD18 = 0x0224DD18 | 1;
ov12_0224D7EC = 0x0224D7EC | 1;
ov12_0224E130 = 0x0224E130 | 1;
ov12_0224DC0C = 0x0224DC0C | 1;
SortExecutionOrderBySpeed = 0x02257EC0 | 1;
SortMonsBySpeed = 0x02252D3C | 1;

ov12_0224B398 = 0x0224B398 | 1;
ov12_02250BBC = 0x02250BBC | 1;
BattleSystem_CheckMoveHit = 0x0224BCC4 | 1;
ov12_0224B498 = 0x0224B498 | 1;
ov12_0224BC2C = 0x0224BC2C | 1;

GetNaturalGiftType = 0x022558A4 | 1;

BattleContext_CheckMoveImprisoned = 0x02252C74 | 1;
BattleContext_CheckMoveUnuseableInGravity = 0x02252DC4 | 1;
BattleContext_CheckMoveHealBlocked = 0x02252DF8 | 1;

CanUseItemOnPokemon = 0x0208FD9C | 1;

BagApp_GetSaveRoamers = 0x021F992C | 1;

ov12_022506D4 = 0x022506D4 | 1;
ov12_02250A18 = 0x02250A18 | 1;

/* Stuff for Battle End Item */
sPickupTable1 = 0x0226C404;
sPickupTable2 = 0x0226C30C;
sPickupWeightTable = 0x0226CA4C;
sHoneyGatherChanceTable = 0x0226CA58;

sPlayerBattleCommands = 0x0226CA90;
BattleSystem_GetBattleOutcomeFlags = 0x0223BD14 | 1;
ov12_022639B8 = 0x022639B8 | 1;

FieldSystem_MapIsBattleTowerMultiPartnerSelectRoom = 0x02067584 | 1;
MoveId_GetFieldEffectId = 0x0207BCC0 | 1;
PartyMenu_ContextMenuAddFieldMove = 0x0207D0A0 | 1;
ClearFrameAndWindow2 = 0x0200E9BC | 1;
sub_0207B23C = 0x0207B23C | 1;
PartyMenu_SetContextMenuItems_GiveCapsule = 0x0207B1BC | 1;
sub_0207B1C8 = 0x0207B1C8 | 1;
PartyMenu_SetContextMenuItems_SpinTrade = 0x0207B32C | 1;
PartyMenu_SetContextMenuItems_BattleHallEntry = 0x0207B28C | 1;
sub_0207B2DC = 0x0207B2DC | 1;
sub_0207B200 = 0x0207B200 | 1;
PartyMenu_OpenContextMenu = 0x0207D0E4 | 1;
sub_0207D1C8 = 0x0207D1C8 | 1;
PartyMenu_PrintMessageOnWindow33 = 0x0207DAD8 | 1;
thunk_Sprite_SetPalIndex = 0x0200DD08 | 1;

FreeToHeapExplicit = 0x0201AB80 | 1;

BattleControllerPlayer_ItemInput = 0x0224AAF0 | 1;
BattleControllerPlayer_PokemonInput = 0x0224AC50 | 1;
BattleControllerPlayer_RunInput = 0x0224AC94 | 1;
BattleMon_GetMoveIndex = 0x02251C60 | 1;
CheckTruant = 0x02252C40 | 1;
CopyBattleMonToPartyMon = 0x02250C40 | 1;
LowestFlagNo = 0x020726E0 | 1;
Battler_GetRandomOpposingBattlerId = 0x02253DA0 | 1;
GetBattlerLearnedMoveCount = 0x02252EA8 | 1;
CanSwitchMon = 0x02252890 | 1;

ov12_0224DD74 = 0x0224DD74 | 1;
ov12_02261258 = 0x02261258 | 1;
//ov12_02252D14 = 0x02252D14 | 1;

BattleMessage_BufferNickname = 0x0223CDD0 | 1;
BattleMessage_BufferMove = 0x0223CDF4 | 1;
BattleMessage_BufferItem = 0x0223CE00 | 1;
BattleMessage_BufferNumber = 0x0223CE0C | 1;
BattleMessage_BufferNumbers = 0x0223CE24 | 1;
BattleMessage_BufferType = 0x0223CE50 | 1;
BattleMessage_BufferAbility = 0x0223CE5C | 1;
BattleMessage_BufferStat = 0x0223CE68 | 1;
BattleMessage_BufferStatus = 0x0223CE74 | 1;
BattleMessage_BufferPokemon = 0x0223CE80 | 1;
BattleMessage_BufferPoffin = 0x0223CEA4 | 1;
BattleMessage_BufferFlavorPreference = 0x0223CEA8 | 1;
BattleMessage_BufferTrainerClass = 0x0223CEB4 | 1;
BattleMessage_BufferTrainerName = 0x0223CECC | 1;
BattleMessage_BufferBoxName = 0x0223CEE4 | 1;
BufferItemNameWithIndefArticle = 0x0200C100 | 1;

_GetNpcTradeName = 0x02259C1C | 1;
MonSetTrainerMemo = 0x0208F260 | 1;
MapHeader_GetMapSec = 0x0203B36C | 1;

OS_DisableInterrupts = 0x020D3A38;
NNS_FndAllocFromExpHeapEx = 0x020B53A0;
OS_RestoreInterrupts = 0x020D3A4C;
sHeapInfo = 0x021D1584;
