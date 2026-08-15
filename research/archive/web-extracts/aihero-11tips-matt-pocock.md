# 11 Tips For AI Coding With Ralph Wiggum — Matt Pocock (aihero.dev)

Source: https://www.aihero.dev/tips-for-ai-coding-with-ralph-wiggum

## The 11 Tips

1. **Ralph Is A Loop** — What Ralph is and why it works
2. **Start With HITL, Then Go AFK** — The two modes of running Ralph
3. **Define The Scope** — How to specify what "done" looks like
4. **Track Ralph's Progress** — Using progress files between iterations
5. **Use Feedback Loops** — Types, tests, and linting as guardrails
6. **Take Small Steps** — Why smaller tasks produce better code
7. **Prioritize Risky Tasks** — Tackle hard problems first
8. **Explicitly Define Software Quality** — Don't let Ralph cut corners
9. **Use Docker Sandboxes** — Isolate AFK Ralph for safety
10. **Pay To Play** — Cost considerations and tradeoffs
11. **Make It Your Own** — Alternative loop types and customization

## Core Bash Template

```bash
# ralph.sh
set -e

for ((i=1; i<=$1; i++)); do
  result=$(docker sandbox run claude -p \
"@some-plan-file.md @progress.txt \
1. Decide which task to work on next. \
This should be the one YOU decide has the highest priority, \
- not necessarily the first in the list. \
2. Check any feedback loops, such as types and tests. \
3. Append your progress to the progress.txt file. \
4. Make a git commit of that feature. \
ONLY WORK ON A SINGLE FEATURE. \
If, while implementing the feature, you notice that all work \
is complete, output <promise>COMPLETE</promise>. \
")

  echo "$result"

  if [[ "$result" == *"<promise>COMPLETE</promise>"* ]]; then
    echo "PRD complete, exiting."
    exit 0
  fi
done
```

## Key Design Points

**Agent picks the task, not you.** With multi-phase plans, a human writes a new prompt each phase. With Ralph, the agent picks what to work on next from your PRD.

**PRD as living TODO list.** Structure PRD items as JSON with a `passes` field:
```json
{
  "category": "functional",
  "description": "New chat button creates a fresh conversation",
  "steps": ["Click...", "Verify...", "Check..."],
  "passes": false
}
```

**HITL vs AFK modes:**
- HITL (ralph-once.sh): Run once, watch, intervene — for learning/prompt refinement
- AFK (afk-ralph.sh): Run in a loop with max iterations — for bulk work

**Always cap iterations.** Infinite loops are dangerous with stochastic systems. 5-10 for small tasks, 30-50 for larger ones.

**Small steps.** Quality over speed — especially AFK where speed matters less. Small steps compound into big progress.

**Prioritize risky tasks.** Tackle spikes and unknowns first. Integrate modules early. Don't wait until the end of a sprint to discover things don't fit.

**Sandboxing.** For AFK Ralph, use Docker containers. Full `--dangerously-skip-permissions` without a sandbox exposes credentials, SSH keys, and access tokens.

**Feedback loops are load-bearing.** Types, tests, linting. Without verifiable stop conditions, Ralph loops forever or declares premature victory.
