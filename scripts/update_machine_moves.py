"""
Attempts to reconcile TM/HM/TR changes. 
Reads moves.s and modifies the item sprite and description accordingly.
"""
import re
import argparse
from pathlib import Path
import shutil

CUSTOM = 9999
MSG_DATA_ITEM_DESCRIPTION = {
    4: 830, 5: 834, 6: 838, 7: 842, 8: 846, 9: 850, CUSTOM: 221
}


def parse_moves_descriptions(moves_s: Path):
    """
    Parse single-line movedescription entries, replace literal '\n' sequences with spaces,
    and convert straight apostrophes (') to typographic ones (’).
    We deliberately do NOT unescape backslashes while scanning, so '\n' stays as two
    characters and can be replaced cleanly afterwards.
    """
    descs = {}  # MOVE_*
    prefix = re.compile(r'^\s*movedescription\s+(\w+)\s*,\s*')

    with moves_s.open(encoding="utf-8") as f:
        for raw in f:
            line = raw.rstrip("\n")
            m = prefix.match(line)
            if not m:
                continue
            move = m.group(1)

            # Find the first quoted string after the prefix (no escape interpretation)
            i = line.find('"', m.end())
            if i == -1:
                continue
            i += 1

            buf = []
            while i < len(line):
                c = line[i]
                if c == '"':
                    break
                buf.append(c)
                i += 1

            text = "".join(buf)
            # Replace literal '\n' sequences with spaces
            text = text.replace(r'\n', " ")
            # Replace straight apostrophes with typographic ones
            text = text.replace("'", "’")

            descs[move] = text

    return descs


def parse_moves_types(moves_s: Path):
    """
    Capture TYPE_* from both `movedata` and `movedatalongname` blocks.
    Prefer TYPE_FAIRY when multiple appear on the same 'type' line.
    """
    moves_to_type = {}   # MOVE_* -> TYPE_*
    current_move = None
    current_type = None
    TYPE_TOKEN_RE = re.compile(r'\bTYPE_[A-Za-z0-9_]+')
    START_RE = re.compile(r'^\s*(movedata|movedatalongname)\s+(\w+)\s*,')

    with moves_s.open(encoding="utf-8") as f:
        for raw in f:
            line = raw.strip()
            if not line or line.startswith("//"):
                continue

            # start of a move block (supports both macros)
            m = START_RE.match(line)
            if m:
                current_move = m.group(2)
                current_type = None
                continue

            # pick up type lines inside a block (handles ternary, parens, etc.)
            if current_move and line.startswith("type"):
                types = TYPE_TOKEN_RE.findall(line)
                if types:
                    current_type = "TYPE_FAIRY" if "TYPE_FAIRY" in types else types[0]
                continue

            # end of block
            if line.startswith("terminatedata") and current_move:
                if current_move and current_type:
                    moves_to_type[current_move] = current_type
                current_move = None
                current_type = None

    return moves_to_type



def load_machine_move_list(file_path: Path):
    """
    Scan C file and extract MOVE_* tokens inside sMachineMoves[].
    """
    move_list = []
    in_array = False
    move_pattern = re.compile(r'\b(MOVE_[A-Z0-9_]+)\b')

    with file_path.open(encoding='utf-8') as f:
        for raw in f:
            line = raw.strip()
            if 'sMachineMoves' in line and '{' in line:
                in_array = True
                continue
            if in_array:
                if '};' in line:
                    break
                move_list.extend(move_pattern.findall(line))
    return move_list


def load_item_ids(header_path: Path):
    """
    Parse `#define ITEM_* <int>` (decimal or hex) from include/constants/item.h.
    """
    items = {}
    pat = re.compile(r'#define\s+(ITEM_[A-Z0-9_]+)\s+([0-9xXa-fA-F]+)')
    with header_path.open(encoding="utf-8") as f:
        for line in f:
            m = pat.match(line.strip())
            if not m:
                continue
            val = m.group(2)
            try:
                v = int(val, 0)
            except ValueError:
                continue
            items[m.group(1)] = v
    return items


def item_generation(item_id, C):
    if item_id <= C["ITEM_ENIGMA_STONE"]: 
        return 4
    if item_id <= C["ITEM_REVEAL_GLASS"]: 
        return 5
    if item_id <= C["ITEM_EON_FLUTE"]:    
        return 6
    if item_id <= C["ITEM_UNKNOWN_1073"]: 
        return 7
    if item_id <= C["ITEM_LEGEND_PLATE"]: 
        return 8
    if item_id <= C["ITEM_BRIARS_BOOK"]:  
        return 9
    return CUSTOM


def item_msg_offset(item_id, C):
    if item_id <= C["ITEM_ENIGMA_STONE"]:
        return item_id
    if item_id <= C["ITEM_REVEAL_GLASS"]:
        return item_id - (C["ITEM_ENIGMA_STONE"] + 1)
    if item_id <= C["ITEM_EON_FLUTE"]:
        return item_id - (C["ITEM_REVEAL_GLASS"] + 1)
    if item_id <= C["ITEM_UNKNOWN_1073"]:
        return item_id - (C["ITEM_EON_FLUTE"] + 1)
    if item_id <= C["ITEM_LEGEND_PLATE"]:
        return item_id - (C["ITEM_UNKNOWN_1073"] + 1)
    if item_id <= C["ITEM_BRIARS_BOOK"]:
        return item_id - (C["ITEM_LEGEND_PLATE"] + 1)
    return item_id - (C["ITEM_BRIARS_BOOK"] + 1)


def build_item_to_index_fn(C):
    """
    Port of ItemToMachineMoveIndex using the real IDs and same block cutoffs,
    including HM07_ORAS (100) and TM00 (101) specials.
    """
    def has(*names): return all(n in C for n in names)
    ranges = []

    if has("ITEM_TM001","ITEM_HM08"):
        ranges.append(("A", C["ITEM_TM001"], C["ITEM_HM08"], lambda x: x - C["ITEM_TM001"]))
    hm07_oras_id = C["ITEM_HM07_ORAS"] if "ITEM_HM07_ORAS" in C else None
    tm00_id = C["ITEM_TM00"] if "ITEM_TM00" in C else None
    if has("ITEM_TM093","ITEM_TM095"):
        ranges.append(("B", C["ITEM_TM093"], C["ITEM_TM095"], lambda x: x - C["ITEM_TM093"] + 102))
    if has("ITEM_TM096","ITEM_TM100"):
        ranges.append(("C", C["ITEM_TM096"], C["ITEM_TM100"], lambda x: x - C["ITEM_TM096"] + 105))
    if has("ITEM_TM100_SV","ITEM_TM229"):
        ranges.append(("D", C["ITEM_TM100_SV"], C["ITEM_TM229"], lambda x: x - C["ITEM_TM100_SV"] + 110))
    if has("ITEM_TR00","ITEM_TR99"):
        ranges.append(("E", C["ITEM_TR00"], C["ITEM_TR99"], lambda x: x - C["ITEM_TR00"] + 240))

    def f(item_id):
        if "ITEM_TM001" in C and "ITEM_HM08" in C and C["ITEM_TM001"] <= item_id <= C["ITEM_HM08"]:
            return item_id - C["ITEM_TM001"]
        if hm07_oras_id is not None and item_id == hm07_oras_id:
            return 100
        if tm00_id is not None and item_id == tm00_id:
            return 101
        for _, lo, hi, trans in ranges:
            if lo <= item_id <= hi:
                return trans(item_id)
        return None

    return f


def collect_machine_items(items, item_to_index):
    """
    Build index->(ITEM_TOKEN, id) for ITEM_TM*/HM*/TR* present in header.
    """
    out = {}
    for name, iid in items.items():
        if not (name.startswith("ITEM_TM") or name.startswith("ITEM_HM") or name.startswith("ITEM_TR")):
            continue
        idx = item_to_index(iid)
        if idx is not None:
            out[idx] = (name, iid)
    return out


def write_description_line(text_root: Path, file_id: int, line_num_1idx: int, text: str):
    """
    Write/patch line N (1-based) in <text_root>/<file_id>.txt, pad as needed.
    """
    path = text_root / f"{file_id}.txt"
    lines = []
    if path.exists():
        with path.open(encoding="utf-8") as f:
            lines = f.read().splitlines()
    while len(lines) < line_num_1idx:
        lines.append("")
    lines[line_num_1idx - 1] = text
    with path.open("w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(lines) + "\n")


def canonical_items():
    base_A = 10_000
    for n in range(1, 93):  # TM001..TM092
        yield ('TM', n, base_A + (n - 1))
    for n in range(1, 9):   # HM01..HM08
        yield ('HM', n, base_A + 92 + (n - 1))

    base_ORAS = 20_000
    yield ('HM', 7, base_ORAS + 0)    # HM07_ORAS index 100
    yield ('TM', 0, base_ORAS + 1)    # TM00 index 101

    base_B = 30_000
    for n in range(93, 96):           # TM093..TM095 -> 102..104
        yield ('TM', n, base_B + (n - 93))

    base_C = 31_000
    for n in range(96, 101):          # TM096..TM100 -> 105..109
        yield ('TM', n, base_C + (n - 96))

    base_D = 40_000
    for i, n in enumerate(range(100, 230)):  # TM100_SV..TM229 -> 110..239
        yield ('TM', n, base_D + i)

    base_E = 50_000
    for n in range(0, 100):           # TR00..TR99 -> 240..339
        yield ('TR', n, base_E + n)


def item_to_machine_move_index(sim_id):
    ITEM_TM001 = 10_000
    ITEM_HM08 = ITEM_TM001 + 92 + 8 - 1
    ITEM_HM07_ORAS = 20_000
    ITEM_TM00 = 20_001
    ITEM_TM093 = 30_000
    ITEM_TM095 = ITEM_TM093 + (95 - 93)
    ITEM_TM096 = 31_000
    ITEM_TM100 = ITEM_TM096 + (100 - 96)
    ITEM_TM100_SV = 40_000
    ITEM_TM229 = ITEM_TM100_SV + (229 - 100)
    ITEM_TR00 = 50_000
    ITEM_TR99 = ITEM_TR00 + 99

    x = sim_id
    if ITEM_TM001 <= x <= ITEM_HM08:
        return x - ITEM_TM001
    if x == ITEM_HM07_ORAS:
        return 100
    if x == ITEM_TM00:
        return 101
    if ITEM_TM093 <= x <= ITEM_TM095:
        return (x - ITEM_TM093) + 102
    if ITEM_TM096 <= x <= ITEM_TM100:
        return (x - ITEM_TM096) + 105
    if ITEM_TM100_SV <= x <= ITEM_TM229:
        return (x - ITEM_TM100_SV) + 110
    if ITEM_TR00 <= x <= ITEM_TR99:
        return (x - ITEM_TR00) + 240
    return None


def build_canonical_lookup(machine_moves):
    out = []
    for kind, number, sim_id in canonical_items():
        idx = item_to_machine_move_index(sim_id)
        if idx is None:
            continue
        if 0 <= idx < len(machine_moves):
            out.append((kind, number, idx, machine_moves[idx]))
        else:
            break
    return out


def type_token_to_basename(type_token: str) -> str:
    return type_token.split('_', 1)[1].lower()


def write_sprites(canonical_list, move_to_type, base_dir: Path, out_dir: Path):
    out_dir.mkdir(parents=True, exist_ok=True)
    copied = 0
    skipped = 0
    for kind, number, idx, move in canonical_list:
        tkn = move_to_type.get(move)
        if not tkn:
            print(f"skipped no TYPE {kind} {number}")
            skipped += 1
            continue
        src = base_dir / f"{type_token_to_basename(tkn)}.png"
        if not src.exists():
            print(f"skipped no BASE {kind} {number}")
            skipped += 1
            continue

        if kind == 'TM':
            dst = out_dir / ("tm00.png" if number == 0 else f"tm{int(number):03d}.png")
        elif kind == 'TR':
            dst = out_dir / f"tr{int(number):02d}.png"
        elif kind == 'HM':
            dst = out_dir / f"tr{int(number):02d}.png"
        else:
            print(f"skipped {kind} {number}")
            skipped += 1
            continue

        shutil.copyfile(src, dst)
        copied += 1

    return copied, skipped


def update_descriptions(args):
    move_desc = parse_moves_descriptions(args.moves)
    machine_moves = load_machine_move_list(args.machines)
    items = load_item_ids(args.items_header)

    item_to_index = build_item_to_index_fn(items)
    index_to_item = collect_machine_items(items, item_to_index)

    wrote = 0
    skipped = 0

    for idx, move in enumerate(machine_moves):
        info = index_to_item.get(idx)
        if info is None:
            skipped += 1
            continue

        item_name, item_id = info
        # HMs are always included now (no flag gate)

        desc = move_desc.get(move)
        if not desc:
            skipped += 1
            continue

        gen = item_generation(item_id, items)
        file_id = MSG_DATA_ITEM_DESCRIPTION[gen]
        line_num = item_msg_offset(item_id, items) + 1  # 1-indexed

        if args.dry_run:
            print(f"[dry] {item_name} id={item_id} idx={idx} -> file {file_id}, line {line_num} := {move} :: {desc[:60]}{'...' if len(desc)>60 else ''}")
        else:
            write_description_line(args.text_root, file_id, line_num, desc)
            wrote += 1

    if not args.dry_run:
        print(f"[descriptions] wrote={wrote} skipped={skipped}")
    return 0


def update_sprites(args):
    move_to_type = parse_moves_types(args.moves)
    machine_moves = load_machine_move_list(args.machines)
    canon = build_canonical_lookup(machine_moves)
    # Always include HMs now
    copied, skipped = write_sprites(
        canon,
        move_to_type,
        base_dir=args.base_sprites,
        out_dir=args.out
    )
    print(f"[sprites] copied={copied} skipped={skipped}")
    return 0


def build_parser():
    parser = argparse.ArgumentParser(description="Unified TM/TR/HM tools (descriptions + sprites)")

    # input
    parser.add_argument("--moves", default="armips/data/moves.s", type=Path, help="Path to moves.s")
    parser.add_argument("--machines", default="src/item.c", type=Path, help="C file defining sMachineMoves[]")
    parser.add_argument("--items-header", default="include/constants/item.h", type=Path, help="Path to include/constants/item.h")

    # output
    parser.add_argument("--text-root", default="data/text", type=Path, help="Root where <file_id>.txt files live")
    parser.add_argument("--base-sprites", default="data/graphics/item/base", type=Path, help="Base type sprites directory (fire.png, bug.png, etc.)")
    parser.add_argument("--out", default="data/graphics/item", type=Path, help="Output directory for generated sprites")

    parser.add_argument("--descriptions", action="store_true", help="Write item descriptions from movedescription lines")
    parser.add_argument("--sprites", action="store_true", help="Generate TM/TR/HM sprites based on move types")

    parser.add_argument("--dry-run", action="store_true", help="Show actions without writing/copying")

    return parser


if __name__ == "__main__":
    p = build_parser()
    args = p.parse_args()

    # Require at least one action
    if not (args.descriptions or args.sprites):
        print("[ERROR] Specify at least one of --descriptions or --sprites")
        exit(1)

    if args.descriptions:
        update_descriptions(args)
    if args.sprites:
        update_sprites(args)