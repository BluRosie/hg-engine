#!/usr/bin/env python3
"""Fetch move descriptions (flavor_text / short_effect) from PokeAPI and
save per-language entries.

Outputs:
- `scripts/data/moveDescriptions.json` : mapping `pokeapi_move_id` ->
    `{lang_code: text}` where `text` has internal newlines escaped as the two
    characters `\n` so downstream tools can decide how to render or write them
    into source files.

Behavior & notes:
- The script prefers `flavor_text_entries` from the PokeAPI move resource and
    falls back to `effect_entries` if no flavor texts are available.
- Text is normalized and wrapped to a configurable width (`--width`, default
    48) before being escaped and written to the JSON file.
- Requires network access and the `requests` package.

Usage:
    python3 fetchMoveDescriptions.py [--out-dir DIR] [--width WIDTH]

The produced `moveDescriptions.json` is used by `changeMoveLanguages.py` to
replace `movedescription` blocks in `armips/data/moves.s`.
"""
import argparse
import json
import os
import sys
import time
import textwrap

try:
    import requests
except Exception:
    print("Please install requests: pip3 install requests")
    raise


REPO_ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
OUT_DIR = os.path.join(os.path.dirname(__file__), 'data')
OUT_DESC = os.path.join(OUT_DIR, 'moveDescriptions.json')


def wrap_text(s, width=40):
    s = ' '.join(s.split())
    return '\n'.join(textwrap.wrap(s, width=width))


def _print_progress(i, total, prefix=''): 
    pct = int((i/total)*100)
    sys.stdout.write(f"\r{prefix}{i}/{total} ({pct}%)")
    sys.stdout.flush()


def fetch_and_save(out_dir=OUT_DIR, session=None, wrap_width=48):
    os.makedirs(out_dir, exist_ok=True)
    if session is None:
        session = requests.Session()

    # fetch list of moves
    url = 'https://pokeapi.co/api/v2/move?limit=10000'
    r = session.get(url, timeout=30)
    r.raise_for_status()
    all_moves = r.json().get('results', [])

    descs = {}
    issues = []
    total = len(all_moves)
    for idx, res in enumerate(all_moves, start=1):
        try:
            rr = session.get(res['url'], timeout=30)
            rr.raise_for_status()
            detail = rr.json()
            mid = detail.get('id')
            mapping = {}
            # prefer flavor_text_entries first
            for ft in detail.get('flavor_text_entries', []):
                lang = ft.get('language', {}).get('name')
                if not lang:
                    continue
                text = ft.get('flavor_text', '')
                text = text.replace('\n', ' ').replace('\f', ' ').strip()
                if lang not in mapping:
                    mapping[lang] = wrap_text(text, wrap_width)
            # fallback to effect_entries
            if not mapping:
                for ef in detail.get('effect_entries', []):
                    lang = ef.get('language', {}).get('name')
                    if not lang:
                        continue
                    text = ef.get('short_effect') or ef.get('effect') or ''
                    text = text.replace('\n', ' ').replace('\f', ' ').strip()
                    if lang not in mapping:
                        mapping[lang] = wrap_text(text, wrap_width)
            if mapping:
                # store with escaped newlines so downstream replacement can control newlines
                esc_map = {k: v.replace('\n', '\\n') for k, v in mapping.items()}
                descs[str(mid)] = esc_map
            else:
                issues.append(f'No description for move id {mid}')
        except Exception as e:
            issues.append(f'Failed to fetch {res.get("url")} : {e}')
        _print_progress(idx, total, prefix='Fetching descriptions: ')
        time.sleep(0.02)

    print('\n')
    with open(OUT_DESC, 'w', encoding='utf-8') as f:
        json.dump(descs, f, ensure_ascii=False, indent=2)

    print('Wrote:', OUT_DESC)
    if issues:
        print('\nIssues:')
        for it in issues:
            print('-', it)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--out-dir', default=OUT_DIR)
    parser.add_argument('--width', type=int, default=40, help='wrap width for descriptions')
    args = parser.parse_args()
    fetch_and_save(args.out_dir, wrap_width=args.width)


if __name__ == '__main__':
    main()
