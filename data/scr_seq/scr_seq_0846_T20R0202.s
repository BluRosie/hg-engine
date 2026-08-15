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

.include "data/scr_seq/event_T20R0202.inc"


// text archive to grab from: 546.txt

.data


scrdef scr_seq_T20R0202_000
scrdef scr_seq_T20R0202_001
scrdef_end

scr_seq_T20R0202_000:
	scrcmd_609
	lockall
	play_se SEQ_SE_DP_PC_ON
	buffer_players_name 0
	npc_msg 0
	closemsg
	scrcmd_377 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _004B
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_376
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_004B:
	npc_msg 1
	wait_button
	closemsg
	releaseall
	end

scr_seq_T20R0202_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end
	.balign 4
