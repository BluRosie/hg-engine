import sys
import re

CHARMAP_CMD_RE = re.compile(
    r'^([A-Z0-9_]+)(?:\s+([0-9]+(?:\s*,\s*[0-9]+)*))?$'
)

def load_charmap(path):
    valid_chars = set()
    valid_commands = set()

    with open(path, encoding="utf-8") as f:
        for line in f:
            line = line.strip()

            if not line or line.startswith('//'):
                continue

            if '=' not in line:
                continue

            _, rhs = line.split('=', 1)

            # Command
            if rhs.startswith('{') and rhs.endswith('}'):
                valid_commands.add(rhs[1:-1])
            else:
                # Literal character
                valid_chars.add(rhs)

    # Explicit whitespace safety
    valid_chars.update([' ', '\n', '\r', '\f'])

    return valid_chars, valid_commands


def validate_text(text, valid_chars, valid_commands, filename):
    i = 0
    errors = []

    while i < len(text):
        ch = text[i]

        # escapes
        if ch == '\\':
            if i + 1 >= len(text):
                errors.append((i, 'Dangling escape \\'))
                break

            esc = text[i+1]
            if esc not in ('n', 'r', 'f'):
                errors.append((i, f'Invalid escape \\{esc}'))
            i += 2
            continue

        # commands
        if ch == '{':
            end = text.find('}', i)
            if end == -1:
                errors.append((i, 'Unterminated {'))
                break

            token = text[i+1:end]
            m = CHARMAP_CMD_RE.match(token)
            if not m:
                errors.append((i, f'Invalid command syntax {{{token}}}'))
            else:
                cmd = m.group(1)
                if cmd not in valid_commands:
                    errors.append((i, f'Unknown command {{{cmd}}}'))

            i = end + 1
            continue

        # normal
        if ch not in valid_chars:
            errors.append((i, f'Invalid character U+{ord(ch):04X} ({repr(ch)}). Refer to charmap.txt'))

        i += 1

    if errors:
        print(f'\nERRORS in {filename}:')
        for pos, msg in errors:
            print(f'  at offset {pos}: {msg}')
        return False

    return True


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("usage: validate_text_archive.py charmap.txt file1.txt [file2.txt ...]")
        sys.exit(1)

    charmap_path = sys.argv[1]
    files = sys.argv[2:]

    valid_chars, valid_commands = load_charmap(charmap_path)

    ok = True
    for path in files:
        with open(path, encoding="utf-8") as f:
            text = f.read()
        if not validate_text(text, valid_chars, valid_commands, path):
            ok = False

    if not ok:
        sys.exit(1)