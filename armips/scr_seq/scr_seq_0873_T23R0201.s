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

.include "armips/scr_seq/event_T23R0201.inc"


// text archive to grab from: 570.txt

.create "build/a012/2_873", 0


scrdef scr_seq_T23R0201_000
scrdef scr_seq_T23R0201_001
scrdef scr_seq_T23R0201_002
scrdef_end

scr_seq_T23R0201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_BEAT_AZALEA_ROCKETS, _002C
	npc_msg 0
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_002C:
	goto_if_set FLAG_GOT_HM01, _0042
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0042:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T23R0201_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_HM01, _006B
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_006B:
	goto_if_set FLAG_GOT_CHARCOAL_FROM_AZALEA_TOWN_MAN, _00AA
	npc_msg 4
	wait_button
	goto_if_no_item_space ITEM_CHARCOAL, 1, _00B5
	callstd std_obtain_item_verbose
	setflag FLAG_GOT_CHARCOAL_FROM_AZALEA_TOWN_MAN
	closemsg
	releaseall
	end

_00AA:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00B5:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

scr_seq_T23R0201_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_FARFETCHD, 0
	npc_msg 8
	wait_cry
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
