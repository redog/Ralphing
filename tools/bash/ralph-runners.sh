#!/usr/bin/env bash

# Advanced unrestricted runners.
#
# These functions deliberately invoke agents with unrestricted permission flags
# and repeat until interrupted or a STOP file is created. Source this file only
# in an environment where that behavior is intentional.

ralph_claude() {
    local prompt_file="${1:-PROMPT_build.md}"
    local i=0
    local stop_file="${RALPH_STOP_FILE:-STOP}"

    [[ -r "$prompt_file" ]] || {
        echo "Cannot read prompt file: $prompt_file" >&2
        return 1
    }

    mkdir -p logs

    while [[ ! -e "$stop_file" ]]; do
        ((++i))
        claude --dangerously-skip-permissions \
            -p "$(<"$prompt_file")" \
            --output-format stream-json \
            --verbose \
            | tee "logs/claude-run-${i}-$(date +%s).jsonl" \
            | jq -r 'select(.type=="assistant") | .message.content[]? | .text // "→ \(.name) \(.input | tostring | .[0:120])"'
    done
}

ralph_agy() {
    local prompt_file="${1:-PROMPT_build.md}"
    local i=0
    local logfile
    local runner_pid
    local stop=0
    local stop_file="${RALPH_STOP_FILE:-STOP}"

    [[ -r "$prompt_file" ]] || {
        echo "Cannot read prompt file: $prompt_file" >&2
        return 1
    }

    mkdir -p logs

    trap '
        stop=1
        printf "\nStopping ralph_agy...\n" >&2
        if [[ -n ${runner_pid:-} ]]; then
            kill -TERM -- "-$runner_pid" 2>/dev/null
            wait "$runner_pid" 2>/dev/null
        fi
    ' INT TERM

    while (( ! stop )) && [[ ! -e "$stop_file" ]]; do
        ((++i))
        logfile="logs/agy-run-${i}-$(date +%s).txt"

        RALPH_PROMPT=$(<"$prompt_file")
        export RALPH_PROMPT

        setsid script -qefc \
            'exec agy --dangerously-skip-permissions --print-timeout 20m -p "$RALPH_PROMPT"' \
            /dev/null \
            > >(tee "$logfile") &

        runner_pid=$!
        wait "$runner_pid"
        status=$?
        runner_pid=

        [[ -s "$logfile" ]] || echo "WARN: empty output on run $i"
        (( stop )) || [[ -e "$stop_file" ]] ||
            echo "Run $i exited with status $status; restarting..."
    done

    trap - INT TERM
    unset RALPH_PROMPT
    (( stop )) && return 130
    return 0
}

