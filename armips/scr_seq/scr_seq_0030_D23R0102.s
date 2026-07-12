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

.include "armips/scr_seq/event_D23R0102.inc"


// text archive to grab from: 066.txt

.create "build/a012/2_030", 0


scrdef scr_seq_D23R0102_000
scrdef scr_seq_D23R0102_001
scrdef scr_seq_D23R0102_002
scrdef scr_seq_D23R0102_003
scrdef scr_seq_D23R0102_004
scrdef scr_seq_D23R0102_005
scrdef scr_seq_D23R0102_006
scrdef scr_seq_D23R0102_007
scrdef scr_seq_D23R0102_008
scrdef scr_seq_D23R0102_009
scrdef scr_seq_D23R0102_010
scrdef_end

scr_seq_D23R0102_007:
	setflag FLAG_HIDE_ROCKET_TAKEOVER_1
	setflag FLAG_HIDE_ROCKET_TAKEOVER_2
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _004D
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_1
	goto _0068

_004D:
	compare VAR_SCENE_ROCKET_TAKEOVER, 2
	goto_if_ge _0064
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_2
	goto _0068

_0064:
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_2
_0068:
	end

scr_seq_D23R0102_008:
	compare VAR_SCENE_ROCKET_TAKEOVER, 5
	goto_if_ne _0083
	move_person_facing obj_D23R0102_policeman, 2, 1, 7, DIR_EAST
_0083:
	end

scr_seq_D23R0102_000:
	simple_npc_msg 6
	end

scr_seq_D23R0102_001:
	simple_npc_msg 7
	end

scr_seq_D23R0102_002:
	simple_npc_msg 8
	end

scr_seq_D23R0102_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_JIGGLYPUFF, 0
	npc_msg 3
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D23R0102_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _00F7
	npc_msg 2
	goto _00FA

_00F7:
	npc_msg 1
_00FA:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D23R0102_005:
	simple_npc_msg 0
	end

scr_seq_D23R0102_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 5
	goto_if_ne _0133
	npc_msg 5
	goto _0136

_0133:
	npc_msg 4
_0136:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_D23R0102_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _015C
	npc_msg 9
	goto _0162

_015C:
	goto _016A

_0162:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_016A:
	hasitem ITEM_BLUE_CARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _01B5
	npc_msg 10
	closemsg
	goto_if_no_item_space ITEM_BLUE_CARD, 1, _0539
	callstd std_give_item_verbose
	closemsg
	addvar VAR_NUM_TIMES_GIVEN_BLUE_CARD, 1
	releaseall
	end

_01B5:
	compare VAR_NUM_TIMES_GIVEN_BLUE_CARD, 2
	goto_if_lt _01CF
	buffer_players_name 0
	gender_msgbox 12, 13
	goto _01D2

_01CF:
	npc_msg 11
_01D2:
	closemsg
	goto_if_set FLAG_DAILY_HEARD_BUENAS_PASSWORD, _01EA
	npc_msg 28
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01EA:
	goto_if_set FLAG_DAILY_BUENAS_PASSWORD, _0547
	npc_msg 14
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0552
	buffer_players_name 0
	compare VAR_NUM_TIMES_GIVEN_BLUE_CARD, 2
	goto_if_lt _0227
	gender_msgbox 17, 18
	goto _022B

_0227:
	gender_msgbox 15, 16
_022B:
	closemsg
	apply_movement obj_D23R0102_gswoman1, _0620
	wait_movement
	gender_msgbox 20, 21
	closemsg
	get_player_facing VAR_TEMP_x4000
	scrcmd_729 VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_eq _0295
	release obj_partner_poke
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0279
	apply_movement obj_player, _05CC
	apply_movement obj_partner_poke, _05E0
	goto _0289

_0279:
	apply_movement obj_player, _05F0
	apply_movement obj_partner_poke, _0600
_0289:
	wait_movement
	lock obj_partner_poke
	goto _02BA

_0295:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _02B0
	apply_movement obj_player, _05CC
	goto _02B8

_02B0:
	apply_movement obj_player, _05F0
_02B8:
	wait_movement
_02BA:
	get_buenas_password VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	touchscreen_menu_hide
	menu_init 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add VAR_SPECIAL_x8000, 255, 0
	addvar VAR_SPECIAL_x8000, 1
	menu_item_add VAR_SPECIAL_x8000, 255, 1
	addvar VAR_SPECIAL_x8000, 1
	menu_item_add VAR_SPECIAL_x8000, 255, 2
	menu_exec
	touchscreen_menu_show
	setflag FLAG_UNK_102
	setflag FLAG_DAILY_BUENAS_PASSWORD
	apply_movement obj_D23R0102_gswoman1, _0628
	wait_movement
	compare VAR_SPECIAL_RESULT, VAR_SPECIAL_x8001
	goto_if_ne _055D
	npc_msg 22
	apply_movement obj_D23R0102_gswoman1, _0630
	wait_movement
	apply_movement obj_player, _060C
	wait_movement
	play_se SEQ_SE_GS_OKOZUKAI
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_ge _033F
	addvar VAR_BLUE_CARD_POINTS, 1
_033F:
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_lt _0387
	compare VAR_NUM_TIMES_GIVEN_BLUE_CARD, 2
	goto_if_ge _0387
	apply_movement obj_D23R0102_gswoman1, _0628
	wait_movement
	gender_msgbox 24, 25
	closemsg
	register_gear_number PHONE_CONTACT_BUENA
	npc_msg 26
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	closemsg
	apply_movement obj_D23R0102_gswoman1, _0628
	wait_movement
	npc_msg 27
	closemsg
_0387:
	compare VAR_BLUE_CARD_POINTS, 1
	goto_if_eq _0499
	compare VAR_BLUE_CARD_POINTS, 3
	goto_if_eq _04AD
	compare VAR_BLUE_CARD_POINTS, 5
	goto_if_eq _04C1
	compare VAR_BLUE_CARD_POINTS, 10
	goto_if_eq _04D5
	compare VAR_BLUE_CARD_POINTS, 15
	goto_if_eq _04E9
	compare VAR_BLUE_CARD_POINTS, 20
	goto_if_eq _04FD
	compare VAR_BLUE_CARD_POINTS, 25
	goto_if_eq _0511
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_eq _0525
	goto _0568

_03F5:
	npc_msg 32
	closemsg
	apply_movement obj_D23R0102_gswoman1, _0638
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D23R0102_gswoman2_2, _0648
	apply_movement obj_player, _0614
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_int 0, VAR_BLUE_CARD_POINTS
	buffer_item_name 1, VAR_SPECIAL_x8004
	npc_msg 35
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0539
	callstd std_give_item_verbose
_0450:
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_lt _0486
	npc_msg 36
	closemsg
	play_fanfare SEQ_ME_KEYITEM
	npc_msg 37
	wait_fanfare
	closemsg
	compare VAR_NUM_TIMES_GIVEN_BLUE_CARD, 255
	goto_if_ge _0480
	addvar VAR_NUM_TIMES_GIVEN_BLUE_CARD, 1
_0480:
	setvar VAR_BLUE_CARD_POINTS, 0
_0486:
	npc_msg 38
	closemsg
	apply_movement obj_D23R0102_gswoman2_2, _0654
	wait_movement
	releaseall
	end

_0499:
	setvar VAR_SPECIAL_x8004, 4
	setvar VAR_SPECIAL_x8005, 1
	goto _03F5

_04AD:
	setvar VAR_SPECIAL_x8004, 23
	setvar VAR_SPECIAL_x8005, 1
	goto _03F5

_04C1:
	setvar VAR_SPECIAL_x8004, 46
	setvar VAR_SPECIAL_x8005, 1
	goto _03F5

_04D5:
	setvar VAR_SPECIAL_x8004, 47
	setvar VAR_SPECIAL_x8005, 1
	goto _03F5

_04E9:
	setvar VAR_SPECIAL_x8004, 48
	setvar VAR_SPECIAL_x8005, 1
	goto _03F5

_04FD:
	setvar VAR_SPECIAL_x8004, 92
	setvar VAR_SPECIAL_x8005, 1
	goto _03F5

_0511:
	setvar VAR_SPECIAL_x8004, 50
	setvar VAR_SPECIAL_x8005, 1
	goto _03F5

_0525:
	setvar VAR_SPECIAL_x8004, 45
	setvar VAR_SPECIAL_x8005, 1
	goto _03F5

_0539:
	callstd std_bag_is_full
	closemsg
	goto _0450

_0547:
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0552:
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_055D:
	npc_msg 23
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0568:
	npc_msg 32
	closemsg
	apply_movement obj_D23R0102_gswoman1, _0638
	wait_movement
	releaseall
	end

scr_seq_D23R0102_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_eq _05C0
	hasitem ITEM_BLUE_CARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _05B0
	npc_msg 33
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05B0:
	buffer_int 0, VAR_BLUE_CARD_POINTS
	npc_msg 34
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_05C0:
	npc_msg 39
	wait_button_or_walk_away
	closemsg
	releaseall
	end

	.align 4
_05CC:

	step 1, 1
	step 13, 2
	step 14, 1
	step 34, 1
	step_end
	.align 4
_05E0:

	step 13, 2
	step 14, 1
	step 32, 1
	step_end
	.align 4
_05F0:

	step 1, 1
	step 13, 1
	step 34, 1
	step_end
	.align 4
_0600:

	step 13, 1
	step 32, 1
	step_end
	.align 4
_060C:

	step 32, 1
	step_end
	.align 4
_0614:

	step 13, 1
	step 14, 2
	step_end
	.align 4
_0620:

	step 34, 1
	step_end
	.align 4
_0628:

	step 33, 1
	step_end
	.align 4
_0630:

	step 13, 1
	step_end
	.align 4
_0638:

	step 0, 1
	step 12, 1
	step 34, 1
	step_end
	.align 4
_0648:

	step 13, 2
	step 15, 3
	step_end
	.align 4
_0654:

	step 14, 3
	step 12, 2
	step 33, 1
	step_end
	.align 4


.close
