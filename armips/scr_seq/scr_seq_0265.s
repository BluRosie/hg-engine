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


// text archive to grab from: 439.txt

.create "build/a012/2_265", 0


scrdef scr_seq_0265_000
scrdef scr_seq_0265_001
scrdef_end

scr_seq_0265_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	buffer_day_care_mon_nicks
	get_day_care_state VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0094
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _0151
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _015E
	compare VAR_UNK_408E, 4
	goto_if_eq _0057
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0057:
	buffer_players_name 0
	gender_msgbox 13, 14
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0082
	setflag FLAG_UNK_99E
	npc_msg 15
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0082:
	clearflag FLAG_UNK_99E
	scrcmd_149 5
	npc_msg 16
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0094:
	scrcmd_149 5
	npc_msg 1
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00F6
	npc_msg 10
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00F6
	touchscreen_menu_show
	clearflag FLAG_UNK_067
	reset_day_care_egg
	compare VAR_UNK_408E, 3
	goto_if_ne _00EB
	npc_msg 12
	setvar VAR_UNK_408E, 4
	setflag FLAG_UNK_992
	goto _0057

_00EB:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00F6:
	touchscreen_menu_show
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_ne _0114
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0114:
	buffer_players_name 0
	npc_msg 5
	play_fanfare SEQ_ME_TAMAGO_GET
	wait_fanfare
	give_day_care_egg
	clearflag FLAG_UNK_067
	compare VAR_UNK_408E, 3
	goto_if_ne _0146
	npc_msg 11
	setvar VAR_UNK_408E, 4
	setflag FLAG_UNK_992
	goto _0057

_0146:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0151:
	buffer_day_care_mon_nicks
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_015E:
	buffer_day_care_mon_nicks
	npc_msg 9
	get_day_care_compatibility VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0196
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01BD
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _01E4
	goto _020B

_0196:
	compare VAR_UNK_408E, 4
	goto_if_ne _01B2
	npc_msg 47
	goto _0057

_01B2:
	npc_msg 17
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01BD:
	compare VAR_UNK_408E, 4
	goto_if_ne _01D9
	npc_msg 48
	goto _0057

_01D9:
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_01E4:
	compare VAR_UNK_408E, 4
	goto_if_ne _0200
	npc_msg 49
	goto _0057

_0200:
	npc_msg 19
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_020B:
	compare VAR_UNK_408E, 4
	goto_if_ne _0227
	npc_msg 50
	goto _0057

_0227:
	npc_msg 20
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_0265_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	show_money_box 20, 2
	get_day_care_state VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _042E
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _0455
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _0620
	npc_msg 21
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0290
	touchscreen_menu_show
	npc_msg 26
	wait_button_or_walk_away
	closemsg
	hide_money_box
	releaseall
	end

_0290:
	party_count_not_egg VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03FB
	count_alive_mons_and_pc VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _041F
	npc_msg 22
	closemsg
	hide_money_box
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setvar VAR_SPECIAL_RESULT, 0
_02CB:
	scrcmd_551 VAR_SPECIAL_RESULT
	scrcmd_552 VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02F4
	pokemon_summary_screen 0, VAR_SPECIAL_x8000, 0
	get_move_selection 0, VAR_SPECIAL_RESULT
	goto _02CB

_02F4:
	compare VAR_SPECIAL_x8000, 255
	goto_if_eq _03C6
	day_care_sanitize_mon VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _03A1
	get_partymon_species VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03B1
	count_alive_mons VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _040A
	put_mon_in_day_care VAR_SPECIAL_x8000
	call _038B
	get_tail_day_care_mon_species_and_nick VAR_SPECIAL_x8001
	setflag FLAG_UNK_068
	get_day_care_state VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _0363
	goto _0374

_0363:
	play_cry VAR_SPECIAL_x8001, 0
	npc_msg 23
	wait_cry
	goto _03DB

_0374:
	touchscreen_menu_show
	play_cry VAR_SPECIAL_x8001, 0
	npc_msg 41
	wait_button_or_walk_away
	closemsg
	wait_cry
	hide_money_box
	releaseall
	end

_038B:
	restore_overworld
	show_money_box 20, 2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	return

_03A1:
	call _038B
	touchscreen_menu_show
	hide_money_box
	callstd std_bag_is_full_griseous_orb
	end

_03B1:
	call _038B
	touchscreen_menu_show
	npc_msg 40
	wait_button_or_walk_away
	closemsg
	hide_money_box
	releaseall
	end

_03C6:
	call _038B
	touchscreen_menu_show
_03CE:
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	hide_money_box
	releaseall
	end

_03DB:
	npc_msg 24
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0290
	touchscreen_menu_show
	goto _03CE

_03FB:
	touchscreen_menu_show
	npc_msg 36
	wait_button_or_walk_away
	closemsg
	hide_money_box
	releaseall
	end

_040A:
	call _038B
	touchscreen_menu_show
	npc_msg 38
	wait_button_or_walk_away
	closemsg
	hide_money_box
	releaseall
	end

_041F:
	touchscreen_menu_show
	npc_msg 39
	wait_button_or_walk_away
	closemsg
	hide_money_box
	releaseall
	end

_042E:
	npc_msg 25
	wait_button_or_walk_away
	closemsg
	hide_money_box
	releaseall
	end

_043B:
	npc_msg 31
	return

_0440:
	buffer_day_care_mon_growth VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 0
	call_if_ne _043B
	return

_0455:
	npc_msg 30
	setvar VAR_SPECIAL_x8000, 0
	call _0440
	npc_msg 24
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0290
	npc_msg 37
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0498
	touchscreen_menu_show
	goto _03CE

_0498:
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _05DC
	get_day_care_state VAR_SPECIAL_RESULT
	setvar VAR_SPECIAL_x8001, 0
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _0520
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_x8001
	buffer_day_care_mon_stats 0, 1, 2, 0
	menu_item_add 136, 255, 0
	buffer_day_care_mon_stats 0, 1, 2, 1
	menu_item_add 137, 255, 1
	menu_item_add 138, 255, 2
	menu_exec
	switch VAR_SPECIAL_x8001
	case 0, _0520
	case 1, _0520
	touchscreen_menu_show
	goto _03CE

_0520:
	buffer_day_care_withdraw_cost VAR_SPECIAL_x8004, VAR_SPECIAL_x8001
	npc_msg 33
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0544
	touchscreen_menu_show
	goto _03CE

_0544:
	hasenoughmoneyvar VAR_SPECIAL_RESULT, VAR_SPECIAL_x8004
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0566
	touchscreen_menu_show
	npc_msg 27
	wait_button_or_walk_away
	closemsg
	hide_money_box
	releaseall
	end

_0566:
	retrieve_day_care_mon VAR_SPECIAL_x8002, VAR_SPECIAL_x8001
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	update_day_care_mon_objects
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	submoneyvar VAR_SPECIAL_x8004
	update_money_box
	play_se SEQ_SE_DP_REGI
	wait_se SEQ_SE_DP_REGI
	npc_msg 34
	play_cry VAR_SPECIAL_x8002, 0
	buffer_players_name 1
	npc_msg 35
	wait_cry
	get_day_care_state VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _05BE
	touchscreen_menu_show
	goto _03CE

_05BE:
	npc_msg 28
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0498
	touchscreen_menu_show
	goto _03CE

_05DC:
	touchscreen_menu_show
	npc_msg 32
	wait_button_or_walk_away
	closemsg
	hide_money_box
	releaseall
	end

_0620:
	npc_msg 30
	setvar VAR_SPECIAL_x8000, 0
	call _0440
	setvar VAR_SPECIAL_x8000, 1
	call _0440
	npc_msg 37
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0498
	touchscreen_menu_show
	npc_msg 29
	wait_button_or_walk_away
	closemsg
	hide_money_box
	releaseall
	end

	.align 4


.close
