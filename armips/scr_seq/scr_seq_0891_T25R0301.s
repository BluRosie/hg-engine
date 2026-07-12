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

.include "armips/scr_seq/event_T25R0301.inc"


// text archive to grab from: 585.txt

.create "build/a012/2_891", 0


scrdef scr_seq_T25R0301_000
scrdef scr_seq_T25R0301_001
scrdef scr_seq_T25R0301_002
scrdef_end

scr_seq_T25R0301_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_party_lead_alive VAR_SPECIAL_x8000
	npc_msg 0
	mon_get_friendship VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000
	compare VAR_SPECIAL_RESULT, 250
	goto_if_ge _006C
	compare VAR_SPECIAL_RESULT, 200
	goto_if_ge _0077
	compare VAR_SPECIAL_RESULT, 150
	goto_if_ge _0082
	compare VAR_SPECIAL_RESULT, 100
	goto_if_ge _008D
	compare VAR_SPECIAL_RESULT, 50
	goto_if_ge _0098
	goto _00A3

_006C:
	npc_msg 1
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0077:
	npc_msg 2
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0082:
	npc_msg 3
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_008D:
	npc_msg 4
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_0098:
	npc_msg 5
	wait_button_or_walk_away
	closemsg
	releaseall
	end

_00A3:
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R0301_001:
	simple_npc_msg 7
	end

scr_seq_T25R0301_002:
	simple_npc_msg 8
	end
	.align 4


.close
