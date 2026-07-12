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

.include "armips/scr_seq/event_T20R0101.inc"


// text archive to grab from: 543.txt

.create "build/a012/2_843", 0


scrdef scr_seq_T20R0101_000
scrdef scr_seq_T20R0101_001
scrdef scr_seq_T20R0101_002
scrdef scr_seq_T20R0101_003
scrdef scr_seq_T20R0101_004
scrdef scr_seq_T20R0101_005
scrdef scr_seq_T20R0101_006
scrdef scr_seq_T20R0101_007
scrdef scr_seq_T20R0101_008
scrdef scr_seq_T20R0101_009
scrdef scr_seq_T20R0101_010
scrdef scr_seq_T20R0101_011
scrdef scr_seq_T20R0101_012
scrdef scr_seq_T20R0101_013
scrdef scr_seq_T20R0101_014
scrdef scr_seq_T20R0101_015
scrdef_end

scr_seq_T20R0101_010:
	get_friend_sprite VAR_OBJ_0
	goto_if_set FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE, _00B8
	compare VAR_SCENE_ELMS_LAB, 0
	goto_if_ne _0070
	move_person_facing obj_T20R0101_doctor, 4, 0, 5, DIR_SOUTH
	goto _00B4

_0070:
	compare VAR_SCENE_ELMS_LAB, 3
	goto_if_ne _008F
	move_person_facing obj_T20R0101_doctor, 4, 0, 5, DIR_SOUTH
	goto _00B4

_008F:
	compare VAR_SCENE_ELMS_LAB, 8
	goto_if_ne _00B4
	move_person_facing obj_T20R0101_doctor, 4, 0, 5, DIR_SOUTH
	move_person_facing obj_T20R0101_var_1, 7, 0, 12, DIR_EAST
_00B4:
	place_starter_balls_in_elms_lab
	end

_00B8:
	move_person_facing obj_T20R0101_doctor, 4, 0, 5, DIR_EAST
	goto _00B4

scr_seq_T20R0101_011:
	scrcmd_609
	lockall
	goto_if_set FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE, _0197
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 3
	goto_if_ne _00FA
	apply_movement obj_player, _01BC
	goto _0145

_00FA:
	compare VAR_TEMP_x4000, 4
	goto_if_ne _0115
	apply_movement obj_player, _01CC
	goto _0145

_0115:
	compare VAR_TEMP_x4000, 5
	goto_if_ne _0130
	apply_movement obj_player, _01D4
	goto _0145

_0130:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _0145
	apply_movement obj_player, _01E4
_0145:
	wait_movement
	buffer_players_name 0
	gender_msgbox 0, 1
	closemsg
	apply_movement obj_T20R0101_doctor, _0368
	wait_movement
	wait 15, VAR_SPECIAL_x8004
	play_se SEQ_SE_GS_PHONE0
	apply_movement obj_T20R0101_doctor, _01F4
	wait_movement
	npc_msg 2
	npc_msg 3
	closemsg
	apply_movement obj_T20R0101_doctor, _0204
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_T20R0101_doctor, _0368
	wait_movement
	setflag FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE
	releaseall
	end

_0197:
	apply_movement obj_T20R0101_doctor, _020C
	wait_movement
	npc_msg 6
	closemsg
	apply_movement obj_T20R0101_doctor, _0368
	apply_movement obj_player, _021C
	wait_movement
	releaseall
	end

	.align 4
_01BC:

	step 12, 2
	step 15, 1
	step 12, 1
	step_end
	.align 4
_01CC:

	step 12, 3
	step_end
	.align 4
_01D4:

	step 12, 2
	step 14, 1
	step 12, 1
	step_end
	.align 4
_01E4:

	step 12, 2
	step 14, 2
	step 12, 1
	step_end
	.align 4
_01F4:

	step 75, 1
	step 12, 1
	step 65, 1
	step_end
	.align 4
_0204:

	step 13, 1
	step_end
	.align 4
_020C:

	step 1, 1
	step 75, 1
	step 33, 2
	step_end
	.align 4
_021C:

	step 12, 1
	step_end
scr_seq_T20R0101_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_STARTER, _0331
	choose_starter
	setflag FLAG_GOT_STARTER
	scrcmd_605 3, 2
	toggle_following_pokemon_movement 0
	scrcmd_608
	wait 10, VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 1
	get_partymon_species 0, VAR_TEMP_x4001
	set_starter_choice VAR_TEMP_x4001
	buffer_players_name 0
	buffer_mon_species_name 1, 0
	npc_msg 7
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	touchscreen_menu_hide
	buffer_mon_species_name 1, 0
	npc_msg 8
	getmenuchoice VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _02EE
	touchscreen_menu_show
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0370
	apply_movement obj_T20R0101_doctor, _0388
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 10
	closemsg
	apply_movement obj_T20R0101_doctor, _0380
	wait_movement
	npc_msg 11
	closemsg
	apply_movement obj_T20R0101_doctor, _0390
	wait_movement
	buffer_players_name 0
	gender_msgbox 12, 13
	wait_button_or_walk_away
	closemsg
	setvar VAR_SCENE_ELMS_LAB, 1
	setvar VAR_SCENE_NEW_BARK_TOWN_OW, 1
	clearflag FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE
	releaseall
	end

_02EE:
	setvar VAR_TEMP_x4000, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input 0, VAR_TEMP_x4000
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	touchscreen_menu_hide
	bufferpartymonnick 1, 0
	npc_msg 9
	getmenuchoice VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02EE
	return

_0331:
	goto_if_set FLAG_GOT_TM51_FROM_FALKNER, _035D
	goto_if_set FLAG_MET_PASSERBY_BOY, _0352
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0352:
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_035D:
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0368:

	step 3, 1
	step_end
	.align 4
_0370:

	step 13, 2
	step 14, 4
	step 32, 1
	step_end
	.align 4
_0380:

	step 32, 1
	step_end
	.align 4
_0388:

	step 33, 1
	step_end
	.align 4
_0390:

	step 65, 1
	step 33, 1
	step_end
scr_seq_T20R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0F2, _03BA
	goto_if_set FLAG_GAME_CLEAR, _0526
_03BA:
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03F5
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 172
	goto_if_ne _03F5
	get_partymon_forme VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0CDC
_03F5:
	goto_if_set FLAG_UNK_072, _04A1
	goto_if_set FLAG_UNK_983, _055F
	compare VAR_SCENE_ELMS_LAB, 9
	goto_if_ge _04A1
	compare VAR_SCENE_ELMS_LAB, 0
	goto_if_ne _043C
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	apply_movement obj_T20R0101_doctor, _0368
	wait_movement
	goto _049D

_043C:
	compare VAR_SCENE_ELMS_LAB, 2
	goto_if_gt _045A
	buffer_players_name 0
	gender_msgbox 12, 13
	wait_button_or_walk_away
	closemsg
	goto _049D

_045A:
	compare VAR_SCENE_ELMS_LAB, 5
	goto_if_gt _0474
	npc_msg 40
	wait_button_or_walk_away
	closemsg
	goto _049D

_0474:
	compare VAR_SCENE_ELMS_LAB, 6
	goto_if_ne _0492
	buffer_players_name 0
	gender_msgbox 42, 43
	wait_button_or_walk_away
	closemsg
	goto _049D

_0492:
	buffer_players_name 0
	gender_msgbox 44, 45
	wait_button_or_walk_away
	closemsg
_049D:
	releaseall
	end

_04A1:
	check_badge BADGE_EARTH, VAR_TEMP_x4003
	compare VAR_TEMP_x4003, 1
	goto_if_eq _0550
	goto_if_set FLAG_UNK_0F2, _0541
	goto_if_set FLAG_UNK_108, _051B
	goto_if_set FLAG_UNK_109, _051B
	check_badge BADGE_RISING, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _0510
	compare VAR_TEMP_x400F, 1
	goto_if_eq _0504
	buffer_players_name 0
	gender_msgbox 98, 99
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0504:
	gender_msgbox 100, 101
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0510:
	npc_msg 69
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_051B:
	npc_msg 70
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0526:
	buffer_players_name 0
	gender_msgbox 71, 72
	setvar VAR_SPECIAL_x8004, 456
	setvar VAR_SPECIAL_x8005, 1
	setflag FLAG_UNK_0F2
	callstd std_give_item_verbose
_0541:
	buffer_players_name 0
	gender_msgbox 73, 74
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0550:
	buffer_players_name 0
	gender_msgbox 102, 103
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_055F:
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	scrcmd_149 0
	compare VAR_TEMP_x4001, 175
	goto_if_eq _0599
	compare VAR_TEMP_x4001, 176
	goto_if_eq _0599
	compare VAR_TEMP_x4001, 468
	goto_if_eq _0599
	goto _0637

_0599:
	apply_movement obj_T20R0101_doctor, _0658
	wait_movement
	npc_msg 46
	buffer_players_name 0
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _05D9
	goto_if_unset FLAG_UNK_108, _05CF
	gender_msgbox 104, 105
	goto _05D3

_05CF:
	gender_msgbox 47, 48
_05D3:
	goto _05F2

_05D9:
	goto_if_unset FLAG_UNK_109, _05EE
	gender_msgbox 104, 105
	goto _05F2

_05EE:
	gender_msgbox 47, 48
_05F2:
	goto_if_no_item_space ITEM_EVERSTONE, 1, _064E
	callstd std_give_item_verbose
	setflag FLAG_UNK_072
	setflag FLAG_GOT_EVERSTONE_FROM_ELM
	setvar VAR_TEMP_x400F, 0
	npc_msg 49
	buffer_players_name 0
	gender_msgbox 50, 51
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0637:
	buffer_players_name 0
	gender_msgbox 53, 54
	setvar VAR_TEMP_x400F, 1
	goto _04A1

_064E:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

	.align 4
_0658:

	step 75, 1
	step 62, 1
	step_end
scr_seq_T20R0101_003:
	scrcmd_609
	lockall
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 3
	goto_if_ne _0689
	apply_movement obj_T20R0101_assistantm, _081C
	goto _06D4

_0689:
	compare VAR_TEMP_x4000, 4
	goto_if_ne _06A4
	apply_movement obj_T20R0101_assistantm, _082C
	goto _06D4

_06A4:
	compare VAR_TEMP_x4000, 5
	goto_if_ne _06BF
	apply_movement obj_T20R0101_assistantm, _083C
	goto _06D4

_06BF:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _06D4
	apply_movement obj_T20R0101_assistantm, _084C
_06D4:
	wait_movement
	buffer_players_name 0
	gender_msgbox 19, 20
	goto_if_no_item_space ITEM_POTION, 5, _0805
	setvar VAR_SPECIAL_x8004, 17
	setvar VAR_SPECIAL_x8005, 5
	callstd std_obtain_item_verbose
	closemsg
	setvar VAR_SCENE_ELMS_LAB, 2
	npc_msg 21
	closemsg
	compare VAR_TEMP_x4000, 3
	goto_if_ne _0736
	apply_movement obj_T20R0101_assistantm, _0864
	goto _0781

_0736:
	compare VAR_TEMP_x4000, 4
	goto_if_ne _0751
	apply_movement obj_T20R0101_assistantm, _0870
	goto _0781

_0751:
	compare VAR_TEMP_x4000, 5
	goto_if_ne _076C
	apply_movement obj_T20R0101_assistantm, _087C
	goto _0781

_076C:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _0781
	apply_movement obj_T20R0101_assistantm, _0888
_0781:
	wait_movement
	releaseall
	end

scr_seq_T20R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_40FC, 3
	goto_if_eq _080F
	compare VAR_SCENE_ELMS_LAB, 0
	goto_if_ne _07B2
	npc_msg 18
	goto _07FD

_07B2:
	compare VAR_SCENE_ELMS_LAB, 2
	goto_if_ne _07C8
	npc_msg 22
	goto _07FD

_07C8:
	compare VAR_SCENE_ELMS_LAB, 4
	goto_if_ne _07E4
	npc_msg 41
	setvar VAR_SCENE_ELMS_LAB, 5
	goto _07FD

_07E4:
	compare VAR_SCENE_ELMS_LAB, 6
	goto_if_ne _07FA
	npc_msg 55
	goto _07FD

_07FA:
	npc_msg 55
_07FD:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0805:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_080F:
	npc_msg 57
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_081C:

	step 75, 1
	step 78, 6
	step 32, 1
	step_end
	.align 4
_082C:

	step 75, 1
	step 78, 5
	step 32, 1
	step_end
	.align 4
_083C:

	step 75, 1
	step 78, 4
	step 32, 1
	step_end
	.align 4
_084C:

	step 75, 1
	step 78, 3
	step 32, 1
	step_end
	.align 4
_0864:

	step 79, 6
	step 34, 1
	step_end
	.align 4
_0870:

	step 79, 5
	step 34, 1
	step_end
	.align 4
_087C:

	step 79, 4
	step 34, 1
	step_end
	.align 4
_0888:

	step 79, 3
	step 34, 1
	step_end
scr_seq_T20R0101_002:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0A68
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_T20R0101_policeman, _0A7C
	wait_movement
	npc_msg 23
	closemsg
	clearflag FLAG_HIDE_ELMS_LAB_FRIEND
	play_se SEQ_SE_DP_KAIDAN2
	show_person obj_T20R0101_var_1
	wait_se SEQ_SE_DP_KAIDAN2
	callstd std_play_friend_music
	apply_movement obj_T20R0101_var_1, _0ADC
	apply_movement obj_T20R0101_policeman, _0A84
	wait_movement
	gender_msgbox 24, 25
	closemsg
	apply_movement obj_T20R0101_policeman, _0A90
	wait_movement
	npc_msg 26
	closemsg
	callstd std_fade_end_friend_music
_0904:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	name_rival VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0904
	apply_movement obj_T20R0101_policeman, _0A7C
	wait_movement
	buffer_rivals_name 1
	npc_msg 27
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0A59
	closemsg
	npc_msg 28
	closemsg
	apply_movement obj_T20R0101_var_1, _0AEC
	apply_movement obj_T20R0101_policeman, _0ABC
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T20R0101_policeman
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T20R0101_var_1, _0B08
	wait_movement
	buffer_players_name 0
	gender_msgbox 30, 31
	closemsg
	apply_movement obj_T20R0101_var_1, _0B18
	wait_movement
	setflag FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T20R0101_var_1
	wait_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_ELMS_LAB_OFFICER
	setflag FLAG_HIDE_ELMS_LAB_FRIEND
	setflag FLAG_UNK_079
	apply_movement obj_player, _0A74
	wait_movement
	apply_movement obj_T20R0101_doctor, _0B2C
	wait_movement
	buffer_players_name 0
	gender_msgbox 32, 33
	closemsg
	npc_msg 34
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	takeitem_no_check ITEM_MYSTERY_EGG, 1
	apply_movement obj_T20R0101_doctor, _0B34
	wait_movement
	npc_msg 35
	closemsg
	apply_movement obj_T20R0101_doctor, _0B48
	wait_movement
	gender_msgbox 36, 37
	closemsg
	apply_movement obj_T20R0101_doctor, _0B50
	wait_movement
	gender_msgbox 38, 39
	closemsg
	apply_movement obj_T20R0101_doctor, _0B64
	wait_movement
	setflag FLAG_HIDE_ROUTE_30_BATTLERS
	clearflag FLAG_HIDE_ROUTE_30_YOUNGSTER_JOEY
	setvar VAR_SCENE_ELMS_LAB, 4
	setvar VAR_UNK_408B, 1
	clearflag FLAG_HIDE_ROUTE_29_FRIEND
	clearflag FLAG_HIDE_ROUTE_29_MARILL
	setvar VAR_SCENE_MR_POKEMONS_HOUSE, 2
	setvar VAR_SCENE_NEW_BARK_TOWN_OW, 3
	clearflag FLAG_HIDE_CHERRYGROVE_MART_SPECIAL_CLERK
	setvar VAR_SCENE_ROUTE_30_PHONE_CALL, 1
	releaseall
	end

_0A59:
	npc_msg 29
	closemsg
	goto _0904

	.align 4
_0A68:

	step 76, 8
	step 2, 1
	step_end
	.align 4
_0A74:

	step 0, 1
	step_end
	.align 4
_0A7C:

	step 35, 1
	step_end
	.align 4
_0A84:

	step 63, 4
	step 33, 1
	step_end
	.align 4
_0A90:

	step 75, 1
	step 60, 1
	step 1, 1
	step 63, 2
	step 3, 1
	step 63, 2
	step 1, 1
	step 63, 2
	step 3, 1
	step 63, 2
	step_end
	.align 4
_0ABC:

	step 1, 1
	step 62, 1
	step 13, 6
	step 3, 1
	step 15, 1
	step 1, 1
	step 13, 2
	step_end
	.align 4
_0ADC:

	step 16, 6
	step 18, 1
	step 48, 2
	step_end
	.align 4
_0AEC:

	step 2, 1
	step 71, 1
	step 15, 1
	step 72, 1
	step 66, 1
	step 1, 1
	step_end
	.align 4
_0B08:

	step 14, 1
	step 12, 2
	step 35, 1
	step_end
	.align 4
_0B18:

	step 1, 1
	step 13, 6
	step 15, 1
	step 13, 2
	step_end
	.align 4
_0B2C:

	step 33, 1
	step_end
	.align 4
_0B34:

	step 49, 1
	step 71, 1
	step 80, 1
	step 72, 1
	step_end
	.align 4
_0B48:

	step 77, 1
	step_end
	.align 4
_0B50:

	step 0, 1
	step 8, 1
	step 64, 1
	step 1, 1
	step_end
	.align 4
_0B64:

	step 77, 1
	step_end
scr_seq_T20R0101_014:
	scrcmd_609
	lockall
	apply_movement obj_T20R0101_var_1, _0C78
	wait_movement
	apply_movement obj_T20R0101_var_1, _0C84
	wait_movement
	buffer_players_name 0
	gender_msgbox 58, 59
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0CA4
	apply_movement obj_T20R0101_var_1, _0C90
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_T20R0101_doctor, _0B2C
	wait_movement
	buffer_players_name 0
	gender_msgbox 60, 61
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0BEF
	callstd std_bag_is_full
	goto _0BF3

_0BEF:
	callstd std_give_item_verbose
_0BF3:
	buffer_players_name 0
	gender_msgbox 62, 63
	buffer_players_name 0
	gender_msgbox 64, 65
	closemsg
	apply_movement obj_T20R0101_var_1, _0CAC
	apply_movement obj_player, _0CB8
	wait_movement
	buffer_players_name 0
	gender_msgbox 67, 68
	closemsg
	apply_movement obj_T20R0101_var_1, _0CC4
	wait_movement
	hide_person obj_T20R0101_var_1
	setflag FLAG_HIDE_ELMS_LAB_FRIEND
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T20R0101_doctor, _0B2C
	apply_movement obj_player, _0CD4
	wait_movement
	npc_msg 69
	wait_button_or_walk_away
	closemsg
	releaseall
	setvar VAR_SCENE_ELMS_LAB, 9
	setvar VAR_UNK_4079, 3
	setflag FLAG_UNK_23B
	clearflag FLAG_HIDE_NEW_BARK_FRIEND_2
	setvar VAR_SCENE_NEW_BARK_EAST_EXIT, 2
	setvar VAR_UNK_407B, 2
	end

	.align 4
_0C78:

	step 2, 1
	step 75, 1
	step_end
	.align 4
_0C84:

	step 78, 3
	step 33, 1
	step_end
	.align 4
_0C90:

	step 12, 5
	step 15, 1
	step 12, 1
	step 34, 1
	step_end
	.align 4
_0CA4:

	step 12, 7
	step_end
	.align 4
_0CAC:

	step 13, 1
	step 34, 1
	step_end
	.align 4
_0CB8:

	step 63, 1
	step 35, 1
	step_end
	.align 4
_0CC4:

	step 77, 3
	step 78, 1
	step 77, 4
	step_end
	.align 4
_0CD4:

	step 32, 1
	step_end
_0CDC:
	compare VAR_TEMP_x4006, 1
	goto_if_eq _0DD2
	compare VAR_UNK_412F, 2
	goto_if_ge _1044
	compare VAR_UNK_412F, 1
	goto_if_eq _0FE4
	call _0DE3
	apply_movement obj_T20R0101_doctor, _0F48
	wait_movement
	npc_msg 75
	closemsg
	apply_movement obj_T20R0101_doctor, _0F50
	wait_movement
	apply_movement obj_partner_poke, _0F38
	wait_movement
	npc_msg 76
	closemsg
	apply_movement obj_T20R0101_doctor, _0F48
	wait_movement
	npc_msg 77
	closemsg
	apply_movement obj_T20R0101_doctor, _0F60
	wait_movement
	npc_msg 78
	closemsg
	apply_movement obj_T20R0101_doctor, _0FBC
	wait_movement
	npc_msg 79
	closemsg
	get_person_coords 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8006, 4
	goto_if_ne _0D81
	apply_movement obj_T20R0101_doctor, _0F98
	goto _0D89

_0D81:
	apply_movement obj_T20R0101_doctor, _0F6C
_0D89:
	wait_movement
	npc_msg 80
	closemsg
	compare VAR_SPECIAL_x8006, 4
	goto_if_ne _0DAD
	apply_movement obj_T20R0101_doctor, _0FDC
	wait_movement
	goto _0DB7

_0DAD:
	apply_movement obj_T20R0101_doctor, _0FCC
	wait_movement
_0DB7:
	buffer_players_name 0
	gender_msgbox 81, 82
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_412F, 1
	addvar VAR_TEMP_x4006, 1
	releaseall
	end

_0DD2:
	npc_msg 83
	wait_button_or_walk_away
	closemsg
	addvar VAR_TEMP_x4006, 1
	releaseall
	end

_0DE3:
	buffer_players_name 0
	gender_msgbox 84, 85
	closemsg
	get_player_facing VAR_TEMP_x4005
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_person_coords 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	compare VAR_TEMP_x4005, 0
	goto_if_ne _0E27
	apply_movement obj_player, _0EB8
	wait_movement
	apply_movement obj_partner_poke, _0F0C
	goto _0EA8

_0E27:
	compare VAR_TEMP_x4005, 3
	goto_if_ne _0E4C
	apply_movement obj_player, _0EC4
	wait_movement
	apply_movement obj_partner_poke, _0F1C
	goto _0EA8

_0E4C:
	compare VAR_TEMP_x4005, 2
	goto_if_ne _0E71
	apply_movement obj_player, _0ED4
	wait_movement
	apply_movement obj_partner_poke, _0F30
	goto _0EA8

_0E71:
	compare VAR_SPECIAL_x8006, 4
	goto_if_ne _0E96
	apply_movement obj_player, _0EF8
	wait_movement
	apply_movement obj_partner_poke, _0F30
	goto _0EA8

_0E96:
	apply_movement obj_player, _0EE4
	wait_movement
	apply_movement obj_partner_poke, _0F1C
_0EA8:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	return

	.align 4
_0EB8:

	step 13, 1
	step 32, 1
	step_end
	.align 4
_0EC4:

	step 13, 2
	step 15, 1
	step 32, 1
	step_end
	.align 4
_0ED4:

	step 13, 2
	step 14, 1
	step 32, 1
	step_end
	.align 4
_0EE4:

	step 14, 1
	step 13, 3
	step 15, 1
	step 32, 1
	step_end
	.align 4
_0EF8:

	step 15, 1
	step 13, 3
	step 14, 1
	step 32, 1
	step_end
	.align 4
_0F0C:

	step 15, 1
	step 13, 1
	step 32, 1
	step_end
	.align 4
_0F1C:

	step 13, 1
	step 15, 2
	step 12, 1
	step 32, 1
	step_end
	.align 4
_0F30:

	step 32, 1
	step_end
	.align 4
_0F38:

	step 49, 1
	step 65, 1
	step 48, 1
	step_end
	.align 4
_0F48:

	step 33, 1
	step_end
	.align 4
_0F50:

	step 13, 1
	step 15, 1
	step 33, 1
	step_end
	.align 4
_0F60:

	step 75, 1
	step 63, 1
	step_end
	.align 4
_0F6C:

	step 12, 1
	step 14, 2
	step 32, 1
	step 63, 2
	step 71, 1
	step 11, 1
	step 32, 1
	step 10, 1
	step 72, 1
	step 63, 2
	step_end
	.align 4
_0F98:

	step 12, 1
	step 63, 2
	step 71, 1
	step 11, 1
	step 32, 1
	step 10, 1
	step 72, 1
	step 63, 2
	step_end
	.align 4
_0FBC:

	step 12, 1
	step 14, 1
	step 33, 1
	step_end
	.align 4
_0FCC:

	step 13, 1
	step 15, 2
	step 33, 1
	step_end
	.align 4
_0FDC:

	step 13, 1
	step_end
_0FE4:
	mon_get_friendship VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 220
	goto_if_ge _0FFF
	goto _03F5

_0FFF:
	call _0DE3
	gender_msgbox 86, 87
	closemsg
	apply_movement obj_T20R0101_doctor, _0F60
	wait_movement
	npc_msg 88
	closemsg
	apply_movement obj_T20R0101_doctor, _0F50
	wait_movement
	npc_msg 89
	closemsg
	apply_movement obj_T20R0101_doctor, _0FBC
	wait_movement
	npc_msg 90
	wait_button_or_walk_away
	closemsg
	setvar VAR_UNK_412F, 2
	releaseall
	end

_1044:
	npc_msg 91
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0101_004:
	end

scr_seq_T20R0101_005:
	buffer_players_name 0
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 93
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0101_006:
	buffer_players_name 0
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 94
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0101_007:
	buffer_players_name 0
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 95
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0101_008:
	buffer_players_name 0
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 96
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0101_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 97
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0101_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GOT_STARTER, _1107
	npc_msg 92
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _1103
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	heal_party
	scrcmd_436
	restore_overworld
	wait_fanfare
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
_1103:
	releaseall
	end

_1107:
	npc_msg 14
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T20R0101_015:
	scrcmd_609
	lockall
	apply_movement obj_T20R0101_assistantm, _113C
	wait_movement
	buffer_players_name 0
	npc_msg 56
	closemsg
	apply_movement obj_T20R0101_assistantm, _1148
	wait_movement
	setvar VAR_UNK_40FC, 3
	releaseall
	end

	.align 4
_113C:

	step 14, 5
	step 13, 1
	step_end
	.align 4
_1148:

	step 12, 1
	step 15, 5
	step 33, 1
	step_end
	.align 4


.close
