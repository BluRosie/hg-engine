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

.include "armips/scr_seq/event_R27.inc"


// text archive to grab from: 369.txt

.create "build/a012/2_221", 0


scrdef scr_seq_R27_000
scrdef scr_seq_R27_001
scrdef scr_seq_R27_002
scrdef scr_seq_R27_003
scrdef scr_seq_R27_004
scrdef_end

scr_seq_R27_003:
	goto_if_set FLAG_UNK_168, _0026
	scrcmd_804 1
	end

_0026:
	end

scr_seq_R27_000:
	simple_npc_msg 1
	end

scr_seq_R27_001:
	scrcmd_609
	lockall
	apply_movement obj_R27_gsbigman, _00A8
	wait_movement
	npc_msg 0
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 402
	goto_if_ne _006F
	apply_movement obj_R27_gsbigman, _00C4
	goto _0092

_006F:
	compare VAR_TEMP_x4001, 403
	goto_if_ne _008A
	apply_movement obj_R27_gsbigman, _00B0
	goto _0092

_008A:
	apply_movement obj_R27_gsbigman, _00B8
_0092:
	wait_movement
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	setvar VAR_UNK_408A, 1
	end

	.align 4
_00A8:

	step 75, 1
	step_end
	.align 4
_00B0:

	step 14, 4
	step_end
	.align 4
_00B8:

	step 13, 1
	step 14, 4
	step_end
	.align 4
_00C4:

	step 12, 1
	step 14, 4
	step_end
scr_seq_R27_002:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 2, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R27_004:
	direction_signpost 3, 1, 5, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end
	.align 4


.close
