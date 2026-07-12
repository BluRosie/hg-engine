.nds
.thumb

.include "armips/include/scriptmacros.s"
.include "armips/include/flags.s"
.include "armips/include/soundeffects.s"
.include "armips/include/vars.s"

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

.include "armips/scr_seq/event_T26.inc"


.create "build/a012/2_684", 0


	.byte 2
	.halfword 13, 0
	.byte 1
	.word scr_seq_T26_map_scripts_2-.-4
	.byte 0

scr_seq_T26_map_scripts_2:
	.halfword VAR_MIDGAME_BADGES, 4, 3
	.halfword VAR_SCENE_LIGHTHOUSE_JASMINE, 2, 4
	.halfword 0

	.align 4


.close
