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


// text archive to grab from: 267.txt

.create "build/a012/2_164", 0


scrdef scr_seq_0164_000
scrdef scr_seq_0164_001
scrdef scr_seq_0164_002
scrdef scr_seq_0164_003
scrdef scr_seq_0164_004
scrdef scr_seq_0164_005
scrdef_end

scr_seq_0164_000:
	scrcmd_609
	lockall
	npc_msg 0
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0100
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 1
	giveitem_no_check ITEM_PAL_PAD, 1
	goto _005C

_005C:
	npc_msg 2
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 156, 255, 0
	menu_item_add 157, 255, 1
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _00A5
	case 1, _00EE
	goto _00EE

_00A5:
	npc_msg 3
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 158, 255, 0
	menu_item_add 157, 255, 1
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _00A5
	case 1, _00EE
	goto _00EE

_00EE:
	setvar VAR_SCENE_POKECENTER_WIFI_BASEMENT, 1
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0100:

	step 32, 1
	step 63, 2
	step 12, 4
	step 14, 1
	step 0, 1
	step 63, 2
	step_end
scr_seq_0164_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _014F
	goto _0144

_0144:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_014F:
	npc_msg 6
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 156, 255, 0
	menu_item_add 157, 255, 1
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _0198
	case 1, _0144
	goto _0144

_0198:
	npc_msg 3
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 158, 255, 0
	menu_item_add 157, 255, 1
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _0198
	case 1, _0144
	goto _0144

scr_seq_0164_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	party_legal_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04EC
	get_player_state VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _031B
	get_party_count VAR_TEMP_x4009
	setvar VAR_TEMP_x400A, 0
_0215:
	get_partymon_species VAR_TEMP_x400A, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 172
	goto_if_ne _0241
	get_partymon_forme VAR_TEMP_x400A, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0241
	goto _04F8

_0241:
	addvar VAR_TEMP_x400A, 1
	compare VAR_TEMP_x400A, VAR_TEMP_x4009
	goto_if_ge _025A
	goto _0215

_025A:
	goto _0262

_0262:
	npc_msg 7
_0265:
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 14, 255, 0
	menu_item_add 15, 255, 1
	menu_item_add 16, 255, 2
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _02BE
	case 1, _02B3
	goto _0326

_02B3:
	npc_msg 13
	goto _0265

_02BE:
	scrcmd_565 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02D7
	goto _0331

_02D7:
	scrcmd_564 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0310
	goto _02F0

_02F0:
	npc_msg 11
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0331
	goto _0326

_0310:
	npc_msg 12
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_031B:
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0326:
	npc_msg 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0331:
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0356
	goto _0326

_0350:
	callstd std_bag_is_full_griseous_orb
	end

_0356:
	comm_sanitize_party VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _0350
	npc_msg 10
	closemsg
	scrcmd_600
	heal_party
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_815 0
	apply_movement obj_player, _0474
	wait_movement
	goto _038C

_038C:
	scrcmd_307 0, 0, 9, 5, 77
	call _03E0
	apply_movement obj_player, _0480
	wait_movement
	call _03E8
	apply_movement obj_player, _0488
	wait_movement
	scrcmd_307 0, 0, 9, 2, 77
	call _03E0
	apply_movement obj_player, _0490
	wait_movement
	call _03E8
	goto _03F3

_03E0:
	scrcmd_310 77
	scrcmd_308 77
	return

_03E8:
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	return

_03F3:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_436
	scrcmd_565 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _041A
	scrcmd_152
	goto _041C

_041A:
	scrcmd_152
_041C:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	scrcmd_307 0, 0, 8, 2, 77
	call _03E0
	apply_movement obj_player, _04A8
	wait_movement
	call _03E8
	scrcmd_307 0, 0, 8, 5, 77
	call _03E0
	apply_movement obj_player, _04C0
	wait_movement
	call _03E8
	scrcmd_606
	releaseall
	end

	.align 4
_0474:

	step 15, 1
	step 32, 1
	step_end
	.align 4
_0480:

	step 12, 2
	step_end
	.align 4
_0488:

	step 12, 1
	step_end
	.align 4
_0490:

	step 12, 1
	step 69, 1
	step_end
	.align 4
_049C:

	step 12, 2
	step 69, 1
	step_end
	.align 4
_04A8:

	step 1, 1
	step 70, 1
	step 13, 2
	step_end
	.align 4
_04C0:

	step 13, 2
	step_end
	.align 4
_04C8:

	step 35, 1
	step_end
	.align 4
_04D0:

	step 12, 1
	step 15, 1
	step 32, 1
	step_end
	.align 4
_04E0:

	step 12, 1
	step 69, 1
	step_end
_04EC:
	callstd std_party_illegal
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_04F8:
	nop_var_490 VAR_TEMP_x4001
	nop_var_490 VAR_TEMP_x4002
	compare VAR_UNK_412F, 0
	goto_if_ne _0516
	npc_msg 29
	goto _0519

_0516:
	npc_msg 28
_0519:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_0164_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_player_state VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0709
	scrcmd_691 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0560
	scrcmd_446 VAR_UNK_4056
	copyvar VAR_UNK_4055, VAR_SPECIAL_LAST_TALKED
	npc_msg 18
	goto _056B

_0560:
	npc_msg 26
	goto _05C4

_056B:
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 23, 255, 0
	menu_item_add 24, 255, 1
	menu_item_add 25, 255, 2
	menu_exec
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _05D7
	case 1, _05CC
	goto _05B9

_05B9:
	npc_msg 21
	goto _05C4

_05C4:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05CC:
	npc_msg 22
	goto _056B

_05D7:
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _05B9
	npc_msg 20
	closemsg
	scrcmd_600
	heal_party
	scrcmd_815 0
	apply_movement obj_player, _0474
	wait_movement
	scrcmd_307 0, 0, 5, 5, 77
	call _03E0
	apply_movement VAR_SPECIAL_LAST_TALKED, _04C8
	apply_movement obj_player, _0480
	wait_movement
	call _03E8
	apply_movement VAR_SPECIAL_LAST_TALKED, _04D0
	wait_movement
	scrcmd_307 0, 0, 5, 2, 77
	call _03E0
	apply_movement obj_player, _049C
	apply_movement VAR_SPECIAL_LAST_TALKED, _04E0
	wait_movement
	call _03E8
	setvar VAR_TEMP_x4003, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_HIROBA, 0, 20, 11, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0709:
	npc_msg 27
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_0164_004:
	scrcmd_609
	lockall
	scrcmd_307 0, 0, 5, 2, 77
	call _03E0
	apply_movement obj_player, _04A8
	wait_movement
	call _03E8
	scrcmd_307 0, 0, 5, 5, 77
	call _03E0
	apply_movement obj_player, _04C0
	wait_movement
	call _03E8
	scrcmd_606
	setvar VAR_UNK_4137, 0
	releaseall
	end

scr_seq_0164_005:
	debugwatch VAR_UNK_4143
	setvar VAR_UNK_414F, 0
	setvar VAR_UNK_4150, 0
	setvar VAR_UNK_4143, 0
	setvar VAR_UNK_4144, 0
	setvar VAR_UNK_4148, 0
	setvar VAR_UNK_4146, 0
	setvar VAR_UNK_4149, 0
	setvar VAR_UNK_414B, 0
	setvar VAR_UNK_4142, 0
	setvar VAR_UNK_4147, 0
	setvar VAR_UNK_4145, 0
	setvar VAR_UNK_414A, 0
	debugwatch VAR_UNK_4143
	end
	.align 4


.close
