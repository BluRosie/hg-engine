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

.include "armips/scr_seq/event_D49R0106.inc"


// text archive to grab from: 142.txt

.create "build/a012/2_127", 0


scrdef scr_seq_D49R0106_000
scrdef scr_seq_D49R0106_001
scrdef scr_seq_D49R0106_002
scrdef scr_seq_D49R0106_003
scrdef scr_seq_D49R0106_004
scrdef scr_seq_D49R0106_005
scrdef scr_seq_D49R0106_006
scrdef scr_seq_D49R0106_007
scrdef scr_seq_D49R0106_008
scrdef_end

scr_seq_D49R0106_008:
	goto_if_set FLAG_UNK_0F1, _0039
	setvar VAR_TEMP_x400D, 0
	end

_0039:
	setvar VAR_TEMP_x400D, 1
	end

scr_seq_D49R0106_007:
	compare VAR_TEMP_x400D, 1
	goto_if_ne _0060
	move_person_facing obj_D49R0106_pcwoman2, 6, 1, 3, DIR_EAST
	setvar VAR_TEMP_x400D, 0
_0060:
	end

scr_seq_D49R0106_000:
	simple_npc_msg 0
	end

scr_seq_D49R0106_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0F1, _0093
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0093:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0106_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 3
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03AC
_00BC:
	npc_msg 6
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 308, 255, 0
	menu_item_add 309, 255, 1
	menu_item_add 310, 255, 2
	menu_item_add 311, 255, 3
	menu_item_add 312, 255, 4
	menu_item_add 135, 255, 5
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 5, _03AC
	npc_msg 7
	case 0, _014D
	case 1, _0187
	case 2, _01C1
	case 3, _01FB
	goto _0235

_014D:
	setvar VAR_TEMP_x4007, 0
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 298, 255, 0
	menu_item_add 299, 255, 1
	menu_item_add 304, 255, 6
	menu_item_add 13, 255, 10
	menu_exec
	goto _026F

_0187:
	setvar VAR_TEMP_x4007, 1
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 301, 255, 3
	menu_item_add 300, 255, 2
	menu_item_add 307, 255, 9
	menu_item_add 13, 255, 10
	menu_exec
	goto _026F

_01C1:
	setvar VAR_TEMP_x4007, 2
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 306, 255, 8
	menu_item_add 307, 255, 9
	menu_item_add 299, 255, 1
	menu_item_add 13, 255, 10
	menu_exec
	goto _026F

_01FB:
	setvar VAR_TEMP_x4007, 3
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 305, 255, 7
	menu_item_add 304, 255, 6
	menu_item_add 301, 255, 3
	menu_item_add 13, 255, 10
	menu_exec
	goto _026F

_0235:
	setvar VAR_TEMP_x4007, 4
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 303, 255, 5
	menu_item_add 302, 255, 4
	menu_item_add 298, 255, 0
	menu_item_add 13, 255, 10
	menu_exec
	goto _026F

_026F:
	switch VAR_SPECIAL_RESULT
	case 0, _02FF
	case 1, _030A
	case 2, _0315
	case 3, _0320
	case 4, _032B
	case 5, _0336
	case 6, _0341
	case 7, _034C
	case 8, _0357
	case 9, _0362
	goto _00BC

_02FF:
	npc_msg 8
	goto _036D

_030A:
	npc_msg 9
	goto _036D

_0315:
	npc_msg 10
	goto _036D

_0320:
	npc_msg 11
	goto _036D

_032B:
	npc_msg 12
	goto _036D

_0336:
	npc_msg 13
	goto _036D

_0341:
	npc_msg 14
	goto _036D

_034C:
	npc_msg 15
	goto _036D

_0357:
	npc_msg 16
	goto _036D

_0362:
	npc_msg 17
	goto _036D

_036D:
	npc_msg 7
	compare VAR_TEMP_x4007, 0
	goto_if_eq _014D
	compare VAR_TEMP_x4007, 1
	goto_if_eq _0187
	compare VAR_TEMP_x4007, 2
	goto_if_eq _01C1
	compare VAR_TEMP_x4007, 3
	goto_if_eq _01FB
	goto _0235

_03AC:
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

scr_seq_D49R0106_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _03E0
	apply_movement obj_D49R0106_follower_mon_static_dodrio, _043C
	goto _041E

_03E0:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _03FB
	apply_movement obj_D49R0106_follower_mon_static_dodrio, _0434
	goto _041E

_03FB:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0416
	apply_movement obj_D49R0106_follower_mon_static_dodrio, _044C
	goto _041E

_0416:
	apply_movement obj_D49R0106_follower_mon_static_dodrio, _0444
_041E:
	wait_movement
	play_cry SPECIES_DODRIO, 0
	npc_msg 24
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0434:

	step 48, 2
	step_end
	.align 4
_043C:

	step 49, 2
	step_end
	.align 4
_0444:

	step 50, 2
	step_end
	.align 4
_044C:

	step 51, 2
	step_end
scr_seq_D49R0106_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_players_name 0
	npc_msg 23
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_712 2
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_D49R0106_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_HIDE_POKEATHLON_POKEGEAR_SIGN, _04A3
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04A3:
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49R0106_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_HIDE_POKEATHLON_BALL_SIGN, _04CC
	npc_msg 21
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04CC:
	npc_msg 22
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
