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

.include "armips/scr_seq/event_D49.inc"


// text archive to grab from: 137.txt

.create "build/a012/2_122", 0


scrdef scr_seq_D49_000
scrdef scr_seq_D49_001
scrdef scr_seq_D49_002
scrdef scr_seq_D49_003
scrdef scr_seq_D49_004
scrdef scr_seq_D49_005
scrdef scr_seq_D49_006
scrdef scr_seq_D49_007
scrdef scr_seq_D49_008
scrdef scr_seq_D49_009
scrdef scr_seq_D49_010
scrdef scr_seq_D49_011
scrdef scr_seq_D49_012
scrdef scr_seq_D49_013
scrdef scr_seq_D49_014
scrdef scr_seq_D49_015
scrdef scr_seq_D49_016
scrdef scr_seq_D49_017
scrdef scr_seq_D49_018
scrdef scr_seq_D49_019
scrdef scr_seq_D49_020
scrdef scr_seq_D49_021
scrdef scr_seq_D49_022
scrdef scr_seq_D49_023
scrdef_end

scr_seq_D49_018:
	goto_if_unset FLAG_UNK_189, _0073
	clearflag FLAG_UNK_189
	end

_0073:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _00C2
	compare VAR_TEMP_x4000, 2
	goto_if_eq _00C2
	compare VAR_TEMP_x4000, 3
	goto_if_eq _00C2
	compare VAR_TEMP_x4000, 0
	goto_if_eq _00CC
	compare VAR_UNK_40DB, 0
	goto_if_eq _00CC
	setflag FLAG_HIDE_CAMERON
	clearflag FLAG_UNK_27F
	end

_00C2:
	clearflag FLAG_HIDE_CAMERON
	setflag FLAG_UNK_27F
	end

_00CC:
	setflag FLAG_HIDE_CAMERON
	setflag FLAG_UNK_27F
	end

scr_seq_D49_000:
	scrcmd_609
	lockall
	release obj_D49_follower_mon_static_oddish
	release obj_D49_gsboy2
	apply_movement obj_D49_thlonowner, _0414
	wait_movement
	npc_msg 0
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 40
	goto_if_ne _011A
	apply_movement obj_D49_thlonowner, _043C
	apply_movement obj_D49_follower_mon_static_poliwrath, _04A8
	goto _01D9

_011A:
	compare VAR_TEMP_x4000, 41
	goto_if_ne _013D
	apply_movement obj_D49_thlonowner, _044C
	apply_movement obj_D49_follower_mon_static_poliwrath, _04BC
	goto _01D9

_013D:
	compare VAR_TEMP_x4000, 42
	goto_if_ne _0160
	apply_movement obj_D49_thlonowner, _045C
	apply_movement obj_D49_follower_mon_static_poliwrath, _04D0
	goto _01D9

_0160:
	compare VAR_TEMP_x4000, 43
	goto_if_ne _0183
	apply_movement obj_D49_thlonowner, _0464
	apply_movement obj_D49_follower_mon_static_poliwrath, _04DC
	goto _01D9

_0183:
	compare VAR_TEMP_x4000, 44
	goto_if_ne _01A6
	apply_movement obj_D49_thlonowner, _0474
	apply_movement obj_D49_follower_mon_static_poliwrath, _04F0
	goto _01D9

_01A6:
	compare VAR_TEMP_x4000, 39
	goto_if_ne _01C9
	apply_movement obj_D49_thlonowner, _042C
	apply_movement obj_D49_follower_mon_static_poliwrath, _0494
	goto _01D9

_01C9:
	apply_movement obj_D49_thlonowner, _0484
	apply_movement obj_D49_follower_mon_static_poliwrath, _0504
_01D9:
	wait_movement
	npc_msg 6
	closemsg
	apply_movement obj_D49_thlonowner, _0424
	apply_movement obj_D49_follower_mon_static_poliwrath, _0424
	wait_movement
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _020C
	npc_msg 5
	goto _0218

_020C:
	get_party_lead_alive VAR_SPECIAL_x8000
	buffer_mon_species_name 1, VAR_SPECIAL_x8000
	npc_msg 1
_0218:
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4000, 40
	goto_if_ne _024F
	apply_movement obj_D49_thlonowner, _0528
	apply_movement obj_D49_follower_mon_static_poliwrath, _05A0
	apply_movement obj_player, _0658
	goto _033E

_024F:
	compare VAR_TEMP_x4000, 41
	goto_if_ne _027A
	apply_movement obj_D49_thlonowner, _0538
	apply_movement obj_D49_follower_mon_static_poliwrath, _05BC
	apply_movement obj_player, _066C
	goto _033E

_027A:
	compare VAR_TEMP_x4000, 42
	goto_if_ne _02A5
	apply_movement obj_D49_thlonowner, _0548
	apply_movement obj_D49_follower_mon_static_poliwrath, _05D8
	apply_movement obj_player, _0680
	goto _033E

_02A5:
	compare VAR_TEMP_x4000, 43
	goto_if_ne _02D0
	apply_movement obj_D49_thlonowner, _0554
	apply_movement obj_D49_follower_mon_static_poliwrath, _05F0
	apply_movement obj_player, _068C
	goto _033E

_02D0:
	compare VAR_TEMP_x4000, 44
	goto_if_ne _02FB
	apply_movement obj_D49_thlonowner, _0564
	apply_movement obj_D49_follower_mon_static_poliwrath, _060C
	apply_movement obj_player, _06A0
	goto _033E

_02FB:
	compare VAR_TEMP_x4000, 39
	goto_if_ne _0326
	apply_movement obj_D49_thlonowner, _0518
	apply_movement obj_D49_follower_mon_static_poliwrath, _0584
	apply_movement obj_player, _0644
	goto _033E

_0326:
	apply_movement obj_D49_thlonowner, _0574
	apply_movement obj_D49_follower_mon_static_poliwrath, _0628
	apply_movement obj_player, _06B4
_033E:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 2
	closemsg
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	apply_movement 241, _0400
	wait_movement
	npc_msg 3
	closemsg
	apply_movement 241, _0408
	wait_movement
	scrcmd_103
	npc_msg 4
	closemsg
	apply_movement obj_D49_thlonowner, _06C8
	apply_movement obj_D49_follower_mon_static_poliwrath, _06D0
	wait_movement
	scrcmd_307 1, 0, 10, 22, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_D49_thlonowner, _06DC
	apply_movement obj_D49_follower_mon_static_poliwrath, _06E4
	wait_movement
	hide_person obj_D49_thlonowner
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_D49_follower_mon_static_poliwrath, _041C
	wait_movement
	play_cry SPECIES_POLIWRATH, 0
	wait_cry
	apply_movement obj_D49_follower_mon_static_poliwrath, _06E4
	wait_movement
	hide_person obj_D49_follower_mon_static_poliwrath
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	releaseall
	setvar VAR_UNK_40DB, 1
	setflag FLAG_UNK_225
	setflag FLAG_UNK_982
	end

	.align 4
_0400:

	step 12, 10
	step_end
	.align 4
_0408:

	step 66, 1
	step 77, 10
	step_end
	.align 4
_0414:

	step 75, 1
	step_end
	.align 4
_041C:

	step 33, 1
	step_end
	.align 4
_0424:

	step 17, 1
	step_end
	.align 4
_042C:

	step 77, 2
	step 78, 3
	step 77, 1
	step_end
	.align 4
_043C:

	step 77, 2
	step 78, 2
	step 77, 1
	step_end
	.align 4
_044C:

	step 77, 2
	step 78, 1
	step 77, 1
	step_end
	.align 4
_045C:

	step 77, 3
	step_end
	.align 4
_0464:

	step 77, 2
	step 79, 1
	step 77, 1
	step_end
	.align 4
_0474:

	step 77, 2
	step 79, 2
	step 77, 1
	step_end
	.align 4
_0484:

	step 77, 2
	step 79, 3
	step 77, 1
	step_end
	.align 4
_0494:

	step 79, 1
	step 77, 2
	step 78, 3
	step 33, 1
	step_end
	.align 4
_04A8:

	step 79, 1
	step 77, 2
	step 78, 2
	step 33, 1
	step_end
	.align 4
_04BC:

	step 79, 1
	step 77, 2
	step 78, 1
	step 33, 1
	step_end
	.align 4
_04D0:

	step 79, 1
	step 77, 2
	step_end
	.align 4
_04DC:

	step 79, 1
	step 77, 2
	step 79, 1
	step 33, 1
	step_end
	.align 4
_04F0:

	step 79, 1
	step 77, 2
	step 79, 2
	step 33, 1
	step_end
	.align 4
_0504:

	step 79, 1
	step 77, 2
	step 79, 3
	step 33, 1
	step_end
	.align 4
_0518:

	step 15, 3
	step 12, 21
	step 33, 1
	step_end
	.align 4
_0528:

	step 15, 2
	step 12, 21
	step 33, 1
	step_end
	.align 4
_0538:

	step 15, 1
	step 12, 21
	step 33, 1
	step_end
	.align 4
_0548:

	step 12, 21
	step 33, 1
	step_end
	.align 4
_0554:

	step 14, 1
	step 12, 21
	step 33, 1
	step_end
	.align 4
_0564:

	step 14, 2
	step 12, 21
	step 33, 1
	step_end
	.align 4
_0574:

	step 14, 3
	step 12, 21
	step 33, 1
	step_end
	.align 4
_0584:

	step 13, 1
	step 15, 3
	step 12, 20
	step 14, 1
	step 12, 1
	step 33, 1
	step_end
	.align 4
_05A0:

	step 13, 1
	step 15, 2
	step 12, 20
	step 14, 1
	step 12, 1
	step 33, 1
	step_end
	.align 4
_05BC:

	step 13, 1
	step 15, 1
	step 12, 20
	step 14, 1
	step 12, 1
	step 33, 1
	step_end
	.align 4
_05D8:

	step 13, 1
	step 12, 20
	step 14, 1
	step 12, 1
	step 33, 1
	step_end
	.align 4
_05F0:

	step 13, 1
	step 14, 1
	step 12, 20
	step 14, 1
	step 12, 1
	step 33, 1
	step_end
	.align 4
_060C:

	step 13, 1
	step 14, 2
	step 12, 20
	step 14, 1
	step 12, 1
	step 33, 1
	step_end
	.align 4
_0628:

	step 13, 1
	step 14, 3
	step 12, 20
	step 14, 1
	step 12, 1
	step 33, 1
	step_end
	.align 4
_0644:

	step 63, 2
	step 12, 1
	step 15, 3
	step 12, 19
	step_end
	.align 4
_0658:

	step 63, 2
	step 12, 1
	step 15, 2
	step 12, 19
	step_end
	.align 4
_066C:

	step 63, 2
	step 12, 1
	step 15, 1
	step 12, 19
	step_end
	.align 4
_0680:

	step 63, 2
	step 12, 20
	step_end
	.align 4
_068C:

	step 63, 2
	step 12, 1
	step 14, 1
	step 12, 19
	step_end
	.align 4
_06A0:

	step 63, 2
	step 12, 1
	step 14, 2
	step 12, 19
	step_end
	.align 4
_06B4:

	step 63, 2
	step 12, 1
	step 14, 3
	step 12, 19
	step_end
	.align 4
_06C8:

	step 12, 2
	step_end
	.align 4
_06D0:

	step 15, 1
	step 12, 1
	step_end
	.align 4
_06DC:

	step 12, 1
	step_end
	.align 4
_06E4:

	step 12, 1
	step_end
scr_seq_D49_001:
	simple_npc_msg 7
	end

scr_seq_D49_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_ODDISH, 0
	npc_msg 8
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49_002:
	simple_npc_msg 9
	end

scr_seq_D49_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_MEOWTH, 0
	npc_msg 10
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_724 12, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ge _076E
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_076E:
	goto_if_set FLAG_UNK_154, _07CB
	npc_msg 12
	scrcmd_724 16, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1000
	goto_if_ge _079A
	npc_msg 13
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_079A:
	npc_msg 14
	goto_if_no_item_space ITEM_RARE_CANDY, 1, _07D6
	callstd std_give_item_verbose
	scrcmd_725 0, 100
	setflag FLAG_UNK_154
_07CB:
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_07D6:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

scr_seq_D49_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_PIDGEY, 0
	npc_msg 16
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49_004:
	simple_npc_msg 17
	end

scr_seq_D49_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_SLOWBRO, 0
	npc_msg 18
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49_005:
	simple_npc_msg 19
	end

scr_seq_D49_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_MACHOP, 0
	npc_msg 20
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49_006:
	simple_npc_msg 21
	end

scr_seq_D49_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_SLOWPOKE, 0
	npc_msg 22
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_FARFETCHD, 0
	npc_msg 23
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49_014:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_PSYDUCK, 0
	npc_msg 24
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49_015:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_UNK_997, _093E
	npc_msg 25
_08D1:
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 326, 255, 0
	menu_item_add 327, 255, 1
	menu_item_add 157, 255, 2
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _091D
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0928
	goto _0933

_091D:
	npc_msg 30
	goto _08D1

_0928:
	npc_msg 31
	goto _08D1

_0933:
	npc_msg 32
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_093E:
	npc_msg 26
	buffer_players_name 0
	npc_msg 27
	play_fanfare SEQ_ME_KEYITEM
	wait_fanfare
	npc_msg 28
	setflag FLAG_UNK_997
	npc_msg 29
	goto _08D1

_095F:
	apply_movement obj_D49_shopm1_2, _09D4
	wait_movement
	npc_msg 39
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4007, 0
	goto_if_ne _0993
	apply_movement obj_player, _09E0
	goto _09B6

_0993:
	compare VAR_TEMP_x4007, 1
	goto_if_ne _09AE
	apply_movement obj_player, _09EC
	goto _09B6

_09AE:
	apply_movement obj_player, _09F8
_09B6:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D49_shopm1_2, _0BF4
	wait_movement
	goto _093E

	.align 4
_09D4:

	step 2, 1
	step 75, 1
	step_end
	.align 4
_09E0:

	step 15, 3
	step 32, 1
	step_end
	.align 4
_09EC:

	step 15, 2
	step 32, 1
	step_end
	.align 4
_09F8:

	step 15, 1
	step 32, 1
	step_end
scr_seq_D49_019:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4007, 0
	goto_if_unset FLAG_UNK_997, _095F
_0A1D:
	show_money_box 21, 1
	scrcmd_741 VAR_TEMP_x4007, VAR_SPECIAL_x8000, VAR_SPECIAL_x8001, VAR_SPECIAL_x8002
	apply_movement obj_D49_shopm1_2, _0BEC
	wait_movement
	npc_msg 33
_0A3A:
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 328, 255, 0
	menu_item_add 329, 255, 1
	menu_item_add 44, 255, 2
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _0AD6
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0AF6
	hasenoughmoneyvar VAR_SPECIAL_RESULT, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0AEB
	npc_msg 34
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_money_box
	scrcmd_740 VAR_SPECIAL_x8000, VAR_SPECIAL_x8003
	restore_overworld
	show_money_box 21, 1
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8003, 0
	goto_if_ne _0AD0
	npc_msg 36
	goto _0AD9

_0AD0:
	submoneyvar VAR_SPECIAL_x8001
	update_money_box
_0AD6:
	npc_msg 35
_0AD9:
	closemsg
	hide_money_box
	apply_movement obj_D49_shopm1_2, _0BF4
	wait_movement
	releaseall
	end

_0AEB:
	npc_msg 37
	goto _0AD9

_0AF6:
	compare VAR_SPECIAL_x8002, 2000
	goto_if_ge _0B80
	compare VAR_SPECIAL_x8002, 1000
	goto_if_ge _0B77
	compare VAR_SPECIAL_x8002, 500
	goto_if_ge _0B6E
	compare VAR_SPECIAL_x8002, 300
	goto_if_ge _0B65
	compare VAR_SPECIAL_x8002, 200
	goto_if_ge _0B5C
	compare VAR_SPECIAL_x8002, 100
	goto_if_ge _0B53
	goto _0B4A

_0B4A:
	npc_msg 41
	goto _0B89

_0B53:
	npc_msg 42
	goto _0B89

_0B5C:
	npc_msg 43
	goto _0B89

_0B65:
	npc_msg 44
	goto _0B89

_0B6E:
	npc_msg 45
	goto _0B89

_0B77:
	npc_msg 46
	goto _0B89

_0B80:
	npc_msg 47
	goto _0B89

_0B89:
	npc_msg 40
	npc_msg 38
	goto _0A3A

scr_seq_D49_020:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4007, 1
	goto_if_unset FLAG_UNK_997, _095F
	goto _0A1D

scr_seq_D49_021:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4007, 2
	goto_if_unset FLAG_UNK_997, _095F
	goto _0A1D

scr_seq_D49_022:
	simple_npc_msg 48
	end

	.align 4
_0BEC:

	step 34, 1
	step_end
	.align 4
_0BF4:

	step 33, 1
	step_end
scr_seq_D49_016:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0E44
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0E58
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0C75
	apply_movement obj_player, _0E6C
	apply_movement obj_D49_gsmiddleman1, _0EB8
	goto _0CC3

_0C75:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0C90
	apply_movement obj_player, _0E84
	goto _0CC3

_0C90:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0CB3
	apply_movement obj_player, _0EA4
	apply_movement obj_D49_gsmiddleman1, _0EB8
	goto _0CC3

_0CB3:
	apply_movement obj_player, _0E90
	apply_movement obj_D49_gsmiddleman1, _0EB8
_0CC3:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0CEA
	apply_movement obj_partner_poke, _0EC4
	wait_movement
_0CEA:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 13
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D49_017:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0E44
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0E58
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0D9D
	apply_movement obj_player, _0E6C
	apply_movement obj_D49_gsmiddleman1_2, _0EB8
	goto _0DEB

_0D9D:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0DB8
	apply_movement obj_player, _0E84
	goto _0DEB

_0DB8:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0DDB
	apply_movement obj_player, _0EA4
	apply_movement obj_D49_gsmiddleman1_2, _0EB8
	goto _0DEB

_0DDB:
	apply_movement obj_player, _0E90
	apply_movement obj_D49_gsmiddleman1_2, _0EB8
_0DEB:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0E12
	apply_movement obj_partner_poke, _0EC4
	wait_movement
_0E12:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 14
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0E44:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0E58:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0E6C:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0E84:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_0E90:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0EA4:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_0EB8:

	step 63, 1
	step 32, 1
	step_end
	.align 4
_0EC4:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
scr_seq_D49_023:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 49, VAR_SPECIAL_RESULT
	callstd std_signpost
	end
	.align 4


.close
