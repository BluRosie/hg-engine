import sys

MAX_WIDTH = 36  # might need to be adjusted a bit
MAX_LINES = 3

def wrap_line(text: str):
    original = text
    text = text.rstrip("\n").replace("\\n", " ").replace("\\r", " ")

    lines = []
    remaining = text.strip()
    ok_flag = True

    while remaining:
        if len(remaining) <= MAX_WIDTH:
            lines.append(remaining)
            break

        window = remaining[:MAX_WIDTH+1]
        if len(window) > MAX_WIDTH and window[MAX_WIDTH] == " ":
            break_at = MAX_WIDTH
        else:
            break_at = window.rfind(" ")
            if break_at == -1:
                break_at = MAX_WIDTH
                ok_flag = False

        line = remaining[:break_at]
        lines.append(line)

        remaining = remaining[break_at+1:]
        remaining = remaining.lstrip()

    # if len(lines) > MAX_LINES:
    #     ok_flag = False
    
    count = 0
    wrapped = ""
        
    for line in lines:
        if count == 0:
            wrapped = line
            count += 1
            continue
        if count < MAX_LINES:
            wrapped = f"{wrapped}\\n{line}"
            count += 1
        else:
            wrapped = f"{wrapped}\\r{line}"
            count = 1


    if any(len(l) > MAX_WIDTH for l in lines):
        ok_flag = False

    return wrapped, ok_flag


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: wrap_item_text.py <input.txt> <output.txt>", file=sys.stderr)
        sys.exit(1)

    inp, outp = sys.argv[1], sys.argv[2]

    failed = []
    out_lines = []

    with open(inp, "r", encoding="utf-8") as f:
        for idx, line in enumerate(f, start=1):
            if line.strip() == "":
                out_lines.append("")
                continue
            wrapped, ok = wrap_line(line)
            if not ok:
                failed.append((idx, line.rstrip("\n")))
            out_lines.append(wrapped)

    with open(outp, "w", encoding="utf-8") as f:
        f.write("\n".join(out_lines) + "\n")

    if failed:
        for idx, txt in failed:
            print(f"FAIL line {idx}: {txt}")
        sys.exit(2)
