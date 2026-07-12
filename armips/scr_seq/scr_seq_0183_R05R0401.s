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

.include "armips/scr_seq/event_R05R0401.inc"


// text archive to grab from: 333.txt

.create "build/a012/2_183", 0


scrdef scr_seq_R05R0401_000
scrdef scr_seq_R05R0401_001
scrdef_end

scr_seq_R05R0401_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_CLEANSE_TAG_FROM_ROUTE_5_GRANDMA, _0049
	npc_msg 0
	goto_if_no_item_space ITEM_CLEANSE_TAG, 1, _0054
	callstd std_give_item_verbose
	setflag FLAG_GOT_CLEANSE_TAG_FROM_ROUTE_5_GRANDMA
_0049:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0054:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

scr_seq_R05R0401_001:
	simple_npc_msg 2
	end
	.align 4


.close
