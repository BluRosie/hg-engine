#!/usr/bin/env python3
"""Parse `armips/data/moves.s` and fetch localized move names from PokeAPI.

This script builds two files in `scripts/data/`:

- `moveNames.json`  : mapping `pokeapi_move_id` -> `{lang_code: name}`
- `movesIndex.json` : list where each movedata occurrence index maps to the
    corresponding PokeAPI move id (the script leaves index 0 unused, so the
    first movedata occurrence is at index 1).

Behavior & notes:
- The parser reads `movedata SYMBOL, "Display Name"` entries left-to-right
    from `armips/data/moves.s` and attempts to match each name against the
    PokeAPI move list. Exact matches are preferred; ambiguous matches are
    reported in the printed `Issues` list.
- If a fetched localized name exceeds 11 characters the script will prompt
    interactively to auto-fix it with a short heuristic (press `y` to accept
    the suggested short form, `n` to skip, or `e` to enter a custom value).
    Use `interactive=False` when calling `fetch_and_save()` programmatically to
    skip prompts.
- The script requires network access and the `requests` package.

Usage:
    python3 fetchMoveNames.py [--moves-s PATH] [--out-dir DIR]

The outputs are intended for `changeMoveLanguages.py` and should be kept in
`scripts/data/` alongside `moveDescriptions.json` when present.
"""
import argparse
import json
import os
import re
import sys
import time

try:
    import requests
except Exception:
    print("Please install requests: pip3 install requests")
    raise


REPO_ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
MOVES_S_PATH = os.path.join(REPO_ROOT, 'armips', 'data', 'moves.s')
OUT_DIR = os.path.join(os.path.dirname(__file__), 'data')
OUT_LOCALISED = os.path.join(OUT_DIR, 'moveNames.json')
OUT_INDEX = os.path.join(OUT_DIR, 'movesIndex.json')

MOVEDATA_RE = re.compile(r'movedata\s+([A-Za-z0-9_]+)\s*,\s*"([^"]*)"')


def parse_moves_s(path):
    with open(path, 'r', encoding='utf-8') as f:
        text = f.read()
    entries = MOVEDATA_RE.findall(text)
    if not entries:
        print('No movedata entries found in', path)
        return [], []
    # entries is list of (symbol, display_name)
    names = ['-']
    symbols = [None]
    for sym, name in entries:
        names.append(name)
        symbols.append(sym)
    return names, symbols


def fetch_all_move_list():
    url = 'https://pokeapi.co/api/v2/move?limit=10000'
    r = requests.get(url, timeout=30)
    r.raise_for_status()
    return r.json().get('results', [])


def shorten_name_candidate(name, max_len=11):
    if len(name) <= max_len:
        return name
    # try by splitting words
    sep_chars = [' ', '-', '_']
    for sep in sep_chars:
        if sep in name:
            parts = name.split(sep)
            # try shorten first word progressively
            for trunc in range(len(parts[0]), 0, -1):
                cand = parts[0][:trunc] + '.' + (sep.join(parts[1:]) if parts[1:] else '')
                cand = cand.strip()
                if len(cand) <= max_len:
                    return cand
            # try shorten second word
            if len(parts) > 1:
                for trunc in range(len(parts[1]), 0, -1):
                    cand = parts[0] + sep + parts[1][:trunc] + '.' + (sep.join(parts[2:]) if len(parts) > 2 else '')
                    cand = cand.strip()
                    if len(cand) <= max_len:
                        return cand
    # fallback: hard truncate and add dot if space allows
    if max_len > 1:
        return name[:max_len-1].rstrip() + '…'
    return name[:max_len]


def fetch_and_save(moves_s=MOVES_S_PATH, out_dir=OUT_DIR, interactive=True, session=None):
    os.makedirs(out_dir, exist_ok=True)
    names, symbols = parse_moves_s(moves_s)
    if not names:
        raise SystemExit('No movedata entries found')

    print('Parsed', len(names)-1, 'moves from', moves_s)

    print('Fetching move list from PokeAPI...')
    all_moves = fetch_all_move_list()
    print('Found', len(all_moves), 'moves in PokeAPI list')

    if session is None:
        session = requests.Session()

    # Build name->candidate list by fetching each move only once
    name_map = {}  # lower_name -> list of move detail dicts
    id_to_detail = {}
    total = len(all_moves)
    def _print_progress(i, total, prefix=''):
        pct = int((i/total)*100) if total else 100
        sys.stdout.write(f"\r{prefix}{i}/{total} ({pct}%)")
        sys.stdout.flush()

    for i, res in enumerate(all_moves, 1):
        try:
            r = session.get(res['url'], timeout=30)
            r.raise_for_status()
            detail = r.json()
            id_to_detail[detail['id']] = detail
            for nm in detail.get('names', []):
                s = nm.get('name', '')
                if not s:
                    continue
                key = s.strip().lower()
                name_map.setdefault(key, []).append(detail)
        except Exception as e:
            print('\nWarning: failed to fetch', res.get('url'), e)
        _print_progress(i, total, prefix='Fetching moves: ')
        time.sleep(0.02)
    print('\n')

    # language url -> iso639 cache
    lang_cache = {}

    def langcode_from_url(url):
        if url in lang_cache:
            return lang_cache[url]
        try:
            r = session.get(url, timeout=20)
            r.raise_for_status()
            L = r.json()
            iso = L.get('iso639', '') or L.get('name', '')
            iso = iso.split('-')[0].lower()
        except Exception:
            iso = url.split('/')[-2]
        lang_cache[url] = iso
        return iso

    moves_localised = {}
    moves_index = [0]
    issues = []

    # collect long names to prompt
    long_entries = []  # tuples (move_idx, move_id, lang_code, name)

    for idx, local_name in enumerate(names[1:], start=1):
        key = local_name.strip().lower()
        candidates = name_map.get(key, [])
        chosen = None
        if len(candidates) == 1:
            chosen = candidates[0]
        elif len(candidates) > 1:
            # prefer candidate where english name matches exactly
            for c in candidates:
                for nm in c.get('names', []):
                    lang = nm.get('language', {}).get('name')
                    if lang == 'en' and nm.get('name', '').strip().lower() == key:
                        chosen = c
                        break
                if chosen:
                    break
            if not chosen:
                chosen = candidates[0]
                issues.append(f'Ambiguous match for "{local_name}": used id {chosen["id"]}')
        else:
            issues.append(f'Move not found: "{local_name}" (index {idx})')
            moves_index.append(None)
            continue

        move_id = chosen['id']
        moves_index.append(move_id)

        # build lang->name
        mapping = {}
        for nm in chosen.get('names', []):
            lang_obj = nm.get('language', {})
            lang_url = lang_obj.get('url')
            if lang_url:
                code = langcode_from_url(lang_url)
            else:
                code = (lang_obj.get('name') or '').split('-')[0].lower()
            if not code:
                continue
            name = nm.get('name')
            mapping[code] = name
            if len(name) > 11:
                long_entries.append((idx, move_id, code, name))

        moves_localised[str(move_id)] = mapping

    # interactive prompt to auto-fix long names
    if long_entries and interactive:
        print('\nFound move names exceeding 11 characters:')
        for (idx, move_id, code, name) in long_entries:
            cand = shorten_name_candidate(name)
            print(f'Index {idx} move_id {move_id} [{code}]: "{name}" -> candidate "{cand}"')
            while True:
                ans = input('Auto-fix this name? [y/n/e(edit)]: ').strip().lower()
                if ans == 'y':
                    moves_localised.setdefault(str(move_id), {})[code] = cand
                    break
                elif ans == 'n' or ans == '':
                    break
                elif ans == 'e':
                    newv = input('Enter replacement: ').strip()
                    if newv:
                        moves_localised.setdefault(str(move_id), {})[code] = newv
                    break
                else:
                    print('Please answer y, n or e')

    # Ensure move 0 entry
    if '0' not in moves_localised:
        moves_localised['0'] = {'en': '-'}

    # Save outputs
    with open(OUT_LOCALISED, 'w', encoding='utf-8') as f:
        json.dump(moves_localised, f, ensure_ascii=False, indent=2)
    with open(OUT_INDEX, 'w', encoding='utf-8') as f:
        json.dump(moves_index, f, ensure_ascii=False, indent=2)

    print('\nWrote:', OUT_LOCALISED)
    print('Wrote:', OUT_INDEX)
    if issues:
        print('\nIssues encountered:')
        for it in issues:
            print('-', it)
    else:
        print('\nNo issues encountered')


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--moves-s', default=MOVES_S_PATH)
    parser.add_argument('--out-dir', default=OUT_DIR)
    args = parser.parse_args()
    fetch_and_save(args.moves_s, args.out_dir, interactive=True)


if __name__ == '__main__':
    main()
