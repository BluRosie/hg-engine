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

.include "armips/scr_seq/event_T29R0101.inc"


// text archive to grab from: 627.txt

.create "build/a012/2_939", 0


scrdef scr_seq_T29R0101_000
scrdef_end

scr_seq_T29R0101_000:
	goto_if_set FLAG_GOT_TM10_FROM_LAKE_OF_RAGE_MAN, _005A
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	goto_if_no_item_space ITEM_TM010, 1, _006B
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM10_FROM_LAKE_OF_RAGE_MAN
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	apply_movement obj_T29R0101_gsbigman, _0078
	wait_movement
	releaseall
	end

_005A:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_006B:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

	.align 4
_0078:

	step 3, 1
	step_end
	.align 4


.close
