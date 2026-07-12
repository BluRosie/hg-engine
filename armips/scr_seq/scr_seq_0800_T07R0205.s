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

.include "armips/scr_seq/event_T07R0205.inc"


// text archive to grab from: 505.txt

.create "build/a012/2_800", 0


scrdef scr_seq_T07R0205_000
scrdef_end

scr_seq_T07R0205_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_SPELL_TAG_FROM_CELADON_CITY_MAN, _0071
	npc_msg 0
	scrcmd_379 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_eq _0045
	compare VAR_TEMP_x4000, 4
	goto_if_eq _0045
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0045:
	npc_msg 2
	goto_if_no_item_space ITEM_SPELL_TAG, 1, _007C
	callstd std_give_item_verbose
	setflag FLAG_GOT_SPELL_TAG_FROM_CELADON_CITY_MAN
_0071:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_007C:
	callstd std_bag_is_full
	closemsg
	releaseall
	end
	.align 4


.close
