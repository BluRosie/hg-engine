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

.include "armips/scr_seq/event_T07R0701.inc"


// text archive to grab from: 510.txt

.create "build/a012/2_805", 0


scrdef scr_seq_T07R0701_000
scrdef scr_seq_T07R0701_001
scrdef scr_seq_T07R0701_002
scrdef scr_seq_T07R0701_003
scrdef scr_seq_T07R0701_004
scrdef scr_seq_T07R0701_005
scrdef scr_seq_T07R0701_006
scrdef_end

scr_seq_T07R0701_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 6
	closemsg
	apply_movement obj_T07R0701_leader4, _003C
	wait_movement
	releaseall
	end

	.align 4
_003C:

	step 35, 1
	step_end
scr_seq_T07R0701_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0074
	npc_msg 4
	closemsg
	apply_movement obj_T07R0701_gswoman1, _00D8
	wait_movement
	releaseall
	end

_0074:
	npc_msg 5
	closemsg
	apply_movement obj_T07R0701_gswoman1, _00D8
	wait_movement
	releaseall
	end

scr_seq_T07R0701_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 1
	closemsg
	apply_movement obj_T07R0701_gsbigman_3, _00E0
	wait_movement
	releaseall
	end

scr_seq_T07R0701_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	closemsg
	apply_movement obj_T07R0701_gsbigman_2, _00E0
	wait_movement
	releaseall
	end

scr_seq_T07R0701_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	closemsg
	apply_movement obj_T07R0701_gsbigman, _00D8
	wait_movement
	releaseall
	end

	.align 4
_00D8:

	step 33, 1
	step_end
	.align 4
_00E0:

	step 32, 1
	step_end
scr_seq_T07R0701_000:
	simple_npc_msg 0
	end

scr_seq_T07R0701_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
