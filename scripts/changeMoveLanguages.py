#!/usr/bin/env python3
"""Replace move display names and descriptions in armips/data/moves.s using
localized data previously fetched from PokeAPI.

Usage:
    python3 changeMoveLanguages.py <lang_code> [--moves-s PATH] [--out PATH]

Behavior:
- If `scripts/data/moveNames.json`, `scripts/data/movesIndex.json` or
    `scripts/data/moveDescriptions.json` are missing the script will attempt to
    import and call the fetchers (`fetchMoveNames.fetch_and_save` and
    `fetchMoveDescriptions.fetch_and_save`) or fall back to invoking the
    corresponding scripts as subprocesses.
- Replaces `movedata SYMBOL, "Name"` entries left-to-right using the index
    map from `movesIndex.json` and the localized names from `moveNames.json`.
- Replaces `movedescription SYMBOL, "Text"` entries by locating the
    corresponding movedata occurrence position and pulling the description from
    `moveDescriptions.json`. Any real newlines in descriptions are written as
    literal "\n" sequences in the produced file so the armips source keeps the
    inline escape sequences.

Inputs (expected files):
- `scripts/data/moveNames.json`     (map: pokeapi_move_id -> {lang_code: name})
- `scripts/data/movesIndex.json`   (list: pokeapi_move_id per movedata occurrence,
                                                                        index 0 unused)
- `scripts/data/moveDescriptions.json` (map: pokeapi_move_id -> {lang_code: text})

Output:
- `scripts/fixed/moves-updated.s` (modified copy of `armips/data/moves.s`)

Notes & special cases:
- The script exposes a small, editable `INPUT_ALIAS` dict near the top which
    maps alternative user inputs (e.g. `fre`, `jp`, `zh-cn`) to canonical codes.
    Edit that mapping if you need custom aliases.
- A `FALLBACK_ORDER` mapping controls how variants like `ja` vs `ja-hrkt` and
    `zh-hans`/`zh-hant` are resolved; you can edit it if needed.
- If your local `moveDescriptions.json` is indexed differently (e.g. some
    blank/missing entries in the PokeAPI list) you may need to enable the
    description-index fix in the script (variable `NEEDS_FIX`) — this change
    affects only description indexing when enabled.
- Network access and the `requests` package are required if the script must
    fetch missing data or to look up human-friendly language names from the
    PokeAPI. The script will still operate if the JSON files already exist.
"""
import argparse
import json
import os
import re
import sys
try:
    import requests
except Exception:
    requests = None


REPO_ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
MOVES_S_PATH = os.path.join(REPO_ROOT, 'armips', 'data', 'moves.s')
DATA_DIR = os.path.join(os.path.dirname(__file__), 'data')
LOCALISED_JSON = os.path.join(DATA_DIR, 'moveNames.json')
INDEX_JSON = os.path.join(DATA_DIR, 'movesIndex.json')
FIXED_DIR = os.path.join(os.path.dirname(__file__), 'fixed')
OUT_PATH = os.path.join(FIXED_DIR, 'moves-updated.s')

MOVEDATA_RE = re.compile(r'movedata\s+([A-Za-z0-9_]+)\s*,\s*"([^"]*)"')

MOVEDESC_RE = re.compile(r'movedescription\s+([A-Za-z0-9_]+)\s*,\s*"([\s\S]*?)"', re.DOTALL)

def load_json(path):
    with open(path, 'r', encoding='utf-8') as f:
        return json.load(f)


def ensure_local_data():
    """Ensure `moveNames.json`, `movesIndex.json` and descriptions exist; import and run fetchers if needed."""
    need_names = not (os.path.exists(LOCALISED_JSON) and os.path.exists(INDEX_JSON))
    desc_json = os.path.join(DATA_DIR, 'moveDescriptions.json')
    need_desc = not os.path.exists(desc_json)
    if not need_names and not need_desc:
        return

    if need_names:
        print('Localized name data not found; attempting to run fetchMoveNames.fetch_and_save() (non-interactive)...')
        try:
            from fetchMoveNames import fetch_and_save as fetch_names
            fetch_names(moves_s=MOVES_S_PATH, out_dir=DATA_DIR, interactive=False)
        except Exception as e:
            print('Import-run failed:', e)
            print('Falling back to running script as subprocess...')
            import subprocess
            subprocess.check_call([sys.executable, os.path.join(os.path.dirname(__file__), 'fetchMoveNames.py')])

    if need_desc:
        print('Move description data not found; attempting to run fetchMoveDescriptions.fetch_and_save()...')
        try:
            from fetchMoveDescriptions import fetch_and_save as fetch_desc
            fetch_desc(out_dir=DATA_DIR)
        except Exception as e:
            print('Import-run failed:', e)
            print('Falling back to running script as subprocess...')
            import subprocess
            subprocess.check_call([sys.executable, os.path.join(os.path.dirname(__file__), 'fetchMoveDescriptions.py')])

        # descriptions are fetched wrapped by fetchMoveDescriptions.fetch_and_save()


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('lang', help='two-letter language code (e.g. en, fr, ja)')
    parser.add_argument('--moves-s', default=MOVES_S_PATH)
    parser.add_argument('--out', default=OUT_PATH)
    args = parser.parse_args()

    lang = args.lang
    moves_s = args.moves_s
    out = args.out

    ensure_local_data()

    if not os.path.exists(LOCALISED_JSON) or not os.path.exists(INDEX_JSON):
        print('Missing localized data even after attempting fetch. Aborting.')
        sys.exit(1)

    moves_localised = load_json(LOCALISED_JSON)
    moves_index = load_json(INDEX_JSON)
    DESC_JSON = os.path.join(DATA_DIR, 'moveDescriptions.json')
    move_descs = {}
    if os.path.exists(DESC_JSON):
        try:
            move_descs = load_json(DESC_JSON)
        except Exception:
            move_descs = {}

    # collect available language codes from names and descriptions
    avail_codes = set()
    for v in moves_localised.values():
        avail_codes.update(v.keys())
    for v in move_descs.values():
        avail_codes.update(v.keys())

    # Helper: choose the best localized entry from a dict of language->text
    FALLBACK_ORDER = {
        'ja-hrkt': ['ja-hrkt', 'ja'],
        'ja': ['ja', 'ja-hrkt'],
        'zh-hans': ['zh-hans', 'zh', 'zh-hant'],
        'zh-hant': ['zh-hant', 'zh', 'zh-hans'],
        'zh': ['zh', 'zh-hans', 'zh-hant'],
    }

    # Hardcoded input aliases -> canonical language codes. Edit this mapping manually if needed.
    INPUT_ALIAS = {
        'eng': 'en', 'en-us': 'en', 'en-gb': 'en',
        'fre': 'fr', 'fra': 'fr',
        'jp': 'ja', 'ja-kana': 'ja-hrkt',
        'zh-cn': 'zh-hans', 'zh-s': 'zh-hans',
        'zh-tw': 'zh-hant', 'zh-t': 'zh-hant',
        'cn': 'zh', 'tw': 'zh-hant',
    }

    def choose_localized_value(entry_dict, requested_code, default=None):
        # entry_dict: mapping of lang_code -> text
        # Try exact then fallbacks then plain 'en'
        tried = []
        # exact
        if requested_code in entry_dict:
            return entry_dict[requested_code]
        tried.append(requested_code)
        # fallback list
        for cand in FALLBACK_ORDER.get(requested_code, []):
            if cand in entry_dict:
                return entry_dict[cand]
            tried.append(cand)
        # try variants present in entry (e.g., prefer 'ja' when only 'ja-hrkt' exists)
        for cand in entry_dict.keys():
            if cand.split('-')[0] == requested_code.split('-')[0]:
                return entry_dict[cand]
        # final fallback to english
        if 'en' in entry_dict:
            return entry_dict['en']
        return default

    def human_name_for_code(code):
        # Prefer a small built-in English mapping for common codes
        builtin = {
            'en': 'English', 'fr': 'French', 'de': 'German', 'es': 'Spanish', 'it': 'Italian',
            'ja': 'Japanese', 'ja-hrkt': 'Japanese (kana)', 'ko': 'Korean',
            'zh': 'Chinese', 'zh-hans': 'Chinese (Simplified)', 'zh-hant': 'Chinese (Traditional)'
        }
        if code in builtin:
            return builtin[code]

        # Try to fetch a human-readable language name from PokeAPI (prefer English name)
        if requests is None:
            return ''
        try:
            r = requests.get(f'https://pokeapi.co/api/v2/language/{code}', timeout=5)
            if r.status_code == 200:
                jd = r.json()
                for entry in jd.get('names', []):
                    lang = entry.get('language', {}).get('name')
                    if lang == 'en':
                        return entry.get('name')
                # fallback to first available localized name or resource name
                names = jd.get('names', [])
                if names:
                    return names[0].get('name') or jd.get('name') or ''
                return jd.get('name') or ''
        except Exception:
            return ''
        return ''

    # Apply hardcoded input aliasing first (user-editable)
    orig_lang = lang
    if lang in INPUT_ALIAS:
        lang = INPUT_ALIAS[lang]

    if lang not in avail_codes:
        import difflib
        print(f'Unknown language code: {orig_lang}')
        # Suggest close matches
        close = difflib.get_close_matches(orig_lang, sorted(avail_codes) + list(INPUT_ALIAS.keys()), n=3, cutoff=0.6)
        if close:
            print('\nDid you mean: ' + ', '.join(close) + ' ?')
        print('\nAvailable language codes:')
        for c in sorted(avail_codes):
            hn = human_name_for_code(c)
            if hn:
                print(f'- {c}: {hn}')
            else:
                print(f'- {c}')
        print('\nUse one of the above codes (e.g. en, fr, ja).')
        sys.exit(1)

    moves_index_names = moves_index
    moves_index_desc = moves_index
    with open(moves_s, 'r', encoding='utf-8') as f:
        content = f.read()

    issues = []

    # First replace movedata names left-to-right, tracking occurrence index
    idx_counter = {'i': 1}

    def repl_name(m):
        sym = m.group(1)
        orig_name = m.group(2)
        i = idx_counter['i']
        idx_counter['i'] += 1
        if i >= len(moves_index):
            if sym != 'MOVE_NONE':
                issues.append(f'No index entry for movedata {sym} at occurrence {i}')
            return m.group(0)
        move_id = moves_index[i]
        if move_id is None:
            if sym != 'MOVE_NONE':
                issues.append(f'No mapping for movedata {sym} at occurrence {i}; keeping original name')
            return m.group(0)
        entry = moves_localised.get(str(move_id), {})
        new_name = choose_localized_value(entry, lang, orig_name)
        if new_name == orig_name:
            return m.group(0)
        new_name_escaped = new_name.replace('"', '\\"')
        return f'movedata {sym}, "{new_name_escaped}"'

    new_content = MOVEDATA_RE.sub(repl_name, content)

    # Recompute movedata start positions in the modified content
    starts = [m.start() for m in MOVEDATA_RE.finditer(new_content)]

    # Replace movedescription entries using their position to find the corresponding occurrence
    import bisect

    def repl_desc(m):
        sym = m.group(1)
        orig_body = m.group(2)
        pos = m.start()
        # number of movedata occurrences that start before this description
        occ = bisect.bisect_right(starts, pos)
        i = occ
        if i == 0 or i >= len(moves_index):
            if sym != 'MOVE_NONE':
                issues.append(f'No index entry for movedescription {sym} at occurrence {i}')
            return m.group(0)
        move_id = moves_index_desc[i]
        if move_id is None:
            if sym != 'MOVE_NONE':
                issues.append(f'No mapping for movedescription {sym} at occurrence {i}; keeping original')
            return m.group(0)
        entry = move_descs.get(str(move_id), {})
        new_desc = choose_localized_value(entry, lang, orig_body)
        # Ensure any actual newlines become literal \n sequences in the output file
        new_desc_literal = new_desc.replace('\n', '\\n')
        # escape double quotes
        new_desc_escaped = new_desc_literal.replace('"', '\\"')
        return f'movedescription {sym}, "{new_desc_escaped}"'

    new_content = MOVEDESC_RE.sub(repl_desc, new_content)

    os.makedirs(os.path.dirname(out), exist_ok=True)
    with open(out, 'w', encoding='utf-8') as f:
        f.write(new_content)

    print('Wrote updated file to:', out)
    print('\nTo replace the original moves.s:')
    print('1) Back up the original:')
    print('   cp', moves_s, moves_s + '.bak')
    print('2) Replace:')
    print('   cp', out, moves_s)
    if issues:
        print('\nWarnings:')
        for it in issues:
            print('-', it)


if __name__ == '__main__':
    main()
