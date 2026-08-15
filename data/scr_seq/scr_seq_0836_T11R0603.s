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

.include "data/scr_seq/event_T11R0603.inc"


// text archive to grab from: 003.txt

.data


scrdef scr_seq_T11R0603_000
scrdef_end

scr_seq_T11R0603_000:
	scrcmd_609
	lockall
	apply_movement obj_player, _0038
	wait_movement
	play_se SEQ_SE_GS_N_LINEAR
	wait 40, VAR_SPECIAL_x8004
	stop_se SEQ_SE_GS_N_LINEAR
	scrcmd_722 1, 1, 198, 17, 11
	setvar VAR_UNK_411E, 0
	releaseall
	end

	.byte 0x00, 0x00
	.balign 4
_0038:

	step 14, 7
	step 12, 2
	step_end
	.byte 0x02, 0x00, 0x00, 0x00
	.balign 4
