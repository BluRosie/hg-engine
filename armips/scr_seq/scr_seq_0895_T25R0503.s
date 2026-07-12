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

.include "armips/scr_seq/event_T25R0503.inc"


// text archive to grab from: 003.txt

.create "build/a012/2_895", 0


scrdef scr_seq_T25R0503_000
scrdef_end

scr_seq_T25R0503_000:
	scrcmd_609
	lockall
	apply_movement obj_player, _0038
	wait_movement
	play_se SEQ_SE_GS_N_LINEAR
	wait 40, VAR_SPECIAL_x8004
	stop_se SEQ_SE_GS_N_LINEAR
	scrcmd_722 0, 1, 401, 14, 11
	setvar VAR_UNK_411F, 0
	releaseall
	end

	.align 4
_0038:

	step 15, 7
	step 12, 2
	step_end
	.align 4


.close
