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

.include "armips/scr_seq/event_W41.inc"


// text archive to grab from: 746.txt

.create "build/a012/2_964", 0


scrdef scr_seq_W41_000
scrdef scr_seq_W41_001
scrdef scr_seq_W41_002
scrdef scr_seq_W41_003
scrdef scr_seq_W41_004
scrdef scr_seq_W41_005
scrdef scr_seq_W41_006
scrdef scr_seq_W41_007
scrdef scr_seq_W41_008
scrdef scr_seq_W41_009
scrdef scr_seq_W41_010
scrdef_end

scr_seq_W41_000:
	end

scr_seq_W41_001:
	simple_npc_msg 0
	end

scr_seq_W41_002:
	simple_npc_msg 3
	end

scr_seq_W41_003:
	simple_npc_msg 6
	end

scr_seq_W41_004:
	simple_npc_msg 12
	end

scr_seq_W41_005:
	simple_npc_msg 9
	end

scr_seq_W41_006:
	simple_npc_msg 15
	end

scr_seq_W41_007:
	simple_npc_msg 18
	end

scr_seq_W41_008:
	simple_npc_msg 21
	end

scr_seq_W41_009:
	simple_npc_msg 24
	end

scr_seq_W41_010:
	simple_npc_msg 27
	end
	.align 4


.close
