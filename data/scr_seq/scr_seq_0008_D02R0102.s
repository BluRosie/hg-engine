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

.include "data/scr_seq/event_D02R0102.inc"


// text archive to grab from: 003.txt

.data


scrdef scr_seq_D02R0102_000
scrdef_end

scr_seq_D02R0102_000:
	goto_if_set FLAG_UNK_AB5, _004D
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _002E
	goto _004F

	.byte 0x16, 0x00, 0x1f, 0x00, 0x00, 0x00
_002E:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0047
	goto _008E

	.byte 0x16, 0x00, 0x06, 0x00, 0x00, 0x00
_0047:
	goto _004D

_004D:
	end

_004F:
	scrcmd_379 VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 3
	goto_if_ne _0086
	move_warp 1, 1, 7
	move_warp 4, 5, 6
	move_warp 2, 1, 26
	move_warp 5, 5, 25
	goto _008C

_0086:
	goto _004D

_008C:
	end

_008E:
	scrcmd_379 VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 4
	goto_if_ne _00C5
	move_warp 1, 1, 7
	move_warp 4, 5, 6
	move_warp 2, 1, 26
	move_warp 5, 5, 25
	goto _00CB

_00C5:
	goto _004D

_00CB:
	end

	.byte 0x02, 0x00, 0x00
	.balign 4
