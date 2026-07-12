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


// text archive to grab from: 312.txt

.create "build/a012/2_167", 0


scrdef scr_seq_0167_000
scrdef scr_seq_0167_001
scrdef scr_seq_0167_002
scrdef_end

scr_seq_0167_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x400A, 0
	npc_msg 0
	goto _0040

scr_seq_0167_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x400A, 1
	npc_msg 1
	goto _0040

_0040:
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 271, 255, 0
	menu_item_add 11, 255, 1
	menu_item_add 12, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _01A7
	case 1, _008C
	goto _07D9

_008C:
	npc_msg 11
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	compare VAR_TEMP_x400A, 0
	goto_if_ne _00B4
	menu_item_add 272, 255, 0
	goto _00BC

_00B4:
	menu_item_add 278, 255, 7
_00BC:
	menu_item_add 273, 255, 1
	menu_item_add 274, 255, 2
	menu_item_add 277, 255, 3
	menu_item_add 275, 255, 4
	menu_item_add 276, 255, 5
	menu_item_add 13, 255, 6
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _015A
	case 1, _0165
	case 2, _0170
	case 3, _017B
	case 4, _0186
	case 5, _0191
	case 7, _019C
	npc_msg 2
	goto _0040

_015A:
	npc_msg 12
	goto _008C

_0165:
	npc_msg 14
	goto _008C

_0170:
	npc_msg 15
	goto _008C

_017B:
	npc_msg 18
	goto _008C

_0186:
	npc_msg 16
	goto _008C

_0191:
	npc_msg 17
	goto _008C

_019C:
	npc_msg 13
	goto _008C

_01A7:
	count_alive_mons_and_pc VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_lt _07E6
	npc_msg 3
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 273, 255, 0
	menu_item_add 274, 255, 1
	menu_item_add 277, 255, 4
	menu_item_add 275, 255, 2
	menu_item_add 276, 255, 3
	menu_item_add 13, 255, 5
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0249
	case 1, _0257
	case 2, _0265
	case 3, _0273
	case 4, _0281
	npc_msg 2
	goto _0040

_0249:
	setvar VAR_SPECIAL_x8000, 0
	goto _028F

_0257:
	setvar VAR_SPECIAL_x8000, 1
	goto _028F

_0265:
	setvar VAR_SPECIAL_x8000, 3
	goto _028F

_0273:
	setvar VAR_SPECIAL_x8000, 4
	goto _028F

_0281:
	setvar VAR_SPECIAL_x8000, 2
	goto _028F

_028F:
	buffer_pokeathlon_course_name 3, VAR_SPECIAL_x8000
	npc_msg 4
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01A7
	scrcmd_815 0
	npc_msg 5
	closemsg
	scrcmd_600
	call _04A3
	scrcmd_307 0, 0, 22, 9, 77
	call _045C
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0820
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	call _04DE
	apply_movement obj_player, _0848
	wait 40, VAR_SPECIAL_RESULT
	set_avatar_bits PLAYER_TRANSITION_POKEATHLON
	update_avatar_state
	wait_movement
	play_fanfare SEQ_ME_PT_NEW
	buffer_players_name 0
	npc_msg 8
	wait_fanfare
	wait 30, VAR_SPECIAL_RESULT
	npc_msg 6
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0828
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_309 77
	call _0766
	set_avatar_bits PLAYER_TRANSITION_WALKING
	update_avatar_state
	apply_movement obj_player, _0934
	wait_movement
	script_overlay_cmd 3, 0
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _08DC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_307 0, 0, 22, 9, 77
	call _045C
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _046F
	call _0505
	call _0540
	call _0464
	npc_msg 19
	buffer_players_name 0
	buffer_int 1, VAR_SPECIAL_x8001
	buffer_int 2, VAR_SPECIAL_x8002
	npc_msg 46
	npc_msg 20
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	compare VAR_SPECIAL_x8003, 0
	call_if_eq _05AB
	call _0567
	compare VAR_UNK_40E2, 1
	call_if_eq _05ED
	compare VAR_UNK_40E2, 2
	call_if_eq _05FA
	compare VAR_UNK_40E2, 3
	call_if_eq _0607
	call_if_set FLAG_HIDE_POKEATHLON_SHOES_SIGN, _063E
	call_if_set FLAG_HIDE_POKEATHLON_CLOTHES_SIGN, _0657
	call_if_set FLAG_HIDE_POKEATHLON_FLAG_SIGN, _0670
	call_if_set FLAG_HIDE_POKEATHLON_POKEGEAR_SIGN, _0689
	call_if_set FLAG_HIDE_POKEATHLON_BALL_SIGN, _06A2
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	scrcmd_606
	script_overlay_cmd 3, 1
	end

_045C:
	scrcmd_310 77
	scrcmd_308 77
	return

_0464:
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	return

_046F:
	script_overlay_cmd 3, 1
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _090C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	call _0540
	call _0464
	scrcmd_606
	releaseall
	end

_04A3:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x400A, 0
	goto_if_ne _04C8
	apply_movement obj_player, _0814
	goto _04D0

_04C8:
	apply_movement obj_player, _083C
_04D0:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	return

_04DE:
	compare VAR_TEMP_x400A, 0
	goto_if_ne _04F9
	apply_movement 0, _0914
	goto _0501

_04F9:
	apply_movement 10, _091C
_0501:
	wait_movement
	return

_0505:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x400A, 0
	goto_if_ne _052A
	apply_movement obj_player, _08EC
	goto _0532

_052A:
	apply_movement obj_player, _08FC
_0532:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	return

_0540:
	compare VAR_TEMP_x400A, 0
	goto_if_ne _055B
	apply_movement 0, _0924
	goto _0563

_055B:
	apply_movement 10, _0924
_0563:
	wait_movement
	return

_0567:
	compare VAR_SPECIAL_x8003, 0
	goto_if_ne _057F
	scrcmd_725 0, 10
	goto _05A9

_057F:
	compare VAR_SPECIAL_x8003, 1
	goto_if_ne _0597
	scrcmd_725 0, 5
	goto _05A9

_0597:
	compare VAR_SPECIAL_x8003, 3
	goto_if_ne _05A9
	scrcmd_725 1, 5
_05A9:
	return

_05AB:
	compare VAR_TEMP_x400A, 0
	goto_if_ne _05C4
	setvar VAR_TEMP_x4009, 100
	goto _05CA

_05C4:
	setvar VAR_TEMP_x4009, 300
_05CA:
	buffer_int 2, VAR_TEMP_x4009
	npc_msg 22
	give_athlete_points VAR_TEMP_x4009
	buffer_players_name 0
	buffer_int 2, VAR_TEMP_x4009
	npc_msg 20
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	add_special_game_stat 13
	return

_05ED:
	call_if_set FLAG_UNK_0EF, _0614
	return

_05FA:
	call_if_set FLAG_UNK_0F0, _0622
	return

_0607:
	call_if_set FLAG_UNK_0F1, _0630
	return

_0614:
	buffer_players_name 0
	npc_msg 23
	setvar VAR_UNK_40E2, 2
	return

_0622:
	buffer_players_name 0
	npc_msg 24
	setvar VAR_UNK_40E2, 3
	return

_0630:
	buffer_players_name 0
	npc_msg 25
	setvar VAR_UNK_40E2, 4
	return

_063E:
	scrcmd_724 16, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5000
	goto_if_lt _0655
	clearflag FLAG_HIDE_POKEATHLON_SHOES_SIGN
_0655:
	return

_0657:
	scrcmd_724 12, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 50
	goto_if_lt _066E
	clearflag FLAG_HIDE_POKEATHLON_CLOTHES_SIGN
_066E:
	return

_0670:
	scrcmd_724 17, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 200
	goto_if_lt _0687
	clearflag FLAG_HIDE_POKEATHLON_FLAG_SIGN
_0687:
	return

_0689:
	scrcmd_724 10, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 100
	goto_if_lt _06A0
	clearflag FLAG_HIDE_POKEATHLON_POKEGEAR_SIGN
_06A0:
	return

_06A2:
	scrcmd_724 0, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 50
	goto_if_lt _0764
	scrcmd_724 1, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 50
	goto_if_lt _0764
	scrcmd_724 2, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 50
	goto_if_lt _0764
	scrcmd_724 3, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 50
	goto_if_lt _0764
	scrcmd_724 4, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 50
	goto_if_lt _0764
	scrcmd_724 5, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 50
	goto_if_lt _0764
	scrcmd_724 6, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 50
	goto_if_lt _0764
	scrcmd_724 7, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 50
	goto_if_lt _0764
	scrcmd_724 8, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 50
	goto_if_lt _0764
	scrcmd_724 9, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 50
	goto_if_lt _0764
	clearflag FLAG_HIDE_POKEATHLON_BALL_SIGN
_0764:
	return

_0766:
	compare VAR_TEMP_x400A, 0
	goto_if_ne _0787
	pokeathlon 0, 0, VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT, VAR_SPECIAL_x8001, VAR_SPECIAL_x8002, VAR_SPECIAL_x8003
	goto _07D7

_0787:
	compare VAR_TEMP_x400A, 1
	goto_if_ne _07A8
	pokeathlon 0, 1, VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT, VAR_SPECIAL_x8001, VAR_SPECIAL_x8002, VAR_SPECIAL_x8003
	goto _07D7

_07A8:
	compare VAR_TEMP_x400A, 2
	goto_if_ne _07C9
	pokeathlon 1, 0, VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT, VAR_SPECIAL_x8001, VAR_SPECIAL_x8002, VAR_SPECIAL_x8003
	goto _07D7

_07C9:
	pokeathlon 1, 1, VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT, VAR_SPECIAL_x8001, VAR_SPECIAL_x8002, VAR_SPECIAL_x8003
_07D7:
	return

_07D9:
	touchscreen_menu_show
_07DB:
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_07E6:
	touchscreen_menu_show
	npc_msg 37
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0814:

	step 14, 1
	step 32, 1
	step_end
	.align 4
_0820:

	step 12, 2
	step_end
	.align 4
_0828:

	step 32, 1
	step 12, 1
	step 15, 1
	step 12, 1
	step_end
	.align 4
_083C:

	step 15, 1
	step 32, 1
	step_end
	.align 4
_0848:

	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 3, 1
	step 1, 1
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
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 63, 1
	step_end
	.align 4
_08DC:

	step 13, 1
	step 14, 1
	step 13, 1
	step_end
	.align 4
_08EC:

	step 13, 2
	step 15, 1
	step 32, 1
	step_end
	.align 4
_08FC:

	step 13, 2
	step 14, 1
	step 32, 1
	step_end
	.align 4
_090C:

	step 13, 3
	step_end
	.align 4
_0914:

	step 34, 1
	step_end
	.align 4
_091C:

	step 35, 1
	step_end
	.align 4
_0924:

	step 33, 1
	step_end
	.align 4
_0934:

	step 1, 1
	step_end
scr_seq_0167_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_40E2, 0
	goto_if_eq _0FE4
	setvar VAR_TEMP_x400A, 2
	npc_msg 26
_095A:
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 271, 255, 0
	menu_item_add 11, 255, 1
	menu_item_add 12, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0AB1
	case 1, _09A6
	goto _07D9

_09A6:
	npc_msg 11
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 272, 255, 0
	menu_item_add 342, 255, 1
	menu_item_add 343, 255, 2
	menu_item_add 344, 255, 3
	menu_item_add 345, 255, 4
	menu_item_add 346, 255, 6
	call_if_unset FLAG_HIDE_POKEATHLON_SUPREME_CUP_RECEPTIONIST, _0B93
	menu_item_add 13, 255, 7
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0A64
	case 1, _0A6F
	case 2, _0A7A
	case 3, _0A85
	case 4, _0A90
	case 6, _0A9B
	case 5, _0AA6
	npc_msg 2
	goto _095A

_0A64:
	npc_msg 39
	goto _09A6

_0A6F:
	npc_msg 40
	goto _09A6

_0A7A:
	npc_msg 41
	goto _09A6

_0A85:
	npc_msg 42
	goto _09A6

_0A90:
	npc_msg 43
	goto _09A6

_0A9B:
	npc_msg 44
	goto _09A6

_0AA6:
	npc_msg 45
	goto _09A6

_0AB1:
	count_alive_mons_and_pc VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_lt _07E6
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0AE1
	goto _07DB

_0AE1:
	setvar VAR_TEMP_x400A, 2
	npc_msg 3
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 342, 255, 0
	menu_item_add 343, 255, 1
	menu_item_add 344, 255, 2
	menu_item_add 345, 255, 3
	menu_item_add 346, 255, 4
	call_if_unset FLAG_HIDE_POKEATHLON_SUPREME_CUP_RECEPTIONIST, _0B93
	menu_item_add 12, 255, 6
	menu_exec
	copyvar VAR_TEMP_x400B, VAR_SPECIAL_RESULT
	switch VAR_SPECIAL_RESULT
	case 0, _0B9D
	case 1, _0BAB
	case 2, _0BB9
	case 3, _0BC7
	case 4, _0BD5
	case 5, _0BE3
	goto _07D9

_0B93:
	menu_item_add 279, 255, 5
	return

_0B9D:
	setvar VAR_SPECIAL_x8000, 5
	goto _0BF7

_0BAB:
	setvar VAR_SPECIAL_x8000, 6
	goto _0BF7

_0BB9:
	setvar VAR_SPECIAL_x8000, 7
	goto _0BF7

_0BC7:
	setvar VAR_SPECIAL_x8000, 8
	goto _0BF7

_0BD5:
	setvar VAR_SPECIAL_x8000, 9
	goto _0BF7

_0BE3:
	setvar VAR_SPECIAL_x8000, 10
	setvar VAR_TEMP_x400A, 3
	goto _0BF7

_0BF7:
	touchscreen_menu_hide
	npc_msg 27
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 14, 255, 0
	menu_item_add 15, 255, 1
	menu_item_add 13, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0C48
	case 1, _0C88
	goto _0AE1

_0C48:
	npc_msg 28
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0BF7
	scrcmd_226 40, VAR_TEMP_x400B, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0CC8
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0CD2
	goto _0CE3

_0C88:
	npc_msg 28
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0BF7
	scrcmd_227 40, VAR_TEMP_x400B, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0CC8
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0CD2
	goto _0CE3

_0CC8:
	scrcmd_283
	goto _0BF7

_0CD2:
	scrcmd_283
	touchscreen_menu_show
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	scrcmd_606
	end

_0CE3:
	scrcmd_815 0
	npc_msg 36
	wait 30, VAR_SPECIAL_x8004
	closemsg
	scrcmd_600
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0814
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_307 0, 0, 10, 9, 77
	call _045C
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0820
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement 2, _0914
	apply_movement obj_player, _0848
	wait 40, VAR_SPECIAL_RESULT
	set_avatar_bits PLAYER_TRANSITION_POKEATHLON
	update_avatar_state
	wait_movement
	play_fanfare SEQ_ME_PT_NEW
	buffer_players_name 0
	npc_msg 35
	wait 30, VAR_SPECIAL_x8004
	wait_fanfare
	buffer_pokeathlon_course_name 3, VAR_SPECIAL_x8000
	scrcmd_451 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0D96
	npc_msg 30
	wait 30, VAR_SPECIAL_x8004
	goto _0DD7

_0D96:
	compare VAR_TEMP_x4000, 1
	goto_if_ne _0DB2
	npc_msg 31
	wait 30, VAR_SPECIAL_x8004
	goto _0DD7

_0DB2:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0DCE
	npc_msg 32
	wait 30, VAR_SPECIAL_x8004
	goto _0DD7

_0DCE:
	npc_msg 33
	wait 30, VAR_SPECIAL_x8004
_0DD7:
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0FD4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_309 77
	scrcmd_257 239
	call _0766
	scrcmd_283
	set_avatar_bits PLAYER_TRANSITION_WALKING
	update_avatar_state
	apply_movement obj_player, _0934
	wait_movement
	script_overlay_cmd 3, 0
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0FDC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_307 0, 0, 10, 9, 77
	call _045C
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _08EC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement 2, _0924
	wait_movement
	call _0464
	npc_msg 19
	buffer_players_name 0
	buffer_int 1, VAR_SPECIAL_x8001
	buffer_int 2, VAR_SPECIAL_x8002
	compare VAR_SPECIAL_x8000, 10
	goto_if_lt _0EB5
	npc_msg 47
	goto _0EB8

_0EB5:
	npc_msg 46
_0EB8:
	npc_msg 20
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	compare VAR_SPECIAL_x8003, 1
	call_if_le _0F43
	call _0F8D
	compare VAR_UNK_40E2, 1
	call_if_eq _05ED
	compare VAR_UNK_40E2, 2
	call_if_eq _05FA
	compare VAR_UNK_40E2, 3
	call_if_eq _0607
	call_if_set FLAG_HIDE_POKEATHLON_SHOES_SIGN, _063E
	call_if_set FLAG_HIDE_POKEATHLON_CLOTHES_SIGN, _0657
	call_if_set FLAG_HIDE_POKEATHLON_FLAG_SIGN, _0670
	call_if_set FLAG_HIDE_POKEATHLON_POKEGEAR_SIGN, _0689
	call_if_set FLAG_HIDE_POKEATHLON_BALL_SIGN, _06A2
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	scrcmd_606
	script_overlay_cmd 3, 1
	end

_0F43:
	compare VAR_SPECIAL_x8003, 0
	goto_if_ne _0F68
	setvar VAR_TEMP_x4009, 500
	buffer_int 2, VAR_TEMP_x4009
	npc_msg 22
	add_special_game_stat 18
	goto _0F76

_0F68:
	setvar VAR_TEMP_x4009, 200
	buffer_int 2, VAR_TEMP_x4009
	npc_msg 34
_0F76:
	give_athlete_points VAR_TEMP_x4009
	buffer_players_name 0
	buffer_int 2, VAR_TEMP_x4009
	npc_msg 20
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	return

_0F8D:
	compare VAR_SPECIAL_x8003, 0
	goto_if_ne _0FA5
	scrcmd_725 0, 15
	goto _0FCF

_0FA5:
	compare VAR_SPECIAL_x8003, 1
	goto_if_ne _0FBD
	scrcmd_725 0, 10
	goto _0FCF

_0FBD:
	compare VAR_SPECIAL_x8003, 3
	goto_if_ne _0FCF
	scrcmd_725 1, 5
_0FCF:
	return

	.align 4
_0FD4:

	step 12, 2
	step_end
	.align 4
_0FDC:

	step 13, 2
	step_end
_0FE4:
	npc_msg 38
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
