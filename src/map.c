#include "../include/types.h"
#include "../include/bag.h"
#include "../include/battle.h"
#include "../include/config.h"
#include "../include/debug.h"
#include "../include/overlay.h"
#include "../include/pokemon.h"
#include "../include/rtc.h"
#include "../include/save.h"
#include "../include/script.h"
#include "../include/sound.h"
#include "../include/constants/ability.h"
#include "../include/constants/file.h"
#include "../include/constants/game.h"
#include "../include/constants/hold_item_effects.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"
#include "../include/constants/sndseq.h"
#include "../include/constants/species.h"
#include "../include/constants/weather_numbers.h"
#include "../include/constants/generated/learnsets.h"

typedef struct MapHeader {
    u8 wildEncounterBank;  // fielddata/encountdata/[gs]_enc_data.naix
    u8 areaDataBank;       // fielddata/areadata/area_data.naix
    u16 moveModelBank : 4; // fielddata/mm_list/move_model_list.naix
    u16 worldMapX : 6;
    u16 worldMapY : 6;
    u16 matrixId;          // fielddata/mapmatrix/map_matrix.naix
    u16 scriptsBank;       // fielddata/script/scr_seq_release.naix
    u16 scriptHeaderBank;  // fielddata/script/scr_seq_release.naix
    u16 msgBank;           // msgdata/msg.naix
    u16 dayMusicId;        // data/sound/gs_sound_data.sdat
    u16 nightMusicId;      // data/sound/gs_sound_data.sdat
    u16 eventsBank;        // fielddata/eventdata/zone_event_release.naix
    u16 mapsec : 8;
    u16 areaIcon : 4;
    u16 momCallIntroParam : 4;
    u32 isKanto : 1;
    u32 weather : 7;
    u32 mapType : 4;
    u32 cameraType : 6;
    u32 followMode : 2;
    u32 battleBg : 5;
    u32 bikeAllowed : 1;
    u32 runningAllowed_Unused : 1;
    u32 escapeRopeAllowed : 1;
    u32 flyAllowed : 1;
    u32 outgoingCalls : 1;
    u32 incomingCalls : 1;
    u32 radioSignal : 1;
} MapHeader;

extern const MapHeader sMapHeaders[];

u32 LONG_CALL MapNumberBoundsCheck(u32 mapId);

Terrain LONG_CALL FieldSystem_GetTerrainFromStandingTile(FieldSystem *fieldSystem, BattleBg battleBg) {
    return TERRAIN_ELECTRIC_TERRAIN; // TERRAIN_ELECTRIC_TERRAIN;
}

BattleBg LONG_CALL MapHeader_GetBattleBg(u32 mapId) {
    mapId = MapNumberBoundsCheck(mapId);
    debug_printf("MapHeader_GetBattleBg: mapId=%d, returning bgId=%d (BATTLE_BG_ELECTRIC_TERRAIN)\n", mapId, BATTLE_BG_ELECTRIC_TERRAIN);
    return BATTLE_BG_ELECTRIC_TERRAIN;
    //return (BattleBg)sMapHeaders[mapId].battleBg;
}
