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

.include "armips/scr_seq/event_T25R1001.inc"


// text archive to grab from: 592.txt

.create "build/a012/2_899", 0


scrdef scr_seq_T25R1001_000
scrdef scr_seq_T25R1001_001
scrdef scr_seq_T25R1001_002
scrdef scr_seq_T25R1001_003
scrdef scr_seq_T25R1001_004
scrdef_end

scr_seq_T25R1001_000:
	simple_npc_msg 0
	end

scr_seq_T25R1001_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _0047
	npc_msg 2
	goto _004A

_0047:
	npc_msg 1
_004A:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R1001_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _0070
	npc_msg 4
	goto _0073

_0070:
	npc_msg 3
_0073:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R1001_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _0099
	npc_msg 6
	goto _009C

_0099:
	npc_msg 5
_009C:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R1001_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 7
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
