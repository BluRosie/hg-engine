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

.include "armips/scr_seq/event_T05R0201.inc"


// text archive to grab from: 478.txt

.create "build/a012/2_771", 0


scrdef scr_seq_T05R0201_000
scrdef scr_seq_T05R0201_001
scrdef scr_seq_T05R0201_002
scrdef scr_seq_T05R0201_003
scrdef scr_seq_T05R0201_004
scrdef_end

scr_seq_T05R0201_000:
	simple_npc_msg 0
	end

scr_seq_T05R0201_001:
	simple_npc_msg 1
	end

scr_seq_T05R0201_002:
	play_cry SPECIES_PSYDUCK, 0
	simple_npc_msg 2
	wait_cry
	end

scr_seq_T05R0201_003:
	play_cry SPECIES_NIDORINO, 0
	simple_npc_msg 3
	wait_cry
	end

scr_seq_T05R0201_004:
	play_cry SPECIES_PIDGEY, 0
	simple_npc_msg 4
	wait_cry
	end
	.align 4


.close
