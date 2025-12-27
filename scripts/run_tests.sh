while getopts 'v' flag; do
    case "${flag}" in
        v) python3 -u scripts/run_tests.py -v | tee test_logs.txt ;;
        *) python3 -u scripts/run_tests.py | tee test_logs.txt ;;
    esac
done
