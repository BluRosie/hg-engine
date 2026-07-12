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

.include "armips/scr_seq/event_D15R0103.inc"


// text archive to grab from: 056.txt

.create "build/a012/2_018", 0


scrdef scr_seq_D15R0103_000
scrdef scr_seq_D15R0103_001
scrdef scr_seq_D15R0103_002
scrdef_end

scr_seq_D15R0103_000:
	clearflag FLAG_UNK_1A3
	goto_if_set FLAG_UNK_078, _001F
	end

_001F:
	setflag FLAG_UNK_1A3
	end

scr_seq_D15R0103_001:
	scrcmd_609
	lockall
	setvar VAR_UNK_40A4, 1
	apply_movement obj_player, _00B4
	wait_movement
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	apply_movement 241, _00C0
	wait_movement
	apply_movement obj_D15R0103_chourou, _00D0
	wait_movement
	npc_msg 0
	closemsg
	wait 15, VAR_SPECIAL_RESULT
	callstd std_play_rival_outro_music
	buffer_rivals_name 0
	apply_movement obj_D15R0103_gsrivel, _00D8
	wait_movement
	npc_msg 1
	closemsg
	wait 15, VAR_SPECIAL_RESULT
	buffer_rivals_name 0
	npc_msg 2
	wait_button
	closemsg
	play_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_D15R0103_gsrivel, _00E0
	wait_movement
	hide_person obj_D15R0103_gsrivel
	setflag FLAG_UNK_078
	callstd std_fade_end_rival_outro_music
	apply_movement 241, _00C8
	wait_movement
	scrcmd_103
	releaseall
	end

	.align 4
_00B4:

	step 75, 1
	step 63, 1
	step_end
	.align 4
_00C0:

	step 12, 5
	step_end
	.align 4
_00C8:

	step 13, 5
	step_end
	.align 4
_00D0:

	step 33, 2
	step_end
	.align 4
_00D8:

	step 13, 1
	step_end
	.align 4
_00E0:

	step 2, 4
	step 0, 4
	step 3, 4
	step 1, 4
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step_end
scr_seq_D15R0103_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_076, _0197
	npc_msg 3
	closemsg
	trainer_battle TRAINER_ELDER_LI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01A2
	npc_msg 4
	giveitem_no_check ITEM_TM070, 1
	setflag FLAG_UNK_076
	setflag FLAG_HIDE_VIOLET_GYM_GYM_GUY_AFTER_SPROUT
	clearflag FLAG_HIDE_VIOLET_GYM_GYM_GUY_BEFORE_SPROUT
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0197:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01A2:
	white_out
	releaseall
	end
	.align 4


.close
