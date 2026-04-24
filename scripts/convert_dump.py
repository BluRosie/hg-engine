import json
import re
from pathlib import Path
from typing import Any, Dict, List


def parse_defines(header: Path, prefix: str) -> Dict[int, str]:
    """Return {numeric_value: CONSTANT_NAME} for the given header."""
    pat = re.compile(rf"#define\s+({prefix}_\w+)\s+(\d+)")
    out: Dict[int, str] = {}
    for line in header.read_text(encoding="utf-8").splitlines():
        m = pat.search(line)
        if m:
            out[int(m.group(2))] = m.group(1)
    return out


SPECIES_HDR = Path("include/constants/species.h")
MOVES_HDR = Path("include/constants/moves.h")

species_map = parse_defines(SPECIES_HDR, "SPECIES")  # int → name
move_map = parse_defines(MOVES_HDR, "MOVE")  # int → name


def parse_form_table(c_file: Path) -> Dict[str, Dict[int, str]]:
    """
    Reads PokeFormDataTbl.c and builds:
        {base_species_name: {form_number: form_constant_name, …}, …}

    Example entry in the C file:
        [SPECIES_CHARIZARD] = {
            NEEDS_REVERSION | SPECIES_MEGA_CHARIZARD_X,
            NEEDS_REVERSION | SPECIES_MEGA_CHARIZARD_Y,
        },

    The macro `NEEDS_REVERSION |` is stripped; the remaining identifier
    (e.g. SPECIES_MEGA_CHARIZARD_X) is stored verbatim.
    """
    idx_pat = re.compile(r"\[\s*(SPECIES_[A-Z0-9_]+)\s*\]\s*=")
    const_pat = re.compile(r"(?:(?:NEEDS_REVERSION\s*\|\s*)?([A-Z0-9_]+))")

    form_table: Dict[str, Dict[int, str]] = {}
    current_base: str | None = None
    form_index = 0  # 0‑based while reading, we store 1‑based later

    for raw in c_file.read_text(encoding="utf-8").splitlines():
        # ----- start of a new species block -----
        idx_match = idx_pat.search(raw)
        if idx_match:
            current_base = idx_match.group(1)  # e.g. SPECIES_CHARIZARD
            form_table[current_base] = {}
            form_index = 1  # forms start at 1 for the output
            continue

        # ----- inside a block -----
        if current_base is not None:
            if "}," in raw:  # end of this block
                current_base = None
                continue

            for m in const_pat.finditer(raw):
                const_name = m.group(1)  # stripped of NEEDS_REVERSION
                if const_name:
                    form_table[current_base][form_index] = const_name
                    form_index += 1

    return form_table


FORM_TABLE = parse_form_table(Path("data/PokeFormDataTbl.c"))
# Example access:
#   FORM_TABLE["SPECIES_CHARIZARD"][1] -> "SPECIES_MEGA_CHARIZARD_X"


def resolve_species_name(national_id: int, form: int = 0) -> str:
    """
    * Apply the +50 offset for IDs ≥ 494.
    * Find the base constant name (e.g. SPECIES_CHARIZARD).
    * If `form` > 0, look for a matching entry in FORM_TABLE.
      – When found, return that name.
      – Otherwise fall back to the generic `<BASE>_<form>` suffix.
    """
    # ---- base constant (with the corrected offset rule) ----
    lookup_id = national_id + 50 if national_id >= 494 else national_id
    base_name = species_map.get(lookup_id, f"SPECIES_UNKNOWN_{national_id}")

    if form == 0:
        return base_name

    # FORM_TABLE keys are the *base* constant names (e.g. SPECIES_CHARIZARD)
    forms_for_base = FORM_TABLE.get(base_name, {})
    # `forms_for_base` stores 1‑based form numbers
    form_name = forms_for_base.get(form)
    if form_name:
        return form_name

    # ---- fallback when the form is not defined in the C table ----
    return f"{base_name}_{form}"


def resolve_move_name(move_id: int) -> str:
    """+3 offset for IDs ≥ 468, then map to constant."""
    lookup = move_id + 3 if move_id >= 468 else move_id
    return move_map.get(lookup, f"MOVE_UNKNOWN_{move_id}")


def convert_entry(entry: Dict[str, Any]) -> Dict[str, Any]:
    sp_id = entry["Info"]["SpeciesNational"]
    form = entry["Info"]["Form"]
    key = resolve_species_name(sp_id, form)

    hardcoded_mappings = {
        "SPECIES_DEOXYS_1": "SPECIES_DEOXYS_ATTACK",
        "SPECIES_DEOXYS_2": "SPECIES_DEOXYS_DEFENSE",
        "SPECIES_DEOXYS_3": "SPECIES_DEOXYS_SPEED",
        "SPECIES_WORMADAM_1": "SPECIES_WORMADAM_SANDY",
        "SPECIES_WORMADAM_2": "SPECIES_WORMADAM_TRASHY",
        "SPECIES_ROTOM_1": "SPECIES_ROTOM_HEAT",
        "SPECIES_ROTOM_2": "SPECIES_ROTOM_WASH",
        "SPECIES_ROTOM_3": "SPECIES_ROTOM_FROST",
        "SPECIES_ROTOM_4": "SPECIES_ROTOM_FAN",
        "SPECIES_ROTOM_5": "SPECIES_ROTOM_MOW",
        "SPECIES_GIRATINA_1": "SPECIES_GIRATINA_ORIGIN",
        "SPECIES_SHAYMIN_1": "SPECIES_SHAYMIN_SKY",
        "SPECIES_RAICHU_2": "SPECIES_MEGA_RAICHU_X",
        "SPECIES_RAICHU_3": "SPECIES_MEGA_RAICHU_Y",
        "SPECIES_ABSOL_2": "SPECIES_MEGA_ABSOL_Z",
        "SPECIES_GARCHOMP_2": "SPECIES_MEGA_GARCHOMP_Z",
        "SPECIES_LUCARIO_2": "SPECIES_MEGA_LUCARIO_Z",
        "SPECIES_MEOWSTIC_2": "SPECIES_MEGA_MEOWSTIC",
        "SPECIES_MEOWSTIC_3": "SPECIES_MEGA_MEOWSTIC_FEMALE",
        "SPECIES_MAGEARNA_2": "SPECIES_MEGA_MAGEARNA",
        "SPECIES_MAGEARNA_3": "SPECIES_MEGA_MAGEARNA_ORIGINAL",
        "SPECIES_TATSUGIRI_3": "SPECIES_MEGA_TATSUGIRI",
        "SPECIES_TATSUGIRI_4": "SPECIES_MEGA_TATSUGIRI_DROOPY",
        "SPECIES_TATSUGIRI_5": "SPECIES_MEGA_TATSUGIRI_STRETCHY",
        "SPECIES_PYROAR_FEMALE": "SPECIES_MEGA_PYROAR",  # Pyroar female is only a form in hg-engine
    }

    if key in hardcoded_mappings:
        key = hardcoded_mappings[key]

    no_need_to_include_species_forms = [
        "SPECIES_UNOWN",
        "SPECIES_BURMY",
        "SPECIES_MOTHIM",
        "SPECIES_ARCEUS",
        "SPECIES_SCATTERBUG",
        "SPECIES_SPEWPA",
        "SPECIES_SILVALLY",
    ]

    for species in no_need_to_include_species_forms:
        if species in key and form != 0:
            return {}

    # The rest should be Megas
    if key.endswith("_1") or key.endswith("_2") or key.endswith("_3"):
        key = key[:-1] + "MEGA"

    # -3: evo, -2: reminder

    # Reminder moves
    lvl_moves = []
    for rm in entry.get("ReminderMoves", []):
        lvl_moves.append({"Level": 1, "Move": resolve_move_name(rm)})
    for lm in entry.get("Learnset", []):
        if lm["Level"] == -2:
            lvl_moves.append({"Level": 1, "Move": resolve_move_name(lm["Move"])})

    # Level‑up moves
    for lm in entry.get("Learnset", []):
        if lm["Level"] == -2:
            continue
        lvl = 0 if lm["Level"] == -3 else lm["Level"]
        lvl_moves.append({"Level": lvl, "Move": resolve_move_name(lm["Move"])})

    lvl_moves.sort(key=lambda d: d["Level"])

    # TM moves
    tm_moves = [resolve_move_name(m) for m in entry.get("TechnicalMachine", [])]

    # Egg / Tutor moves – keep empty lists but resolve names for consistency
    egg_moves = [resolve_move_name(m) for m in entry.get("EggMoves", [])]
    tutor_moves = []  # not present in the provided sample

    return {
        key: {
            "LevelMoves": lvl_moves,
            "MachineMoves": tm_moves,
            "EggMoves": egg_moves,
            "TutorMoves": tutor_moves,
        }
    }


def main() -> None:
    src = json.loads(Path("scripts/personal_array.json").read_text(encoding="utf-8"))
    out: Dict[str, Any] = {}
    for ent in src["Table"]:
        out.update(convert_entry(ent))

    Path("scripts/converted.json").write_text(
        json.dumps(out, indent=2, ensure_ascii=False), encoding="utf-8"
    )
    print(f"✅ Finished – {len(out)} species written to converted.json")


if __name__ == "__main__":
    main()
