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

.include "data/scr_seq/include/event_W19.inc"


// text archive to grab from: 740.txt

.data


scrdef scr_seq_W19_000
scrdef scr_seq_W19_001
scrdef scr_seq_W19_002
scrdef scr_seq_W19_003
scrdef scr_seq_W19_004
scrdef scr_seq_W19_005
scrdef_end

scr_seq_W19_000:
	simple_npc_msg 0
	end

scr_seq_W19_001:
	simple_npc_msg 2
	end

scr_seq_W19_002:
	simple_npc_msg 1
	end

scr_seq_W19_003:
	simple_npc_msg 3
	end

scr_seq_W19_004:
	direction_signpost 4, 1, 4, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_W19_005:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 5, VAR_SPECIAL_RESULT
	callstd std_signpost
	end
	.balign 4
