#!/bin/bash

set -euo pipefail

usage() {
    cat <<'EOF'
Usage: scripts/clang_format_check.sh [--fix] [--all] [--staged] [--base <ref>]

Checks clang-format on C and header files using the repository's .clang-format.

Options:
  --fix         Apply formatting in place instead of checking.
  --all         Run on all tracked *.c and *.h files.
  --staged      Run on staged *.c and *.h files only.
  --base <ref>  Compare committed changes against the given git ref. Default: origin/main if it exists, otherwise main.
EOF
}

if ! command -v clang-format >/dev/null 2>&1; then
    echo "ERROR: clang-format is not installed or not on PATH." >&2
    exit 1
fi

mode="check"
scope="worktree"
base_ref=""

while (($#)); do
    case "$1" in
        --fix)
            mode="fix"
            shift
            ;;
        --all)
            scope="all"
            shift
            ;;
        --staged)
            scope="staged"
            shift
            ;;
        --base)
            if (($# < 2)); then
                echo "ERROR: --base requires a git ref." >&2
                usage >&2
                exit 1
            fi
            base_ref="$2"
            shift 2
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        *)
            echo "ERROR: unknown argument: $1" >&2
            usage >&2
            exit 1
            ;;
    esac
done

if [[ "$scope" == "all" ]]; then
    mapfile -d '' files < <(git ls-files -z -- '*.c' '*.h')
elif [[ "$scope" == "staged" ]]; then
    mapfile -d '' files < <(git diff --cached --name-only --diff-filter=ACMR -z -- '*.c' '*.h')
else
    declare -A seen=()
    files=()

    if [[ -z "$base_ref" ]]; then
        if git rev-parse --verify origin/main >/dev/null 2>&1; then
            base_ref="origin/main"
        else
            base_ref="main"
        fi
    fi

    if ! git rev-parse --verify "$base_ref" >/dev/null 2>&1; then
        echo "ERROR: git ref '$base_ref' does not exist." >&2
        exit 1
    fi

    merge_base="$(git merge-base HEAD "$base_ref")"

    while IFS= read -r -d '' file; do
        if [[ -z "${seen[$file]:-}" ]]; then
            files+=("$file")
            seen[$file]=1
        fi
    done < <(git diff --name-only --diff-filter=ACMR -z "$merge_base"...HEAD -- '*.c' '*.h')

    while IFS= read -r -d '' file; do
        if [[ -z "${seen[$file]:-}" ]]; then
            files+=("$file")
            seen[$file]=1
        fi
    done < <(git diff --cached --name-only --diff-filter=ACMR -z -- '*.c' '*.h')

    while IFS= read -r -d '' file; do
        if [[ -z "${seen[$file]:-}" ]]; then
            files+=("$file")
            seen[$file]=1
        fi
    done < <(git diff --name-only --diff-filter=ACMR -z -- '*.c' '*.h')
fi

if ((${#files[@]} == 0)); then
    echo "No C or header files to process."
    exit 0
fi

if [[ "$mode" == "fix" ]]; then
    clang-format -i "${files[@]}"
    echo "Formatted ${#files[@]} file(s)."
    exit 0
fi

tmpdir="$(mktemp -d)"
trap 'rm -rf "$tmpdir"' EXIT

failed=0
for file in "${files[@]}"; do
    output="$tmpdir/$(basename "$file").formatted"
    clang-format "$file" > "$output"
    if ! diff -u "$file" "$output" >/dev/null; then
        echo "Needs formatting: $file"
        failed=1
    fi
done

if ((failed)); then
    echo "clang-format check failed. Run 'make format-fix' or 'bash scripts/clang_format_check.sh --fix'." >&2
    exit 1
fi

echo "clang-format check passed for ${#files[@]} file(s)."
