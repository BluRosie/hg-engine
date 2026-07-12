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

.include "armips/scr_seq/event_T25PC0101.inc"


// text archive to grab from: 583.txt

.create "build/a012/2_887", 0


scrdef scr_seq_T25PC0101_000
scrdef scr_seq_T25PC0101_001
scrdef scr_seq_T25PC0101_002
scrdef scr_seq_T25PC0101_003
scrdef_end

scr_seq_T25PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T25PC0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _003C
	npc_msg 3
	goto _003F

_003C:
	npc_msg 2
_003F:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25PC0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _0065
	npc_msg 5
	goto _0068

_0065:
	npc_msg 4
_0068:
	wait_button_or_walk_away
	closemsg
	releaseall
	end

scr_seq_T25PC0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _008E
	npc_msg 1
	goto _0091

_008E:
	npc_msg 0
_0091:
	wait_button_or_walk_away
	closemsg
	releaseall
	end
	.align 4


.close
