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

.include "armips/scr_seq/event_T01R0201.inc"


// text archive to grab from: 449.txt

.create "build/a012/2_738", 0


scrdef scr_seq_T01R0201_000
scrdef_end

scr_seq_T01R0201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	nop_var_490 VAR_UNK_4122
	compare VAR_UNK_4122, 7
	goto_if_eq _003B
_001F:
	scrcmd_522 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 15
	goto_if_eq _0056
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_003B:
	check_registered_phone_number PHONE_CONTACT_BLUE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _001F
	goto _015D

_0056:
	goto_if_set FLAG_UNK_AA8, _0152
	npc_msg 1
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0147
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0099
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _00A7
	end

_0099:
	setvar VAR_SPECIAL_x8004, 0
	goto _00F0

_00A7:
	npc_msg 2
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8004
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	nop_var_490 VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 255
	goto_if_eq _0147
	get_partymon_species VAR_SPECIAL_x8004, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _013C
_00F0:
	bufferpartymonnick 0, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_FW367
	npc_msg 3
	wait_se SEQ_SE_DP_FW367
	wait 15, VAR_SPECIAL_RESULT
	mon_add_friendship 10, VAR_SPECIAL_x8004
	mon_add_contest_value VAR_SPECIAL_x8004, 1, 32
	mon_add_contest_value VAR_SPECIAL_x8004, 5, 22
	compare VAR_UNK_4122, 7
	goto_if_eq _012D
	addvar VAR_UNK_4122, 1
_012D:
	setflag FLAG_UNK_AA8
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_013C:
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0147:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0152:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_015D:
	compare VAR_TEMP_x4004, 1
	goto_if_ge _01AE
	npc_msg 8
_016D:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _019D
	register_gear_number PHONE_CONTACT_BLUE
	buffer_players_name 0
	npc_msg 9
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	npc_msg 10
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_019D:
	npc_msg 11
	wait_button_or_walk_away
	closemsg
	setvar VAR_TEMP_x4004, 1
	releaseall
	end

_01AE:
	npc_msg 12
	goto _016D

	.align 4


.close
