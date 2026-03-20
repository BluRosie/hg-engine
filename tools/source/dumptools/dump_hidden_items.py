#!/usr/bin/env python3

import argparse
import os
import re
from pathlib import Path


REFERENCE_ROW_RE = re.compile(
    r"^\s*\{\s*(ITEM_[A-Z0-9_]+)\s*,\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*\},?(?:\s*//\s*(.*))?$"
)
ITEM_DEFINE_RE = re.compile(r"^#define\s+(ITEM_[A-Z0-9_]+)\s+(\d+)\b")


def load_item_name_to_id(constants_path: Path) -> dict[str, int]:
    items = {}
    for line in constants_path.read_text().splitlines():
        match = ITEM_DEFINE_RE.match(line.strip())
        if match is None:
            continue
        items[match.group(1)] = int(match.group(2))
    return items


def load_item_id_to_name(constants_path: Path) -> dict[int, str]:
    items = {}
    for line in constants_path.read_text().splitlines():
        match = ITEM_DEFINE_RE.match(line.strip())
        if match is None:
            continue
        items[int(match.group(2))] = match.group(1)
    return items

def parse_reference_rows(reference_path: Path) -> list[tuple[str, int, int, int, int, str | None]]:
    rows = []
    for raw_line in reference_path.read_text().splitlines():
        match = REFERENCE_ROW_RE.match(raw_line)
        if match is None:
            continue
        item_name = match.group(1)
        quantity = int(match.group(2))
        unk3 = int(match.group(3))
        unk4 = int(match.group(4))
        index = int(match.group(5))
        comment = match.group(6).strip() if match.group(6) else None
        rows.append((item_name, quantity, unk3, unk4, index, comment))
    return rows


def dump_hidden_items(reference_path: Path, reference_items_path: Path, output_items_path: Path, output_path: Path) -> None:
    reference_rows = parse_reference_rows(reference_path)
    reference_item_name_to_id = load_item_name_to_id(reference_items_path)
    output_item_id_to_name = load_item_id_to_name(output_items_path)

    output_path.parent.mkdir(parents=True, exist_ok=True)
    translated_rows = []

    for reference_item_name, quantity, unk3, unk4, index, reference_location in reference_rows:
        item_id = reference_item_name_to_id[reference_item_name]
        item_name = output_item_id_to_name[item_id]
        translated_rows.append((item_name, quantity, unk3, unk4, index, reference_location))

    name_width = max(len(row[0]) for row in translated_rows)

    with output_path.open("w", encoding="utf-8") as output:
        output.write("static const struct HiddenItemData sHiddenItemParam[] = {\n")

        for item_name, quantity, unk3, unk4, index, reference_location in translated_rows:
            location_comment = reference_location
            location_comment = f" // {location_comment}" if location_comment else ""
            output.write(
                f"    {{ {item_name:<{name_width}}, {quantity}, {unk3}, {unk4}, {index:<3} }},{location_comment}\n"
            )

        output.write("};\n\n")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--reference",
        default=Path(os.environ.get("POKEHEARTGOLD_DIR", "../pokeheartgold")) / "src/data/fieldmap/hidden_items.h",
        type=Path,
    )
    parser.add_argument(
        "--reference-items",
        default=Path(os.environ.get("POKEHEARTGOLD_DIR", "../pokeheartgold")) / "include/constants/items.h",
        type=Path,
    )
    parser.add_argument("--items", default="include/constants/item.h", type=Path)
    parser.add_argument("--output", default="dumped_c/hidden_items.c", type=Path)
    args = parser.parse_args()

    dump_hidden_items(args.reference, args.reference_items, args.items, args.output)


if __name__ == "__main__":
    main()
