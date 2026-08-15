.include "asm/include/interop_macros.inc"

.include "asm/include/scriptmacros.inc"
.include "asm/include/flags.inc"
.include "asm/include/soundeffects.inc"
.include "asm/include/vars.inc"

.include "asm/include/battle_constants.inc"
.include "asm/include/events.inc"
.include "asm/include/game_stats.inc"
.include "asm/include/items.inc"
.include "asm/include/maps.inc"
.include "asm/include/map_sections.inc"
.include "asm/include/moves.inc"
.include "asm/include/movements.inc"
.include "asm/include/rankings.inc"
.include "asm/include/spawns.inc"
.include "asm/include/species.inc"
.include "asm/include/std_scripts.inc"
.include "asm/include/trainers.inc"

.include "data/scr_seq/event_T20.inc"


.data


	.byte 1
	.word scr_seq_T20_map_scripts_2-.-4
	.byte 2
	.hword 7, 0
	.byte 3
	.hword 10, 0
	.byte 0

scr_seq_T20_map_scripts_2:
	.hword VAR_SCENE_PLAYERS_HOUSE_1F, 1, 4
	.hword VAR_SCENE_NEW_BARK_TOWN_OW, 1, 9
	.hword 0

	.balign 4
