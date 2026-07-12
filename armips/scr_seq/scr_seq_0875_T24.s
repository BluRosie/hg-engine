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

.include "armips/scr_seq/event_T24.inc"


// text archive to grab from: 572.txt

.create "build/a012/2_875", 0


scrdef scr_seq_T24_000
scrdef scr_seq_T24_001
scrdef scr_seq_T24_002
scrdef scr_seq_T24_003
scrdef scr_seq_T24_004
scrdef scr_seq_T24_005
scrdef scr_seq_T24_006
scrdef scr_seq_T24_007
scrdef scr_seq_T24_008
scrdef scr_seq_T24_009
scrdef scr_seq_T24_010
scrdef scr_seq_T24_011
scrdef scr_seq_T24_012
scrdef scr_seq_T24_013
scrdef scr_seq_T24_014
scrdef scr_seq_T24_015
scrdef_end

scr_seq_T24_005:
	clearflag FLAG_SYS_CIANWOOD_WATERFALL_DISABLE
	setvar VAR_UNK_40EB, 0
	end

scr_seq_T24_006:
	scrcmd_609
	lockall
	apply_movement obj_T24_middlewoman1_2, _00C4
	apply_movement obj_player, _00E4
	wait_movement
	npc_msg 2
	goto_if_no_item_space ITEM_HM02, 1, _00B8
	callstd std_give_item_verbose
	setflag FLAG_GOT_HM02
	setvar VAR_UNK_4116, 2
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	apply_movement obj_T24_middlewoman1_2, _00D8
	wait_movement
	compare VAR_MIDGAME_BADGES, 4
	goto_if_eq _00F0
	releaseall
	end

_00B8:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

	.align 4
_00C4:

	step 36, 1
	step 75, 1
	step 12, 2
	step 2, 1
	step_end
	.align 4
_00D8:

	step 13, 2
	step 36, 1
	step_end
	.align 4
_00E4:

	step 65, 3
	step 3, 1
	step_end
_00F0:
	setvar VAR_SCENE_ROCKET_TAKEOVER, 2
	setflag FLAG_UNK_0C5
	setflag FLAG_ROCKET_TAKEOVER_ACTIVE
	compare VAR_UNK_40F8, 0
	goto_if_ne _0111
	setvar VAR_UNK_40F8, 2
_0111:
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 2
	callstd std_phone_call
	setvar VAR_MIDGAME_BADGES, 5
	releaseall
	end

scr_seq_T24_001:
	end

scr_seq_T24_002:
	scrcmd_609
	lockall
	apply_movement obj_player, _0310
	wait_movement
	play_cry SPECIES_SUICUNE, 0
	release obj_T24_follower_mon_static_suicune
	scrcmd_523 obj_T24_follower_mon_static_suicune, 2, 90, 2, 0
	lock obj_T24_follower_mon_static_suicune
	wait_cry
	apply_movement obj_T24_follower_mon_static_suicune, _02F4
	wait_movement
	apply_movement obj_T24_follower_mon_static_suicune, _0338
	apply_movement obj_player, _0320
	wait_movement
	wait 30, VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T24_follower_mon_static_suicune, _0300
	apply_movement obj_player, _0344
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	hide_person obj_T24_follower_mon_static_suicune
	setflag FLAG_HIDE_CIANWOOD_SUICUNE
	addvar VAR_UNK_4076, 1
	clearflag FLAG_HIDE_CIANWOOD_EUSINE
	show_person obj_T24_minaki
	callstd std_play_eusine_music
	apply_movement obj_T24_minaki, _0358
	apply_movement obj_player, _036C
	wait_movement
	buffer_players_name 0
	npc_msg 15
	wait_button
	closemsg
	trainer_battle TRAINER_MYSTERY_MAN_EUSINE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0227
	buffer_players_name 0
	npc_msg 16
	closemsg
	apply_movement obj_T24_minaki, _037C
	wait_movement
	hide_person obj_T24_minaki
	setflag FLAG_HIDE_CIANWOOD_EUSINE
	clearflag FLAG_HIDE_ROUTE_42_SUICUNE
	setvar VAR_UNK_4092, 1
	releaseall
	end

_0227:
	hide_person obj_T24_minaki
	setflag FLAG_HIDE_CIANWOOD_EUSINE
	clearflag FLAG_HIDE_ROUTE_42_SUICUNE
	setvar VAR_UNK_4092, 1
	white_out
	releaseall
scr_seq_T24_003:
	end

scr_seq_T24_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GAME_CLEAR, _0276
	goto_if_set FLAG_GOT_HM02, _026B
	npc_msg 0
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_026B:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0276:
	check_registered_phone_number PHONE_CONTACT_CHUCK, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _02CD
	compare VAR_TEMP_x4002, 1
	goto_if_ge _02E9
	npc_msg 7
_0299:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02BD
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _02D8
	end

_02BD:
	buffer_players_name 0
	npc_msg 8
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_CHUCK
_02CD:
	npc_msg 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02D8:
	setvar VAR_TEMP_x4002, 1
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_02E9:
	npc_msg 11
	goto _0299

	.align 4
_02F4:

	step 111, 1
	step_end
	.align 4
_0300:

	step 112, 1
	step 69, 1
	step_end
	.align 4
_0310:

	step 0, 1
	step 75, 1
	step_end
	.align 4
_0320:

	step 0, 1
	step_end
	.align 4
_0338:

	step 1, 1
	step_end
	.align 4
_0344:

	step 3, 1
	step 63, 1
	step 15, 2
	step_end
	.align 4
_0358:

	step 12, 5
	step 15, 2
	step 12, 2
	step_end
	.align 4
_036C:

	step 63, 6
	step 1, 1
	step_end
	.align 4
_037C:

	step 13, 2
	step 14, 2
	step 13, 5
	step_end
scr_seq_T24_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 6
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _047B
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0481
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 7
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _03FF
	apply_movement obj_player, _0498
	goto _0422

_03FF:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _041A
	apply_movement obj_player, _04B0
	goto _0422

_041A:
	apply_movement obj_player, _04BC
_0422:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0449
	apply_movement obj_partner_poke, _04D0
	wait_movement
_0449:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 35
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 8
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_047B:
	closemsg
	releaseall
	end

_0481:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 9
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_0498:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_04B0:

	step 12, 3
	step 33, 1
	step_end
	.align 4
_04BC:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.align 4
_04D0:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
scr_seq_T24_008:
	direction_signpost 18, 0, 15, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T24_009:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 19, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T24_010:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 20, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T24_011:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 21, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T24_004:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 22, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T24_012:
	simple_npc_msg 12
	end

scr_seq_T24_013:
	simple_npc_msg 13
	end

scr_seq_T24_014:
	simple_npc_msg 14
	end

scr_seq_T24_015:
	simple_npc_msg 17
	end
	.align 4


.close
