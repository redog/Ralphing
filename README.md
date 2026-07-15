# Ralphing by redog

## Forward Ralph Loops

## Reverse Ralph Loops
 ### Shapes

```

state files:
  inventory.md     # every file/module/symbol, marked covered/uncovered
  spec.md          # the growing spec (the output)
  questions.md     # things the model couldn't infer (the human/cloud queue)
  progress.json    # iteration count, last-touched, coverage %

loop (each iteration, fresh context):
  1. read inventory.md, find highest-value UNCOVERED item
  2. read that item's source (file, function, config)
  3. write/extend the spec section it implies
  4. mark item covered in inventory.md
  5. if inference was uncertain -> append to questions.md, mark "covered-with-doubt"
  6. update progress.json

```
ralph_claude() {
  local prompt="${1:-PROMPT_build.md}"
  local i=0
  mkdir -p logs
  while true; do
    i=$((i+1))
    claude --dangerously-skip-permissions -p "$(cat "$prompt")" \
      --output-format stream-json --verbose \
    | tee "logs/run-$i-$(date +%s).jsonl" \
    | jq -r 'select(.type=="assistant") | .message.content[]? | .text // "→ \(.name) \(.input | tostring | .[0:120])"'
  done
}

ralph_agy() {
  local prompt="${1:-PROMPT_build.md}" i=0
  mkdir -p logs
  while true; do
    i=$((i+1))
    script -qec "agy --dangerously-skip-permissions --print-timeout 20m -p \"\$(cat $prompt)\"" /dev/null \
      | tee "logs/agy-run-$i-$(date +%s).txt"
    [ -s "logs/agy-run-$i-"*.txt ] || echo "WARN: empty output on run $i"
  done
done
