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

.include "data/scr_seq/event_T25R1003.inc"


// text archive to grab from: 594.txt

.data


scrdef scr_seq_T25R1003_000
scrdef scr_seq_T25R1003_001
scrdef scr_seq_T25R1003_002
scrdef scr_seq_T25R1003_003
scrdef_end

scr_seq_T25R1003_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 5
	callstd std_special_mart
	releaseall
	end

scr_seq_T25R1003_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _004C
	npc_msg 1
	goto _004F

_004C:
	npc_msg 0
_004F:
	wait_button
	closemsg
	releaseall
	end

scr_seq_T25R1003_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _0075
	npc_msg 3
	goto _0078

_0075:
	npc_msg 2
_0078:
	wait_button
	closemsg
	releaseall
	end

scr_seq_T25R1003_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end
	.balign 4
