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

.include "armips/scr_seq/event_T11R0702.inc"


// text archive to grab from: 538.txt

.create "build/a012/2_838", 0


scrdef scr_seq_T11R0702_000
scrdef scr_seq_T11R0702_001
scrdef scr_seq_T11R0702_002
scrdef scr_seq_T11R0702_003
scrdef scr_seq_T11R0702_004
scrdef scr_seq_T11R0702_005
scrdef scr_seq_T11R0702_006
scrdef scr_seq_T11R0702_007
scrdef_end

scr_seq_T11R0702_006:
	setflag FLAG_HIDE_SILPH_ROTOM_HEAT
	setflag FLAG_HIDE_SILPH_ROTOM_WASH
	setflag FLAG_HIDE_SILPH_ROTOM_FROST
	setflag FLAG_HIDE_SILPH_ROTOM_FAN
	setflag FLAG_HIDE_SILPH_ROTOM_MOW
	get_owned_rotom_formes VAR_TEMP_x4000, VAR_TEMP_x4001, VAR_TEMP_x4002, VAR_TEMP_x4003, VAR_TEMP_x4004
	compare VAR_TEMP_x4000, 0
	call_if_eq _0085
	compare VAR_TEMP_x4001, 0
	call_if_eq _008B
	compare VAR_TEMP_x4002, 0
	call_if_eq _0091
	compare VAR_TEMP_x4003, 0
	call_if_eq _0097
	compare VAR_TEMP_x4004, 0
	call_if_eq _009D
	end

_0085:
	clearflag FLAG_HIDE_SILPH_ROTOM_HEAT
	return

_008B:
	clearflag FLAG_HIDE_SILPH_ROTOM_WASH
	return

_0091:
	clearflag FLAG_HIDE_SILPH_ROTOM_FROST
	return

_0097:
	clearflag FLAG_HIDE_SILPH_ROTOM_FAN
	return

_009D:
	clearflag FLAG_HIDE_SILPH_ROTOM_MOW
	return

scr_seq_T11R0702_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8004, 1
	goto _0107

scr_seq_T11R0702_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8004, 4
	goto _0107

scr_seq_T11R0702_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8004, 3
	goto _0107

scr_seq_T11R0702_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8004, 2
	goto _0107

scr_seq_T11R0702_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8004, 5
	goto _0107

_0107:
	player_has_species VAR_SPECIAL_RESULT, SPECIES_ROTOM
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _07D8
	compare VAR_SPECIAL_x8004, 1
	call_if_eq _0724
	compare VAR_SPECIAL_x8004, 3
	call_if_eq _0729
	compare VAR_SPECIAL_x8004, 2
	call_if_eq _072E
	compare VAR_SPECIAL_x8004, 4
	call_if_eq _0733
	compare VAR_SPECIAL_x8004, 5
	call_if_eq _0738
	count_transformed_rotoms_in_party VAR_SPECIAL_x8003, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8003, 1
	goto_if_ge _01E5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _073D
	goto _0189

_0189:
	compare VAR_SPECIAL_x8004, 1
	call_if_eq _06FC
	compare VAR_SPECIAL_x8004, 3
	call_if_eq _0704
	compare VAR_SPECIAL_x8004, 2
	call_if_eq _070C
	compare VAR_SPECIAL_x8004, 4
	call_if_eq _0714
	compare VAR_SPECIAL_x8004, 5
	call_if_eq _071C
	count_party_mons_of_species VAR_SPECIAL_RESULT, SPECIES_ROTOM
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03B2
	goto _03C0

_01E5:
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 15, 255, 0
	menu_item_add 14, 255, 1
	menu_item_add 16, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0189
	case 1, _0231
	goto _073D

_0231:
	count_transformed_rotoms_in_party VAR_SPECIAL_x8003, VAR_SPECIAL_RESULT
	copyvar VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8003, 2
	goto_if_ge _0332
	goto _0252

_0252:
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	npc_msg 11
	update_rotom_forme VAR_SPECIAL_x8000, 0, 0, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	get_party_mon_forme VAR_SPECIAL_x8000, VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 1
	call_if_eq _0300
	compare VAR_SPECIAL_x8004, 3
	call_if_eq _030A
	compare VAR_SPECIAL_x8004, 2
	call_if_eq _0314
	compare VAR_SPECIAL_x8004, 4
	call_if_eq _031E
	compare VAR_SPECIAL_x8004, 5
	call_if_eq _0328
	goto _02C1

_02C1:
	scrcmd_815 0
	get_player_coords VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	get_player_facing VAR_SPECIAL_RESULT
	warp MAP_T11R0702, 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	nop_var_490 VAR_TEMP_x400B
	compare VAR_TEMP_x400A, 1
	call_if_eq _07BA
	goto _08A4

_0300:
	clearflag FLAG_HIDE_SILPH_ROTOM_HEAT
	show_person obj_T11R0702_rotomf
	return

_030A:
	clearflag FLAG_HIDE_SILPH_ROTOM_FROST
	show_person obj_T11R0702_rotomi
	return

_0314:
	clearflag FLAG_HIDE_SILPH_ROTOM_WASH
	show_person obj_T11R0702_rotomw
	return

_031E:
	clearflag FLAG_HIDE_SILPH_ROTOM_FAN
	show_person obj_T11R0702_rotoms
	return

_0328:
	clearflag FLAG_HIDE_SILPH_ROTOM_MOW
	show_person obj_T11R0702_rotomg
	return

_0332:
	npc_msg 7
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	party_select_ui
	get_party_selection VAR_SPECIAL_x8000
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8000, 255
	goto_if_eq _03AC
	get_partymon_species VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _041A
	compare VAR_SPECIAL_RESULT, 479
	goto_if_ne _0427
	get_party_mon_forme VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _039F
	goto _0252

_039F:
	npc_msg 17
	wait_button_or_walk_away
	goto _089C

_03AC:
	touchscreen_menu_show
	releaseall
	end

_03B2:
	get_party_slot_with_species VAR_SPECIAL_x8000, SPECIES_ROTOM
	goto _0434

_03C0:
	npc_msg 7
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	party_select_ui
	get_party_selection VAR_SPECIAL_x8000
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8000, 255
	goto_if_eq _073D
	get_partymon_species VAR_SPECIAL_x8000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _041A
	compare VAR_SPECIAL_RESULT, 479
	goto_if_ne _0427
	goto _0434

_041A:
	npc_msg 8
	wait_button_or_walk_away
	goto _089C

_0427:
	npc_msg 9
	wait_button_or_walk_away
	goto _089C

_0434:
	mon_has_move VAR_SPECIAL_RESULT, MOVE_OVERHEAT, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04BE
	mon_has_move VAR_SPECIAL_RESULT, MOVE_BLIZZARD, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04BE
	mon_has_move VAR_SPECIAL_RESULT, MOVE_HYDRO_PUMP, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04BE
	mon_has_move VAR_SPECIAL_RESULT, MOVE_AIR_SLASH, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04BE
	mon_has_move VAR_SPECIAL_RESULT, MOVE_LEAF_STORM, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04BE
	count_mon_moves VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000
	copyvar VAR_SPECIAL_x8002, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _051C
	goto _04CC

_04BE:
	setvar VAR_SPECIAL_x8002, 0
	goto _04CC

_04CC:
	nop_var_490 VAR_TEMP_x4005
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 479
	goto_if_ne _050C
	compare VAR_TEMP_x4000, VAR_SPECIAL_x8000
	goto_if_ne _0506
	release obj_partner_poke
	apply_movement obj_partner_poke, _06F0
	wait_movement
	lock obj_partner_poke
_0506:
	setvar VAR_TEMP_x400A, 1
_050C:
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	npc_msg 10
	goto _0671

_051C:
	nop_var_490 VAR_TEMP_x4007
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 479
	goto_if_ne _0564
	nop_var_490 VAR_TEMP_x4000
	nop_var_490 VAR_SPECIAL_x8000
	compare VAR_TEMP_x4000, VAR_SPECIAL_x8000
	goto_if_ne _055E
	release obj_partner_poke
	apply_movement obj_partner_poke, _06F0
	wait_movement
	lock obj_partner_poke
_055E:
	setvar VAR_TEMP_x400A, 1
_0564:
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	buffer_move_name 1, VAR_SPECIAL_x8001
	npc_msg 0
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0649
	goto _058A

_058A:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	pokemon_summary_screen 1, VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	get_move_selection 1, VAR_SPECIAL_x8002
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8002, 4
	goto_if_eq _0628
	mon_get_move VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000, VAR_SPECIAL_x8002
	buffer_move_name 1, VAR_SPECIAL_RESULT
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0649
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	mon_get_move VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000, VAR_SPECIAL_x8002
	buffer_move_name 1, VAR_SPECIAL_RESULT
	npc_msg 4
	play_se SEQ_SE_DP_KON
	wait_se SEQ_SE_DP_KON
	wait 30, VAR_SPECIAL_RESULT
	npc_msg 5
	wait 32, VAR_SPECIAL_RESULT
	buffer_move_name 1, VAR_SPECIAL_x8001
	npc_msg 6
	play_fanfare SEQ_ME_LVUP
	wait_fanfare
	wait 16, VAR_SPECIAL_RESULT
	goto _0671

_0628:
	buffer_move_name 1, VAR_SPECIAL_x8001
	npc_msg 1
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _058A
	goto _0649

_0649:
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	buffer_move_name 1, VAR_SPECIAL_x8001
	npc_msg 2
	wait_button_or_walk_away
	compare VAR_TEMP_x400A, 1
	call_if_eq _07BA
	nop_var_490 VAR_TEMP_x400D
	goto _089C

_0671:
	update_rotom_forme VAR_SPECIAL_x8000, VAR_SPECIAL_x8002, VAR_SPECIAL_x8001, VAR_SPECIAL_x8004
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	compare VAR_SPECIAL_x8004, 1
	call_if_eq _06D2
	compare VAR_SPECIAL_x8004, 4
	call_if_eq _06D8
	compare VAR_SPECIAL_x8004, 3
	call_if_eq _06DE
	compare VAR_SPECIAL_x8004, 2
	call_if_eq _06E4
	compare VAR_SPECIAL_x8004, 5
	call_if_eq _06EA
	goto _02C1

_06D2:
	hide_person obj_T11R0702_rotomf
	return

_06D8:
	hide_person obj_T11R0702_rotoms
	return

_06DE:
	hide_person obj_T11R0702_rotomi
	return

_06E4:
	hide_person obj_T11R0702_rotomw
	return

_06EA:
	hide_person obj_T11R0702_rotomg
	return

	.align 4
_06F0:

	step 45, 2
	step 69, 1
	step_end
_06FC:
	setvar VAR_SPECIAL_x8001, 315
	return

_0704:
	setvar VAR_SPECIAL_x8001, 59
	return

_070C:
	setvar VAR_SPECIAL_x8001, 56
	return

_0714:
	setvar VAR_SPECIAL_x8001, 403
	return

_071C:
	setvar VAR_SPECIAL_x8001, 437
	return

_0724:
	npc_msg 21
	return

_0729:
	npc_msg 24
	return

_072E:
	npc_msg 27
	return

_0733:
	npc_msg 30
	return

_0738:
	npc_msg 33
	return

_073D:
	compare VAR_SPECIAL_x8004, 1
	call_if_eq _0797
	compare VAR_SPECIAL_x8004, 3
	call_if_eq _079E
	compare VAR_SPECIAL_x8004, 2
	call_if_eq _07A5
	compare VAR_SPECIAL_x8004, 4
	call_if_eq _07AC
	compare VAR_SPECIAL_x8004, 5
	call_if_eq _07B3
	compare VAR_TEMP_x400A, 1
	call_if_eq _07BA
	nop_var_490 VAR_TEMP_x4006
	goto _089C

_0797:
	npc_msg 22
	wait_button_or_walk_away
	return

_079E:
	npc_msg 25
	wait_button_or_walk_away
	return

_07A5:
	npc_msg 28
	wait_button_or_walk_away
	return

_07AC:
	npc_msg 31
	wait_button_or_walk_away
	return

_07B3:
	npc_msg 34
	wait_button_or_walk_away
	return

_07BA:
	release obj_partner_poke
	apply_movement obj_partner_poke, _07D0
	wait_movement
	lock obj_partner_poke
	return

	.align 4
_07D0:

	step 70, 1
	step_end
_07D8:
	compare VAR_SPECIAL_x8004, 1
	call_if_eq _0821
	compare VAR_SPECIAL_x8004, 3
	call_if_eq _0826
	compare VAR_SPECIAL_x8004, 2
	call_if_eq _082B
	compare VAR_SPECIAL_x8004, 4
	call_if_eq _0830
	compare VAR_SPECIAL_x8004, 5
	call_if_eq _0835
	goto _089C

_0821:
	npc_msg 20
	return

_0826:
	npc_msg 23
	return

_082B:
	npc_msg 26
	return

_0830:
	npc_msg 29
	return

_0835:
	npc_msg 32
	return

scr_seq_T11R0702_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	count_transformed_rotoms_in_party VAR_SPECIAL_x8003, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8003, 0
	goto_if_eq _088D
	npc_msg 13
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 14, 255, 0
	menu_item_add 19, 255, 1
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0231
	goto _089C

_088D:
	npc_msg 18
	wait_button_or_walk_away
	closemsg
	goto _08A4

_089C:
	touchscreen_menu_show
	closemsg
	releaseall
	end

_08A4:
	releaseall
	end

scr_seq_T11R0702_000:
	simple_npc_msg 35
	end
	.align 4


.close
