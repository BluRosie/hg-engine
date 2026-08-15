.include "asm/include/interop_macros.inc"

.include "asm/include/scriptmacros.inc"
.include "asm/include/flags.inc"
.include "asm/include/soundeffects.inc"
.include "asm/include/vars.inc"

.include "asm/include/events.inc"
.include "asm/include/game_stats.inc"
.include "asm/include/maps.inc"
.include "asm/include/map_sections.inc"
.include "asm/include/movements.inc"
.include "asm/include/rankings.inc"
.include "asm/include/spawns.inc"
.include "asm/include/std_scripts.inc"
.include "asm/include/trainers.inc"

#include "constants/item.h"
#include "constants/moves.h"
#include "constants/species.h"


// text archive to grab from: 019.txt

.data


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

	.byte 0x02, 0x00
_002E:
	call _01EE
	call _01F5
	switch VAR_SPECIAL_x8001
	case 3, _0221
	case -2, _0221
	call _0229
	goto _002E

	.byte 0x02, 0x00
scr_seq_0264_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8000, 1
	goto _007C

	.byte 0x02, 0x00
_007C:
	call _01EE
	call _01F5
	switch VAR_SPECIAL_x8001
	case 3, _0221
	case -2, _0221
	call _0229
	goto _007C

	.byte 0x02, 0x00
scr_seq_0264_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8000, 2
	goto _00CA

	.byte 0x02, 0x00
_00CA:
	call _01EE
	call _01F5
	switch VAR_SPECIAL_x8001
	case 3, _0221
	case -2, _0221
	call _0229
	goto _00CA

	.byte 0x02, 0x00
scr_seq_0264_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8000, 5
	goto _0118

	.byte 0x02, 0x00
_0118:
	call _01EE
	call _01F5
	switch VAR_SPECIAL_x8001
	case 3, _0221
	case -2, _0221
	call _0229
	goto _0118

	.byte 0x02, 0x00
scr_seq_0264_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8000, 4
	goto _0166

	.byte 0x02, 0x00
_0166:
	call _01EE
	call _01F5
	switch VAR_SPECIAL_x8001
	case 3, _0221
	case -2, _0221
	call _0229
	goto _0166

	.byte 0x02, 0x00
scr_seq_0264_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	setvar VAR_SPECIAL_x8000, 6
	goto _01B4

	.byte 0x02, 0x00
_01B4:
	call _01EE
	call _01F5
	switch VAR_SPECIAL_x8001
	case 3, _0221
	case -2, _0221
	call _0229
	goto _01B4

	.byte 0x02, 0x00
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
	.balign 4
