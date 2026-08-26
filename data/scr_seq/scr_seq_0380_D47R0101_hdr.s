.include "asm/include/interop_macros.inc"

.include "asm/include/scriptmacros.inc"
.include "asm/include/flags.inc"
.include "asm/include/soundeffects.inc"
.include "asm/include/vars.inc"

.include "asm/include/events.inc"
.include "asm/include/game_stats.inc"
.include "asm/include/maps.inc"
.include "asm/include/map_sections.inc"
.include "asm/include/movements.inc"
.include "asm/include/rankings.inc"
.include "asm/include/spawns.inc"
.include "asm/include/std_scripts.inc"
.include "asm/include/trainers.inc"

#include "constants/item.h"
#include "constants/moves.h"
#include "constants/species.h"

.include "data/scr_seq/include/event_D47R0101.inc"


.data


	.byte 1
	.word scr_seq_D47R0101_map_scripts_2-.-4
	.byte 0

scr_seq_D47R0101_map_scripts_2:
	.hword VAR_SCENE_SAFARI_ZONE_ENTRANCE, 1, 7
	.hword VAR_SCENE_SAFARI_ZONE_ENTRANCE, 3, 7
	.hword VAR_SCENE_SAFARI_ZONE_ENTRANCE, 2, 8
	.hword VAR_UNK_4057, 1, 9
	.hword VAR_UNK_4057, 4, 10
	.hword 0

	.balign 4
