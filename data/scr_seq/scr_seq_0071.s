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


// text archive to grab from: 003.txt

.data


scrdef scr_seq_0071_000
scrdef scr_seq_0071_001
scrdef scr_seq_0071_002
scrdef_end

scr_seq_0071_000:
	end

scr_seq_0071_001:
	compare VAR_UNK_414E, 0
	call_if_ne _001F
	end

_001F:
	make_object_visible obj_player
	return

scr_seq_0071_002:
	scrcmd_609
	lockall
	call _0090
	random VAR_SPECIAL_RESULT, 4
	switch VAR_SPECIAL_RESULT
	case 1, _00F2
	case 2, _010C
	case 3, _0126
	goto _00D8

_0068:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D31R0205, 0, 7, 6, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0090:
	scrcmd_307 0, 0, 2, 2, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement 0, _0140
	wait_movement
	scrcmd_374 obj_player
	apply_movement obj_player, _014C
	wait_movement
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	return

	.byte 0x5e, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00, 0x5e, 0x00, 0xff, 0x00
	.byte 0x90, 0x00, 0x00, 0x00, 0x5f, 0x00, 0x1b, 0x00
_00D8:
	apply_movement 0, _0178
	apply_movement obj_player, _0188
	wait_movement
	goto _0068

	.byte 0x02, 0x00
_00F2:
	apply_movement 0, _019C
	apply_movement obj_player, _01AC
	wait_movement
	goto _0068

	.byte 0x02, 0x00
_010C:
	apply_movement 0, _01C0
	apply_movement obj_player, _01D0
	wait_movement
	goto _0068

	.byte 0x02, 0x00
_0126:
	apply_movement 0, _01E4
	apply_movement obj_player, _01F4
	wait_movement
	goto _0068

	.byte 0x02, 0x00
	.balign 4
_0140:

	step 13, 3
	step 0, 1
	step_end
	.balign 4
_014C:

	step 13, 2
	step_end
	.byte 0x00, 0x00, 0x01, 0x00, 0x0c, 0x00, 0x02, 0x00, 0x45, 0x00, 0x01, 0x00
	.byte 0xfe, 0x00, 0x00, 0x00, 0x0f, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x14, 0x00, 0x01, 0x00
	.byte 0x45, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00
	.balign 4
_0178:

	step 15, 4
	step 12, 2
	step 69, 1
	step_end
	.balign 4
_0188:

	step 13, 1
	step 15, 4
	step 12, 2
	step 69, 1
	step_end
	.balign 4
_019C:

	step 15, 8
	step 12, 2
	step 69, 1
	step_end
	.balign 4
_01AC:

	step 13, 1
	step 15, 8
	step 12, 2
	step 69, 1
	step_end
	.balign 4
_01C0:

	step 15, 12
	step 12, 2
	step 69, 1
	step_end
	.balign 4
_01D0:

	step 13, 1
	step 15, 12
	step 12, 2
	step 69, 1
	step_end
	.balign 4
_01E4:

	step 15, 16
	step 12, 2
	step 69, 1
	step_end
	.balign 4
_01F4:

	step 13, 1
	step 15, 16
	step 12, 2
	step 69, 1
	step_end
	.balign 4
