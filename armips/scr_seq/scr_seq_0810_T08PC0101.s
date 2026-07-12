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

.include "armips/scr_seq/event_T08PC0101.inc"


// text archive to grab from: 515.txt

.create "build/a012/2_810", 0


scrdef scr_seq_T08PC0101_000
scrdef scr_seq_T08PC0101_001
scrdef scr_seq_T08PC0101_002
scrdef scr_seq_T08PC0101_003
scrdef_end

scr_seq_T08PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T08PC0101_001:
	simple_npc_msg 0
	end

scr_seq_T08PC0101_002:
	simple_npc_msg 1
	end

scr_seq_T08PC0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 2
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _006E
	apply_movement obj_T08PC0101_gsgirl1, _009C
	goto _0091

_006E:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0089
	apply_movement obj_T08PC0101_gsgirl1, _00C0
	goto _0091

_0089:
	apply_movement obj_T08PC0101_gsgirl1, _00E4
_0091:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_009C:

	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step_end
	.align 4
_00C0:

	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step_end
	.align 4
_00E4:

	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step 1, 1
	step 3, 1
	step 0, 1
	step 2, 1
	step_end
	.align 4


.close
