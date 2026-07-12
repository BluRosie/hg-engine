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


// text archive to grab from: 019.txt

.create "build/a012/2_264", 0


scrdef scr_seq_0264_000
scrdef scr_seq_0264_001
scrdef scr_seq_0264_002
scrdef scr_seq_0264_003
scrdef scr_seq_0264_004
scrdef scr_seq_0264_005
scrdef_end

scr_seq_0264_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8000, 1
	goto _002E

_002E:
	call _01EE
	call _01F5
	switch VAR_SPECIAL_x8001
	case 3, _0221
	case -2, _0221
	call _0229
	goto _002E

scr_seq_0264_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8000, 1
	goto _007C

_007C:
	call _01EE
	call _01F5
	switch VAR_SPECIAL_x8001
	case 3, _0221
	case -2, _0221
	call _0229
	goto _007C

scr_seq_0264_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8000, 2
	goto _00CA

_00CA:
	call _01EE
	call _01F5
	switch VAR_SPECIAL_x8001
	case 3, _0221
	case -2, _0221
	call _0229
	goto _00CA

scr_seq_0264_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8000, 5
	goto _0118

_0118:
	call _01EE
	call _01F5
	switch VAR_SPECIAL_x8001
	case 3, _0221
	case -2, _0221
	call _0229
	goto _0118

scr_seq_0264_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8000, 4
	goto _0166

_0166:
	call _01EE
	call _01F5
	switch VAR_SPECIAL_x8001
	case 3, _0221
	case -2, _0221
	call _0229
	goto _0166

scr_seq_0264_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8000, 6
	goto _01B4

_01B4:
	call _01EE
	call _01F5
	switch VAR_SPECIAL_x8001
	case 3, _0221
	case -2, _0221
	call _0229
	goto _01B4

_01EE:
	npc_msg 0
	touchscreen_menu_hide
	return

_01F5:
	menu_init 1, 1, 0, 1, VAR_SPECIAL_x8001
	menu_item_add 1, 255, 0
	menu_item_add 2, 255, 1
	menu_item_add 3, 255, 2
	menu_item_add 4, 255, 3
	menu_exec
	return

_0221:
	closemsg
	touchscreen_menu_show
	releaseall
	end

_0229:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	call _023F
	return

_023F:
	scrcmd_631 VAR_SPECIAL_x8001, VAR_SPECIAL_x8000, VAR_SPECIAL_x8003
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	return
	.align 4


.close
