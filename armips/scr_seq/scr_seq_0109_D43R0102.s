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

.include "armips/scr_seq/event_D43R0102.inc"


// text archive to grab from: 003.txt

.create "build/a012/2_109", 0


scrdef scr_seq_D43R0102_000
scrdef scr_seq_D43R0102_001
scrdef_end

scr_seq_D43R0102_000:
	play_se SEQ_SE_GS_RAKKA01
	apply_movement obj_player, _0048
	scrcmd_374 obj_player
	wait_movement
	screen_shake 0, 1, 1, 8
	play_se SEQ_SE_DP_SUTYA2
	setvar VAR_UNK_40CA, 0
	end

scr_seq_D43R0102_001:
	compare VAR_UNK_40CA, 1
	goto_if_ne _0043
	make_object_visible obj_player
_0043:
	end

	.align 4
_0048:

	step 68, 1
	step_end
	.align 4


.close
