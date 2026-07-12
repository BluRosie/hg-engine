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

.include "armips/scr_seq/event_T24R0201.inc"


// text archive to grab from: 576.txt

.create "build/a012/2_880", 0


scrdef scr_seq_T24R0201_000
scrdef_end

scr_seq_T24R0201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_RETURNED_OR_INHERITED_LOAN_SHUCKLE, _0037
	goto_if_unset FLAG_GOT_LOAN_SHUCKLE, _0042
	goto_if_set FLAG_DAILY_GOT_LOAN_SHUCKLE_TODAY, _00A2
	goto _00AD

_0037:
	npc_msg 11
_003A:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0042:
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0063
	npc_msg 4
	goto _003A

_0063:
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_ne _007D
	npc_msg 3
	goto _003A

_007D:
	give_loan_mon 6, 20, 75
	npc_msg 1
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_PT_SPECIAL
	wait_fanfare
	setflag FLAG_GOT_LOAN_SHUCKLE
	setflag FLAG_DAILY_GOT_LOAN_SHUCKLE_TODAY
	goto _003A

_00A2:
	npc_msg 6
	goto _003A

_00AD:
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01AA
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	party_select_ui
	get_party_selection VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 255
	goto_if_ne _00F2
	call _019A
	goto _01AA

_00F2:
	check_return_loan_mon 6, VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_ne _019A
	nop_var_490 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0120
	npc_msg 8
	goto _0192

_0120:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0136
	npc_msg 12
	goto _0192

_0136:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _014C
	npc_msg 13
	goto _0192

_014C:
	compare VAR_SPECIAL_RESULT, 4
	goto_if_ne _0162
	npc_msg 14
	goto _0192

_0162:
	mon_get_friendship VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 149
	goto_if_le _0181
	call _019A
	goto _01B5

_0181:
	return_loan_mon VAR_TEMP_x4000
	call _019A
	npc_msg 7
	setflag FLAG_RETURNED_OR_INHERITED_LOAN_SHUCKLE
_0192:
	goto _003A

_019A:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	return

_01AA:
	npc_msg 10
	goto _003A

_01B5:
	npc_msg 9
	setflag FLAG_RETURNED_OR_INHERITED_LOAN_SHUCKLE
	goto _003A

	.align 4


.close
