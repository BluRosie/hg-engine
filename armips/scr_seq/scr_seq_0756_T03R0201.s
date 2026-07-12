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

.include "armips/scr_seq/event_T03R0201.inc"


// text archive to grab from: 465.txt

.create "build/a012/2_756", 0


scrdef scr_seq_T03R0201_000
scrdef scr_seq_T03R0201_001
scrdef_end

scr_seq_T03R0201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T03R0201_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	play_cry SPECIES_NIDORAN_M, 0
	npc_msg 1
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
