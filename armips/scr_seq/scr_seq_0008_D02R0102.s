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

.include "armips/scr_seq/event_D02R0102.inc"


// text archive to grab from: 003.txt

.create "build/a012/2_008", 0


scrdef scr_seq_D02R0102_000
scrdef_end

scr_seq_D02R0102_000:
	goto_if_set FLAG_UNK_AB5, _004D
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _002E
	goto _004F

_002E:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0047
	goto _008E

_0047:
	goto _004D

_004D:
	end

_004F:
	scrcmd_379 VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 3
	goto_if_ne _0086
	move_warp 1, 1, 7
	move_warp 4, 5, 6
	move_warp 2, 1, 26
	move_warp 5, 5, 25
	goto _008C

_0086:
	goto _004D

_008C:
	end

_008E:
	scrcmd_379 VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 4
	goto_if_ne _00C5
	move_warp 1, 1, 7
	move_warp 4, 5, 6
	move_warp 2, 1, 26
	move_warp 5, 5, 25
	goto _00CB

_00C5:
	goto _004D

_00CB:
	end

	.align 4


.close
