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

.include "data/scr_seq/event_R02R0301.inc"


// text archive to grab from: 323.txt

.data


scrdef scr_seq_R02R0301_000
scrdef scr_seq_R02R0301_001
scrdef_end

scr_seq_R02R0301_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_SACRED_ASH_FROM_ROUTE_2_LAB_AIDE, _004D
	buffer_players_name 0
	gender_msgbox 0, 1
	goto_if_no_item_space ITEM_SACRED_ASH, 1, _0058
	callstd std_give_item_verbose
	setflag FLAG_GOT_SACRED_ASH_FROM_ROUTE_2_LAB_AIDE
_004D:
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end

_0058:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

scr_seq_R02R0301_001:
	simple_npc_msg 3
	end
	.balign 4
