.include "asm/include/interop_macros.inc"

.include "asm/include/scriptmacros.inc"
.include "asm/include/flags.inc"
.include "asm/include/soundeffects.inc"
.include "asm/include/vars.inc"

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

.include "data/scr_seq/event_T05R0401.inc"


// text archive to grab from: 480.txt

.data


scrdef scr_seq_T05R0401_000
scrdef_end

scr_seq_T05R0401_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _002E
	goto _00B3

	.byte 0x02, 0x00
_002E:
	npc_msg 1
	wait_ab_press
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _00B3
	copyvar VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00BE
	partymon_is_mine VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00C9
	bufferpartymonnick 0, VAR_SPECIAL_x8005
	npc_msg 2
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00D9
	goto _00B3

	.byte 0x02, 0x00
_00B3:
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

_00BE:
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_00C9:
	bufferpartymonnick 0, VAR_SPECIAL_x8005
	npc_msg 7
	wait_button
	closemsg
	releaseall
	end

_00D9:
	npc_msg 3
	closemsg
	setvar VAR_SPECIAL_RESULT, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _011F
	bufferpartymonnick 0, VAR_SPECIAL_x8005
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

_011F:
	bufferpartymonnick 0, VAR_SPECIAL_x8005
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end
	.balign 4
