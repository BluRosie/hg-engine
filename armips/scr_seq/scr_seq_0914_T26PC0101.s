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

.include "armips/scr_seq/event_T26PC0101.inc"


// text archive to grab from: 607.txt

.create "build/a012/2_914", 0


scrdef scr_seq_T26PC0101_000
scrdef scr_seq_T26PC0101_001
scrdef scr_seq_T26PC0101_002
scrdef scr_seq_T26PC0101_003
scrdef scr_seq_T26PC0101_004
scrdef_end

scr_seq_T26PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T26PC0101_004:
	goto_if_defeated TRAINER_BEAUTY_CHARLOTTE, _00E6
	compare VAR_TEMP_x4007, 77
	goto_if_eq _00C4
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 3
	setvar VAR_TEMP_x4007, 77
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0068
	apply_movement obj_T26PC0101_gswoman2, _00FC
	goto _007D

_0068:
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _007D
	apply_movement obj_T26PC0101_gswoman2, _0104
_007D:
	wait_movement
	npc_msg 4
_0082:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00D5
	npc_msg 5
	closemsg
	trainer_battle TRAINER_BEAUTY_CHARLOTTE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00E0
	settrainerflag TRAINER_BEAUTY_CHARLOTTE
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00C4:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	goto _0082

_00D5:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00E0:
	white_out
	releaseall
	end

_00E6:
	simple_npc_msg 6
	end

	.align 4
_00FC:

	step 35, 1
	step_end
	.align 4
_0104:

	step 33, 1
	step_end
scr_seq_T26PC0101_001:
	simple_npc_msg 0
	end

scr_seq_T26PC0101_002:
	simple_npc_msg 1
	end

scr_seq_T26PC0101_003:
	simple_npc_msg 2
	end
	.align 4


.close
