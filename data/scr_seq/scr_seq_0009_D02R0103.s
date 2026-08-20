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

.include "data/scr_seq/event_D02R0103.inc"


// text archive to grab from: 050.txt

.data


scrdef scr_seq_D02R0103_000
scrdef scr_seq_D02R0103_001
scrdef scr_seq_D02R0103_002
scrdef_end

scr_seq_D02R0103_002:
	make_object_visible obj_D02R0103_stop
	scrcmd_379 VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 3
	goto_if_ne _003D
	move_person_facing obj_D02R0103_stop, 18, 0, 10, DIR_SOUTH
	move_warp 2, 20, 3
	goto _005E

_003D:
	compare VAR_TEMP_x4001, 4
	goto_if_ne _005E
	move_person_facing obj_D02R0103_stop, 18, 0, 10, DIR_SOUTH
	move_warp 2, 20, 3
_005E:
	end

scr_seq_D02R0103_000:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 0, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D02R0103_001:
	simple_npc_msg 1
	end
	.balign 4
