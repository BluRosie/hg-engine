#!/bin/bash

video=false

while getopts 'v' flag; do
    case "${flag}" in
        v) video=true ;;
        *) ;;
    esac
done

shift $((OPTIND-1))

if [ "$video" = true ]; then
    . .venv/bin/activate; python3 -u scripts/run_tests.py -v | tee test_logs.txt
    EXIT_CODE=${PIPESTATUS[0]}
else
    . .venv/bin/activate; python3 -u scripts/run_tests.py | tee test_logs.txt
    EXIT_CODE=${PIPESTATUS[0]}
fi

exit $EXIT_CODE
