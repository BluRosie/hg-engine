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

.include "asm/scr_seq/event_T01R0102.inc"


// text archive to grab from: 448.txt

.data


scrdef scr_seq_T01R0102_000
scrdef scr_seq_T01R0102_001
scrdef_end

scr_seq_T01R0102_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	wait_button
	closemsg
	releaseall
	end

scr_seq_T01R0102_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 1
	wait_button
	closemsg
	releaseall
	end
	.balign 4
