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

.include "armips/scr_seq/event_D47R0101.inc"


// text archive to grab from: 135.txt

.create "build/a012/2_119", 0


scrdef scr_seq_D47R0101_000
scrdef scr_seq_D47R0101_001
scrdef scr_seq_D47R0101_002
scrdef scr_seq_D47R0101_003
scrdef scr_seq_D47R0101_004
scrdef scr_seq_D47R0101_005
scrdef scr_seq_D47R0101_006
scrdef scr_seq_D47R0101_007
scrdef scr_seq_D47R0101_008
scrdef scr_seq_D47R0101_009
scrdef scr_seq_D47R0101_010
scrdef scr_seq_D47R0101_011
scrdef_end

scr_seq_D47R0101_006:
	scrcmd_609
	lockall
	apply_movement obj_D47R0101_counterm_3, _01EC
	apply_movement obj_D47R0101_counterm_5, _01EC
	wait_movement
	npc_msg 7
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0062
	safari_zone_action 1, 0
_0062:
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00BD
	apply_movement obj_player, _01B4
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D47R0102, 0, 79, 100, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	lock obj_partner_poke
	scrcmd_606
	apply_movement obj_partner_poke, _0200
	wait_movement
	release obj_partner_poke
	releaseall
	end

_00BD:
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 5
	goto_if_ne _00E2
	setvar VAR_TEMP_x4002, 5
	setvar VAR_TEMP_x4003, 5
	goto _00EE

_00E2:
	setvar VAR_TEMP_x4002, 19
	setvar VAR_TEMP_x4003, 5
_00EE:
	apply_movement obj_player, _01DC
	wait_movement
	scrcmd_307 0, 0, VAR_TEMP_x4002, VAR_TEMP_x4003, 77
	call _08AF
	apply_movement obj_player, _01BC
	apply_movement obj_D47R0101_counterm_3, _01F4
	apply_movement obj_D47R0101_counterm_5, _01F4
	wait_movement
	call _08B7
	setvar VAR_SCENE_SAFARI_ZONE_ENTRANCE, 0
	npc_msg 8
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	scrcmd_606
	releaseall
	end

scr_seq_D47R0101_007:
	scrcmd_609
	lockall
	apply_movement obj_player, _01E4
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 5
	goto_if_ne _0172
	setvar VAR_TEMP_x4002, 5
	setvar VAR_TEMP_x4003, 5
	goto _017E

_0172:
	setvar VAR_TEMP_x4002, 19
	setvar VAR_TEMP_x4003, 5
_017E:
	scrcmd_307 0, 0, VAR_TEMP_x4002, VAR_TEMP_x4003, 77
	call _08AF
	apply_movement obj_player, _01BC
	wait_movement
	call _08B7
	setvar VAR_SCENE_SAFARI_ZONE_ENTRANCE, 0
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	scrcmd_606
	releaseall
	end

	.align 4
_01B4:

	step 12, 1
	step_end
	.align 4
_01BC:

	step 13, 2
	step 14, 1
	step 32, 1
	step_end
	.align 4
_01DC:

	step 13, 1
	step_end
	.align 4
_01E4:

	step 13, 2
	step_end
	.align 4
_01EC:

	step 3, 1
	step_end
	.align 4
_01F4:

	step 63, 1
	step 1, 1
	step_end
	.align 4
_0200:

	step 0, 1
	step_end
scr_seq_D47R0101_008:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D47R0101_gsgentleman, _0310
	apply_movement obj_player, _03B8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 29
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _025B
_024A:
	npc_msg 30
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_4057, 2
	releaseall
	end

_025B:
	npc_msg 31
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _025B
	goto _024A

scr_seq_D47R0101_009:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D47R0101_gsgentleman, _0310
	apply_movement obj_player, _03B8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 34
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D47R0101_gsgentleman, _0324
	apply_movement obj_player, _03C8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 35
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D47R0101_gsgentleman, _0334
	apply_movement obj_player, _03D8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 36
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_4057, 5
	clearflag FLAG_HIDE_SAFARI_ZONE_WORKERS
	releaseall
	end

	.align 4
_0310:

	step 1, 1
	step 75, 1
	step 65, 1
	step 14, 1
	step_end
	.align 4
_0324:

	step 12, 2
	step 15, 3
	step 12, 1
	step_end
	.align 4
_0334:

	step 13, 2
	step 14, 2
	step 13, 1
	step 75, 1
	step 0, 1
	step_end
	.align 4
_034C:

	step 14, 2
	step 12, 4
	step 15, 4
	step 1, 1
	step_end
	.align 4
_0360:

	step 12, 4
	step 15, 2
	step 1, 1
	step_end
	.align 4
_0370:

	step 13, 2
	step 15, 1
	step 13, 2
	step 2, 1
	step_end
	.align 4
_03B8:

	step 65, 1
	step 12, 3
	step 3, 1
	step_end
	.align 4
_03C8:

	step 12, 2
	step 15, 4
	step 12, 1
	step_end
	.align 4
_03D8:

	step 1, 1
	step_end
	.align 4
_03E0:

	step 65, 1
	step 0, 1
	step 65, 1
	step 13, 1
	step 0, 1
	step_end
	.align 4
_03F8:

	step 15, 1
	step 0, 1
	step_end
	.align 4
_0404:

	step 12, 1
	step_end
	.align 4
_040C:

	step 65, 3
	step 3, 1
	step_end
scr_seq_D47R0101_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_183, _0599
	compare VAR_UNK_4057, 2
	goto_if_eq _049D
	compare VAR_UNK_4057, 3
	goto_if_eq _048B
	compare VAR_UNK_4057, 5
	goto_if_eq _04CB
	compare VAR_UNK_4057, 6
	goto_if_eq _0494
	compare VAR_UNK_4057, 7
	goto_if_eq _058F
	npc_msg 42
	goto _0587

_048B:
	npc_msg 42
	goto _0587

_0494:
	npc_msg 40
	goto _0587

_049D:
	scrcmd_791 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _04B8
	npc_msg 33
	goto _04C3

_04B8:
	npc_msg 32
	setvar VAR_UNK_4057, 3
	scrcmd_792
_04C3:
	goto _0587

_04CB:
	scrcmd_791 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _057E
	npc_msg 37
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0515
	apply_movement obj_D47R0101_gsgentleman, _034C
	apply_movement obj_player, _03E0
	wait_movement
	goto _054C

_0515:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _053A
	apply_movement obj_D47R0101_gsgentleman, _0360
	apply_movement obj_player, _03F8
	wait_movement
	goto _054C

_053A:
	apply_movement obj_D47R0101_gsgentleman, _0360
	apply_movement obj_player, _0404
	wait_movement
_054C:
	npc_msg 38
	closemsg
	apply_movement obj_D47R0101_gsgentleman, _0370
	apply_movement obj_player, _040C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 39
	setvar VAR_UNK_4057, 6
	scrcmd_792
	goto _0587

_057E:
	npc_msg 41
	goto _0587

_0587:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_058F:
	setflag FLAG_UNK_183
	npc_msg 43
	npc_msg 44
_0599:
	npc_msg 45
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0683
_05AF:
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 463, 255, 0
	menu_item_add 464, 255, 1
	menu_item_add 465, 255, 2
	menu_item_add 466, 255, 3
	menu_item_add 467, 255, 4
	menu_item_add 468, 255, 5
	menu_item_add 469, 255, 6
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _064D
	case 1, _0656
	case 2, _065F
	case 3, _0668
	case 4, _0671
	case 5, _067A
	goto _0683

_064D:
	npc_msg 47
	goto _05AF

_0656:
	npc_msg 48
	goto _05AF

_065F:
	npc_msg 49
	goto _05AF

_0668:
	npc_msg 50
	goto _05AF

_0671:
	npc_msg 51
	goto _05AF

_067A:
	npc_msg 52
	goto _05AF

_0683:
	touchscreen_menu_show
	npc_msg 53
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D47R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4057, 6
	goto_if_lt _06AE
	npc_msg 15
	goto _06B1

_06AE:
	npc_msg 14
_06B1:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06E7
	setvar VAR_SPECIAL_x8004, 30
	buffer_int 1, VAR_SPECIAL_x8004
	setvar VAR_SPECIAL_x8005, 1000
	buffer_int 2, VAR_SPECIAL_x8005
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_06E7:
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D47R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4057, 7
	goto_if_eq _0899
_0707:
	compare VAR_UNK_4057, 6
	goto_if_lt _0728
	setvar VAR_SPECIAL_RESULT, 500
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 1
	goto _0736

_0728:
	setvar VAR_SPECIAL_RESULT, 500
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 0
_0736:
	show_money_box 20, 2
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0846
	count_pc_empty_space VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0773
	get_party_count VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 6
	goto_if_eq _0853
_0773:
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 500
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0876
	setvar VAR_SPECIAL_RESULT, 500
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 2
	play_se SEQ_SE_DP_REGI
	submoneyimmediate 500
	update_money_box
	npc_msg 4
	buffer_players_name 0
	setvar VAR_SPECIAL_RESULT, 30
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 5
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 6
	closemsg
	hide_money_box
	scrcmd_600
	apply_movement obj_player, _08C4
	wait_movement
	scrcmd_307 0, 0, 5, 5, 77
	call _08AF
	apply_movement obj_player, _08D0
	wait_movement
	call _08B7
	setvar VAR_SCENE_SAFARI_ZONE_ENTRANCE, 1
	safari_zone_action 0, 0
	set_dynamic_warp MAP_D47R0101, 1, 5, 2, 1
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D47R0102, 0, 79, 100, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	lock obj_partner_poke
	scrcmd_606
	apply_movement obj_partner_poke, _0200
	wait_movement
	release obj_partner_poke
	releaseall
	end

_0846:
	hide_money_box
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0853:
	hide_money_box
	compare VAR_UNK_4057, 6
	goto_if_lt _086B
	npc_msg 13
	goto _086E

_086B:
	npc_msg 12
_086E:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0876:
	hide_money_box
	compare VAR_UNK_4057, 6
	goto_if_lt _088E
	npc_msg 11
	goto _0891

_088E:
	npc_msg 10
_0891:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0899:
	goto_if_set FLAG_UNK_183, _0707
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_08AF:
	scrcmd_310 77
	scrcmd_308 77
	return

_08B7:
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	return

	.align 4
_08C4:

	step 15, 1
	step 0, 1
	step_end
	.align 4
_08D0:

	step 12, 4
	step_end
scr_seq_D47R0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4057, 0
	goto_if_eq _09DC
	compare VAR_UNK_4057, 1
	goto_if_eq _09DC
	compare VAR_UNK_4057, 2
	goto_if_eq _09DC
	compare VAR_UNK_4057, 3
	goto_if_eq _09DC
	npc_msg 19
	touchscreen_menu_hide
_0919:
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 457, 255, 0
	menu_item_add 458, 255, 1
	menu_item_add 459, 255, 2
	menu_item_add 460, 255, 3
	menu_item_add 461, 255, 4
	menu_item_add 462, 255, 5
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _09A2
	case 1, _09AB
	case 2, _09B4
	case 3, _09BD
	case 4, _09C6
	goto _09CF

_09A2:
	npc_msg 20
	goto _0919

_09AB:
	npc_msg 21
	goto _0919

_09B4:
	npc_msg 22
	goto _0919

_09BD:
	npc_msg 23
	goto _0919

_09C6:
	npc_msg 24
	goto _0919

_09CF:
	touchscreen_menu_show
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_09DC:
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D47R0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4057, 7
	goto_if_eq _0C21
_09FC:
	scrcmd_247
	nat_dex_flag_action 2, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0DF2
	compare VAR_UNK_4057, 6
	goto_if_lt _0A26
	npc_msg 65
	goto _0A29

_0A26:
	npc_msg 66
_0A29:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0BFC
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0A5D
	goto _0C16

_0A5D:
	touchscreen_menu_hide
	npc_msg 71
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 14, 255, 0
	menu_item_add 15, 255, 1
	menu_item_add 5, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0AAC
	case 1, _0B2F
	goto _0BFC

_0AAC:
	npc_msg 86
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0A5D
	setvar VAR_SPECIAL_x8004, 39
	setvar VAR_SPECIAL_x8005, 0
	scrcmd_226 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0B05
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0B11
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _0B20
	goto _0BB2

_0B05:
	scrcmd_283
	touchscreen_menu_hide
	goto _0A5D

_0B11:
	scrcmd_283
	touchscreen_menu_show
	npc_msg 87
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0B20:
	scrcmd_283
	npc_msg 85
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0B2F:
	npc_msg 86
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0A5D
	setvar VAR_SPECIAL_x8004, 39
	setvar VAR_SPECIAL_x8005, 0
	scrcmd_227 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0B88
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0B94
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _0BA3
	goto _0BB2

_0B88:
	scrcmd_283
	touchscreen_menu_hide
	goto _0A5D

_0B94:
	scrcmd_283
	npc_msg 87
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0BA3:
	scrcmd_283
	npc_msg 85
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0BB2:
	setvar VAR_UNK_4133, 1
	npc_msg 81
	scrcmd_257 96
	scrcmd_822
	scrcmd_283
	setvar VAR_TEMP_x4000, 0
	scrcmd_823 VAR_TEMP_x4000
	touchscreen_menu_hide
	npc_msg 82
	npc_msg 88
	add_waiting_icon
	save_game_normal VAR_SPECIAL_RESULT
	remove_waiting_icon
	buffer_players_name 0
	npc_msg 89
	play_se SEQ_SE_DP_SAVE
	wait_se SEQ_SE_DP_SAVE
	npc_msg 83
	setvar VAR_UNK_4133, 0
	touchscreen_menu_show
	closemsg
	releaseall
	end

_0BFC:
	npc_msg 85
	wait_button_or_walk_away
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0C16:
	npc_msg 85
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0C21:
	goto_if_set FLAG_UNK_183, _09FC
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D47R0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4057, 7
	goto_if_eq _0DFD
_0C4C:
	scrcmd_247
	nat_dex_flag_action 2, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0DF2
	scrcmd_824 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0C84
	setvar VAR_TEMP_x4000, 0
	scrcmd_823 VAR_TEMP_x4000
	npc_msg 54
	goto _0C8F

_0C84:
	npc_msg 60
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0C8F:
	show_money_box 20, 2
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0D9F
	count_pc_empty_space VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0CCC
	get_party_count VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 6
	goto_if_eq _0DAC
_0CCC:
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 500
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0DCF
	setvar VAR_SPECIAL_RESULT, 500
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 55
	play_se SEQ_SE_DP_REGI
	submoneyimmediate 500
	update_money_box
	npc_msg 57
	buffer_players_name 0
	setvar VAR_SPECIAL_RESULT, 30
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 58
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 59
	closemsg
	hide_money_box
	scrcmd_600
	apply_movement obj_player, _08C4
	wait_movement
	scrcmd_307 0, 0, 19, 5, 77
	call _08AF
	apply_movement obj_player, _08D0
	wait_movement
	call _08B7
	setvar VAR_SCENE_SAFARI_ZONE_ENTRANCE, 3
	safari_zone_action 0, 1
	set_dynamic_warp MAP_D47R0101, 2, 19, 2, 1
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D47R0102, 0, 79, 100, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	lock obj_partner_poke
	scrcmd_606
	apply_movement obj_partner_poke, _0200
	wait_movement
	release obj_partner_poke
	releaseall
	end

_0D9F:
	hide_money_box
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0DAC:
	hide_money_box
	compare VAR_UNK_4057, 6
	goto_if_lt _0DC4
	npc_msg 13
	goto _0DC7

_0DC4:
	npc_msg 12
_0DC7:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0DCF:
	hide_money_box
	compare VAR_UNK_4057, 6
	goto_if_lt _0DE7
	npc_msg 11
	goto _0DEA

_0DE7:
	npc_msg 10
_0DEA:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0DF2:
	npc_msg 84
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0DFD:
	goto_if_set FLAG_UNK_183, _0C4C
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D47R0101_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_247
	nat_dex_flag_action 2, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0E73
	compare VAR_UNK_4057, 6
	goto_if_lt _0E45
	npc_msg 93
	goto _0E48

_0E45:
	npc_msg 94
_0E48:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0E68
	npc_msg 95
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0E68:
	npc_msg 96
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0E73:
	npc_msg 92
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D47R0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4057, 0
	goto_if_eq _0EF1
	compare VAR_UNK_4057, 1
	goto_if_eq _0EF1
	compare VAR_UNK_4057, 2
	goto_if_eq _0EF1
	compare VAR_UNK_4057, 3
	goto_if_eq _0EF1
	buffer_players_name 0
	npc_msg 27
	closemsg
	clearflag FLAG_UNK_99D
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_716
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	goto_if_set FLAG_UNK_99D, _0EFC
	releaseall
	end

_0EF1:
	npc_msg 28
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0EFC:
	screen_shake 0, 2, 10, 6
	play_se SEQ_SE_DP_KI_GASYAN
	npc_msg 91
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
