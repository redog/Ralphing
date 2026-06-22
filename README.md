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

