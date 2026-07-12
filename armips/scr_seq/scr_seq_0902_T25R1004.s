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

.include "armips/scr_seq/event_T25R1004.inc"


// text archive to grab from: 595.txt

.create "build/a012/2_902", 0


scrdef scr_seq_T25R1004_000
scrdef scr_seq_T25R1004_001
scrdef scr_seq_T25R1004_002
scrdef scr_seq_T25R1004_003
scrdef scr_seq_T25R1004_004
scrdef_end

scr_seq_T25R1004_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 6
	callstd std_special_mart
	releaseall
	end

scr_seq_T25R1004_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _0050
	npc_msg 1
	goto _0053

_0050:
	npc_msg 0
_0053:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R1004_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _0079
	npc_msg 3
	goto _007C

_0079:
	npc_msg 2
_007C:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R1004_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _00A2
	npc_msg 5
	goto _00A5

_00A2:
	npc_msg 4
_00A5:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25R1004_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 6
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
