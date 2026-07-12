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

.include "armips/scr_seq/event_T26R0501.inc"


// text archive to grab from: 609.txt

.create "build/a012/2_917", 0


scrdef scr_seq_T26R0501_000
scrdef scr_seq_T26R0501_001
scrdef scr_seq_T26R0501_002
scrdef_end

scr_seq_T26R0501_000:
	simple_npc_msg 0
	end

scr_seq_T26R0501_001:
	simple_npc_msg 1
	end

scr_seq_T26R0501_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_UNK_AB9, _0050
	npc_msg 4
	goto _00E3

_0050:
	npc_msg 2
	hasitem ITEM_SEAL_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0071
	npc_msg 5
	goto _00E3

_0071:
	give_random_seal VAR_SPECIAL_x8000, VAR_SPECIAL_x8001, VAR_SPECIAL_x8002
	compare VAR_SPECIAL_x8000, 0
	goto_if_ne _008F
	npc_msg 3
	goto _00E3

_008F:
	setflag FLAG_UNK_AB9
	buffer_seal_name 0, VAR_SPECIAL_x8000
	npc_msg 6
	play_fanfare SEQ_ME_ITEM
	npc_msg 11
	wait_fanfare
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _00EB
	buffer_seal_name 0, VAR_SPECIAL_x8001
	npc_msg 7
	play_fanfare SEQ_ME_ITEM
	npc_msg 11
	wait_fanfare
	compare VAR_SPECIAL_x8002, 0
	goto_if_eq _00EB
	buffer_seal_name 0, VAR_SPECIAL_x8002
	npc_msg 8
	play_fanfare SEQ_ME_ITEM
	npc_msg 11
	wait_fanfare
	npc_msg 9
_00E3:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00EB:
	npc_msg 10
	goto _00E3

	.align 4


.close
