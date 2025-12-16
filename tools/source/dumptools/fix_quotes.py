import sys

def smart_quotes(text):
    out = []
    open_double = True

    for ch in text:
        if ch == '"':
            out.append('“' if open_double else '”')
            open_double = not open_double
        elif ch in ("'", "`"):
            out.append('’')
        else:
            out.append(ch)

    return ''.join(out)

if __name__ == "__main__":
    infile = sys.argv[1]
    outfile = sys.argv[2]

    with open(infile, "r", encoding="utf-8") as f:
        text = f.read()

    text = smart_quotes(text)

    with open(outfile, "w", encoding="utf-8") as f:
        f.write(text)
