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

.include "data/scr_seq/event_T21PC0101.inc"


.data


	.byte 3
	.hword std_wireless_reset_state, 0
	.byte 1
	.word scr_seq_T21PC0101_map_scripts_2-.-4
	.byte 0

scr_seq_T21PC0101_map_scripts_2:
	.hword VAR_UNK_4133, 2, std_union_room_return
	.hword VAR_UNK_4133, 1, std_wireless_colosseum_return
	.hword 0

	.balign 4
