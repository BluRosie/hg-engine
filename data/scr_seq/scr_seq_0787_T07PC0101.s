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

.include "data/scr_seq/event_T07PC0101.inc"


// text archive to grab from: 493.txt

.data


scrdef scr_seq_T07PC0101_000
scrdef scr_seq_T07PC0101_001
scrdef scr_seq_T07PC0101_002
scrdef scr_seq_T07PC0101_003
scrdef_end

scr_seq_T07PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T07PC0101_001:
	simple_npc_msg 0
	end

scr_seq_T07PC0101_002:
	simple_npc_msg 1
	end

scr_seq_T07PC0101_003:
	simple_npc_msg 2
	end
	.balign 4
