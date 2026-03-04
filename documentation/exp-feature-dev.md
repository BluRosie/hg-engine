# Result-Based EXP (Developer Guide)

## Overview
This project includes a configurable result-based EXP system that layers contribution rewards onto the normal post-battle EXP flow.

The system is intended to:
- Keep base EXP progression under control.
- Reward meaningful battle contribution (damage dealt, residual damage sourced by the player, and stat-lowering utility).
- Scale naturally from early game to late game.

## High-Level Formula
For each recipient Pokemon in the EXP loop:

1. Compute normal EXP using existing hg-engine logic.
2. Scale base EXP by a configurable percent.
3. Compute a contribution bonus from tracked contribution values.
4. Grant final EXP as:

`final_exp = scaled_base_exp + contribution_bonus`

Where:
- `scaled_base_exp = base_exp * RESULT_BASED_EXP_BASE_PERCENT / 100`
- `contribution_bonus = damage_bonus + stat_bonus`

Damage and stat bonuses are normalized by the fainted target's max HP.

## Configuration Knobs (`include/config.h`)
- `IMPLEMENT_RESULT_BASED_EXP`
: Master toggle for this feature.

- `RESULT_BASED_EXP_INCLUDE_FAINTED`
: Optional. If enabled, fainted party Pokemon are eligible for contribution capture/bonus.

- `RESULT_BASED_EXP_BASE_PERCENT`
: Percentage of normal EXP retained as scaled base (default currently set to 55).

- `RESULT_BASED_EXP_STAT_HP_EQUIV_DIV`
: Conversion factor used by the stat contribution pipeline.

- `RESULT_BASED_EXP_WEIGHT_DEFENSE_PERCENT`
: Shared weight for DEF/SPDEF drops.

- `RESULT_BASED_EXP_WEIGHT_OFFENSE_PERCENT`
: Shared weight for ATK/SPATK drops.

- `RESULT_BASED_EXP_WEIGHT_SPEED_PERCENT`
: Weight for SPEED drops.

- `RESULT_BASED_EXP_WEIGHT_ACCURACY_EVASION_PERCENT`
: Shared weight for ACCURACY/EVASION drops.

## Contribution Sources
### 1) Direct damage
Recorded as raw HP removed from enemy targets.

### 2) Residual damage (source-attributed only)
Currently tracked where source attribution is reliable in existing flow:
- Leech Seed
- Trapping damage
- Bad Dreams

### 3) Stat drops
For each successful stat drop, contribution is converted to HP-equivalent using:
- Effective stat reduction ratio for the dropped stat.
- Target max HP.
- Stat-family weight from config.

This keeps defensive/offensive/tempo/control utility tunable and comparable in one payout path.

## File Map
Core EXP payout integration:
- `src/battle/battle_script_commands.c`

Contribution tracking backend:
- `src/battle/exp_contribution.c`
- `include/exp_contribution.h`

Damage tracking hook:
- `src/individual/ServerHPCalc.c`

Residual tracking hooks:
- `src/individual/ServerFieldConditionCheck.c`

Stat drop tracking hook:
- `src/individual/btl_scr_cmd_33_statbuffchange.c`

## Tuning Guidance
If total leveling is too fast:
- Lower `RESULT_BASED_EXP_BASE_PERCENT`.
- Lower weight macros.

If utility playstyles feel under-rewarded:
- Raise the corresponding weight macro(s), usually:
  - `RESULT_BASED_EXP_WEIGHT_OFFENSE_PERCENT`
  - `RESULT_BASED_EXP_WEIGHT_SPEED_PERCENT`
  - `RESULT_BASED_EXP_WEIGHT_ACCURACY_EVASION_PERCENT`

If defensive setup is too dominant:
- Lower `RESULT_BASED_EXP_WEIGHT_DEFENSE_PERCENT`.

## Implementation Notes
- Arithmetic uses saturating safeguards in contribution storage to prevent long-battle overflow issues.
- Contribution snapshots are captured per fainted enemy and then cleared to avoid double-award.
- If no valid contribution is captured for a fainted enemy, payout falls back to scaled base only for that award step.
