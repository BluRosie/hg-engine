CheckSideAbility = 0x1AA64 + 0x022378C1;
GetTargetAbility = 0x1AF0C + 0x022378C1;
CheckDefenceAbility = 0x1AF74 + 0x022378C1;
BattlePokemonParamGet = 0x17520 + 0x022378C1;
BattleWorkMonDataGet = 0x20914 + 0x022378C1;
ItemDataGet = 0x205B4 + 0x022378C1;
BattleTypeGet = 0x2F20 + 0x022378C1;
CheckFieldMoveEffect = 0x1B428 + 0x022378C1;
CheckAttackCount = 0x1A9A0 + 0x022378C1;
BattleWorkEnemyClientNoGet = 0x32F8 + 0x022378C1;
BattleWorkRandGet = 0x44D8 + 0x022378C1;
BattleWorkPokemonParamGet = 0x2FC0 + 0x022378C1;
BattleWorkPokeCountGet = 0x2F74 + 0x022378C1;
BattleWorkZukanWorkGet = 0x307C + 0x022378C1;
BattleWorkClientSetMaxGet = 0x2F30 + 0x022378C1;
ST_ServerAgiCalc = 0x18388 + 0x022378C1;
Sub_GaugeObjHeadGet = 0x2E2F8 + 0x022378C1;
ST_ServerSelectWazaGet = 0x1AA30 + 0x022378C1;
ST_ServerNamakeCheck = 0x1B380 + 0x022378C1;
SCIO_BlankMessage = 0x2CA30 + 0x022378C1;

ST_ServerSequenceLoad = 0x172DC + 0x022378C1;
ServerCriticalMessage = 0x166BC+ 0x022378C1;
ServerWazaStatusMessage = 0x166D8 + 0x022378C1;
ST_ServerAddStatusCheck = 0x18BD0 + 0x022378C1;
ServerIkariCheck = 0x1672C + 0x022378C1;
ST_ServerWazaHitTokuseiCheck_Old = 0x1C544 + 0x022378C1;
ServerHirumaseruCheck = 0x167B8 + 0x022378C1;
ST_ServerWaruagakiCheck = 0x19F2C + 0x022378C1;
ServerSenseiCheck = 0x143E4 + 0x022378C1;
ServerStatusCheck = 0x13C68 + 0x022378C1;
ServerBadgeCheck = 0x13610 + 0x022378C1;
ServerPPCheck = 0x1393C + 0x022378C1;
ServerDefenceCheck = 0x13AD8 + 0x022378C1;
ServerWazaKoyuuCheck = 0x14944 + 0x022378C1;
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
GF_ASSERT = 0x0202551C + 1;
SetPokemonGet = 0x0202A434 |1;
SetPokemonSee = 0x0202A36C |1;
ArchiveDataLoadMalloc = 0x02007524 | 1;
ArchiveDataLoad = 0x02007509;
ArchiveDataLoadMallocOfs = 0x0200757C | 1;

/*Pokemon*/
PokemonParam_AllocWork = 0x0206DD2C | 1;
PokeParaInit = 0x0206DCE4 |1;
PokeParaSet = 0x0206DE38 |1;
PokeCopyPPtoPP = 0x0207188C |1;
GetMonData = 0x0206E540 |1;
PokePasoParaGet = 0x0206E640 |1;
SetMonData = 0x0206EC40 |1;
PokeStatusPokeParamGet = 0x0208A520 | 1;
PokeParaCalc = 0x0206E250 | 1;
PokeParaSpeabiSet = 0x020722D4 |1;
PokeFuseiFormNoCheck = 0x02070438 |1;
PokePasoParaUnknownFormGet = 0x02070DA0 |1;
PokeParty_GetMemberPointer = 0x02074644 |1;
PokeFormNoPersonalParaGet = 0x0206FBC4 |1;
PokePasoSexGet = 0x0206FF90 |1;
PokeSexGetMonsNo = 0x0206FFC8 |1;
PokePasoParaFastModeOn = 0x0206DDD8 |1;
PokePasoParaFastModeOff = 0x0206DE00 |1;
PokePasoParaPut = 0x0206ED70 |1;
SodateyaWork_GetPokePasoPointer = 0x0206BDB0 |1;
PokeParaPersonalRndChange = 0x0207235C | 1;
PokeNatureGet = 0x0206FE2C |1;
PokeSetMove = 0x020712D8 |1;

GetBagSaveData = 0x5AC + 0x021F9381;
SaveData_GetRepelPtr = 0x0202DB05;
SaveData_GetEventPtr = 0x020503D0 | 1;
SaveData_GetDexPtr = 0x0202A634 |1;
SaveData_GetPlayerPartyPtr = 0x02074904 |1;


GetVarAdrs = 0x020504A4 | 1;
EncDataSave_GetSaveDataPtr = 0x0202D9C4 | 1;
VarGet = 0x02040374 |1;
GF_CpuCopy8 = 0x0204D450;
GetEvScriptWorkMemberAdrs = 0x020402F0 |1;
WORDSET_RegisterAbilityName = 0x0200C060|1;
EventSet_Script = 0x0203FE74 |1;

sys_AllocMemory = 0x0201AA8C | 1;
sys_FreeMemoryEz = 0x0201AB0C | 1;

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
PutWindows = 0x0201D578 |1;

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

OAM_ObjectAdd_S = 0x0200D734 |1;
OAM_ObjectUpdate = 0x0200DC0C |1;
OAM_FreeResourceChar = 0x0200D958 |1;
OAM_FreeResourceCell = 0x0200D978 |1;
OAM_FreeResourceCellAnm = 0x0200D988 |1;
OAM_FreeResourcePltt = 0x0200D968 |1;
CATS_ActorPointerDelete_S = 0x0200D9DC |1;

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

Snd_SePlay = 0x0200604C | 1;