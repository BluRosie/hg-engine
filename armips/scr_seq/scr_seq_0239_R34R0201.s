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

.include "armips/scr_seq/event_R34R0201.inc"


// text archive to grab from: 386.txt

.create "build/a012/2_239", 0


scrdef scr_seq_R34R0201_000
scrdef scr_seq_R34R0201_001
scrdef scr_seq_R34R0201_002
scrdef_end

scr_seq_R34R0201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_TM12_FROM_ILEX_FOREST_GATE_WOMAN, _0055
	npc_msg 0
	wait_button
	goto_if_no_item_space ITEM_TM012, 1, _0060
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM12_FROM_ILEX_FOREST_GATE_WOMAN
	goto _0055

_0055:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0060:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

scr_seq_R34R0201_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_BUTTERFREE, 0
	npc_msg 3
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_R34R0201_002:
	simple_npc_msg 4
	end
	.align 4


.close
