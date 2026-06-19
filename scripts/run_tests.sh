#!/bin/bash

video=false
ci=false
passthrough_args=()

while [[ $# -gt 0 ]]; do
    case "$1" in
        -v)
            video=true
            shift
            ;;
        -c)
            ci=true
            shift
            ;;
        *)
            passthrough_args+=("$1")
            shift
            ;;
    esac
done

if [ "$ci" = true ]; then
    . .venv/bin/activate; python3 -u scripts/run_tests.py -c "${passthrough_args[@]}" | tee test_logs.txt
    EXIT_CODE=${PIPESTATUS[0]}
elif [ "$video" = true ]; then
    . .venv/bin/activate; python3 -u scripts/run_tests.py -v "${passthrough_args[@]}" | tee test_logs.txt
    EXIT_CODE=${PIPESTATUS[0]}
else
    . .venv/bin/activate; python3 -u scripts/run_tests.py "${passthrough_args[@]}" | tee test_logs.txt
    EXIT_CODE=${PIPESTATUS[0]}
fi

exit $EXIT_CODE
