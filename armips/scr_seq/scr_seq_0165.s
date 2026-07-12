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


// text archive to grab from: 268.txt

.create "build/a012/2_165", 0


scrdef scr_seq_0165_000
scrdef_end

scr_seq_0165_000:
	scrcmd_609
	lockall
	sys_set_sleep_flag 1
	wait 1, VAR_SPECIAL_RESULT
	copyvar VAR_SPECIAL_x8005, VAR_SPECIAL_x8000
	scrcmd_547 VAR_SPECIAL_x8000
	chatot_has_cry VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0037
	goto _005E

_0037:
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _005E
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00C9
	end

_005E:
	fade_out_bgm 42, 10
	npc_msg 8
	add_waiting_icon
	wait 80, VAR_SPECIAL_RESULT
	remove_waiting_icon
	npc_msg 1
	chatot_start_recording VAR_SPECIAL_RESULT
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	wait 30, VAR_SPECIAL_RESULT
	fade_in_bgm 10
	wait 10, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _00D5
	chatot_stop_recording
	wait 1, VAR_SPECIAL_RESULT
	chatot_save_recording
	wait 1, VAR_SPECIAL_RESULT
	scrcmd_548
	bufferpartymonnick 0, VAR_SPECIAL_x8005
	npc_msg 2
	scrcmd_549 VAR_SPECIAL_RESULT
	play_cry SPECIES_CHATOT, 0
	wait_cry
	goto _00C9

_00C9:
	scrcmd_453
	closemsg
	sys_set_sleep_flag 0
	releaseall
	end

_00D5:
	bufferpartymonnick 0, VAR_SPECIAL_x8005
	npc_msg 3
	npc_msg 4
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _005E
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00C9
	end
	.align 4


.close
