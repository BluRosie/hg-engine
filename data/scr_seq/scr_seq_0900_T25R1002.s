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

.include "data/scr_seq/event_T25R1002.inc"


// text archive to grab from: 593.txt

.data


scrdef scr_seq_T25R1002_000
scrdef scr_seq_T25R1002_001
scrdef scr_seq_T25R1002_002
scrdef scr_seq_T25R1002_003
scrdef scr_seq_T25R1002_004
scrdef scr_seq_T25R1002_005
scrdef_end

scr_seq_T25R1002_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 3
	callstd std_special_mart
	releaseall
	end

scr_seq_T25R1002_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 4
	callstd std_special_mart
	releaseall
	end

scr_seq_T25R1002_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _0070
	npc_msg 1
	goto _0073

_0070:
	npc_msg 0
_0073:
	wait_button
	closemsg
	releaseall
	end

scr_seq_T25R1002_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _0099
	npc_msg 5
	goto _009C

_0099:
	npc_msg 4
_009C:
	wait_button
	closemsg
	releaseall
	end

scr_seq_T25R1002_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _00C2
	npc_msg 3
	goto _00C5

_00C2:
	npc_msg 2
_00C5:
	wait_button
	closemsg
	releaseall
	end

scr_seq_T25R1002_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end
	.balign 4
