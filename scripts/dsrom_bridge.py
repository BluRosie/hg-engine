#!/usr/bin/env python3
# Bridges ds-rom's structured extraction (config.yaml + arm9/, arm9_overlays/, files/, ...)
# to the flat base/arm9.bin, base/overarm9.bin, base/overlay/overlay_NNNN.bin layout that
# scripts/make.py, overlays.mk and the datagen tools already expect from ndstool.
import argparse
import os
import shutil
import struct
import subprocess

import yaml

OVERLAY_ENTRY_SIZE = 0x20
COMPRESSED_BIT = 1 << 24
SIGNED_BIT = 1 << 25


def resolve_bin(path):
    if os.path.isfile(path + ".exe"):
        return path + ".exe"
    return path


def read_yaml(path):
    with open(path, encoding="utf-8") as f:
        return yaml.safe_load(f)


def write_yaml(path, data):
    with open(path, "w", encoding="utf-8") as f:
        yaml.safe_dump(data, f, sort_keys=False)


def pack_flags(code_size, compressed, signed):
    value = (code_size & 0xFFFFFF) if compressed else 0
    if compressed:
        value |= COMPRESSED_BIT
    if signed:
        value |= SIGNED_BIT
    return value


def unpack_flags(value):
    size = value & 0xFFFFFF
    compressed = bool(value & COMPRESSED_BIT)
    signed = bool(value & SIGNED_BIT)
    return size, compressed, signed


def extract(dsrom_bin, rom, dsrom_dir, base, filesys):
    if os.path.isdir(dsrom_dir):
        shutil.rmtree(dsrom_dir)
    subprocess.run([resolve_bin(dsrom_bin), "extract", "-r", rom, "-o", dsrom_dir], check=True)

    os.makedirs(base, exist_ok=True)
    os.makedirs(os.path.join(base, "overlay"), exist_ok=True)

    shutil.copyfile(os.path.join(dsrom_dir, "arm9", "arm9.bin"), os.path.join(base, "arm9.bin"))
    shutil.copyfile(os.path.join(dsrom_dir, "arm7", "arm7.bin"), os.path.join(base, "arm7.bin"))

    if os.path.isdir(filesys):
        shutil.rmtree(filesys)
    shutil.copytree(os.path.join(dsrom_dir, "files"), filesys)

    overlays_yaml_path = os.path.join(dsrom_dir, "arm9_overlays", "overlays.yaml")
    data = read_yaml(overlays_yaml_path)
    overlays = data["overlays"] if data else []
    num_overlays = max((o["id"] for o in overlays), default=-1) + 1

    table = bytearray(num_overlays * OVERLAY_ENTRY_SIZE)
    for o in overlays:
        off = o["id"] * OVERLAY_ENTRY_SIZE
        flags = pack_flags(o["code_size"], o["compressed"], o["signed"])
        struct.pack_into(
            "<8I", table, off,
            o["id"], o["base_address"], o["code_size"], o["bss_size"],
            o["ctor_start"], o["ctor_end"], o["file_id"], flags,
        )
        src = os.path.join(dsrom_dir, "arm9_overlays", o["file_name"])
        dst = os.path.join(base, "overlay", f"overlay_{o['id']:04}.bin")
        shutil.copyfile(src, dst)

    with open(os.path.join(base, "overarm9.bin"), "wb") as f:
        f.write(table)


def pack(dsrom_bin, rom, dsrom_dir, base, filesys):
    shutil.copyfile(os.path.join(base, "arm9.bin"), os.path.join(dsrom_dir, "arm9", "arm9.bin"))

    dsrom_files = os.path.join(dsrom_dir, "files")
    shutil.rmtree(dsrom_files)
    shutil.copytree(filesys, dsrom_files)

    overlays_yaml_path = os.path.join(dsrom_dir, "arm9_overlays", "overlays.yaml")
    data = read_yaml(overlays_yaml_path)
    by_id = {o["id"]: o for o in data["overlays"]}

    with open(os.path.join(base, "overarm9.bin"), "rb") as f:
        table = f.read()

    new_overlays = []
    for i in range(len(table) // OVERLAY_ENTRY_SIZE):
        off = i * OVERLAY_ENTRY_SIZE
        oid, base_addr, code_size, bss_size, ctor_start, ctor_end, file_id, flags = struct.unpack_from("<8I", table, off)
        _, compressed, signed = unpack_flags(flags)

        existing = by_id.get(oid)
        file_name = existing["file_name"] if existing else f"ov{oid:03}.bin"

        entry = {
            "id": oid,
            "base_address": base_addr,
            "code_size": code_size,
            "bss_size": bss_size,
            "ctor_start": ctor_start,
            "ctor_end": ctor_end,
            "file_id": file_id,
            "compressed": compressed,
            "signed": signed,
            "file_name": file_name,
        }

        if existing and "dsprot" in existing and existing["code_size"] == code_size:
            entry["dsprot"] = existing["dsprot"]

        new_overlays.append(entry)

        src = os.path.join(base, "overlay", f"overlay_{oid:04}.bin")
        dst = os.path.join(dsrom_dir, "arm9_overlays", file_name)
        shutil.copyfile(src, dst)

    data["overlays"] = new_overlays
    write_yaml(overlays_yaml_path, data)

    subprocess.run([resolve_bin(dsrom_bin), "build", "-c", os.path.join(dsrom_dir, "config.yaml"), "-o", rom], check=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--dsrom-bin", default="tools/dsrom")
    parser.add_argument("--dsrom-dir", required=True)
    parser.add_argument("--base", required=True)
    parser.add_argument("--filesys", required=True)
    subparsers = parser.add_subparsers(dest="command", required=True)

    extract_parser = subparsers.add_parser("extract")
    extract_parser.add_argument("--rom", required=True)

    pack_parser = subparsers.add_parser("pack")
    pack_parser.add_argument("--rom", required=True)

    args = parser.parse_args()
    if args.command == "extract":
        extract(args.dsrom_bin, args.rom, args.dsrom_dir, args.base, args.filesys)
    elif args.command == "pack":
        pack(args.dsrom_bin, args.rom, args.dsrom_dir, args.base, args.filesys)


if __name__ == "__main__":
    main()
