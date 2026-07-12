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

.include "armips/scr_seq/event_D47PC0102.inc"


.create "build/a012/2_379", 0


	.byte 1
	.word scr_seq_D47PC0102_map_scripts_2-.-4
	.byte 4
	.halfword std_wifi_reset_state, 0
	.byte 0

scr_seq_D47PC0102_map_scripts_2:
	.halfword VAR_SCENE_POKECENTER_WIFI_BASEMENT, 0, std_teala_first_intro
	.halfword VAR_UNK_4137, 1, std_wifi_return
	.halfword 0

	.align 4


.close
