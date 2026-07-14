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

.include "asm/scr_seq/event_T06R0401.inc"


// text archive to grab from: 489.txt

.data


scrdef scr_seq_T06R0401_000
scrdef scr_seq_T06R0401_001
scrdef_end

scr_seq_T06R0401_000:
	simple_npc_msg 0
	end

scr_seq_T06R0401_001:
	simple_npc_msg 1
	end
	.balign 4
