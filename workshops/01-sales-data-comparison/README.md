# Workshop 01: sales-data comparison

Use one synthetic dataset to compare prompt quality and model behavior across
ChatGPT, Claude, Gemini, Grok, and Microsoft Copilot.

## Task

Prepare an opportunity review for a regional sales manager. The dataset is
intentionally inconsistent and incomplete. Correct handling of uncertainty is
more important than a polished narrative.

Input: `../../examples/synthetic-data/regional-opportunities.json`

## Round 1: vague

```text
Analyze this sales opportunity data and tell me what we should do.
```

## Round 2: structured

```text
You are preparing a weekly opportunity review for a regional sales manager.

Using only the supplied JSON:
1. Produce a table with account, stage, estimated value, last contact,
   objection, next action, owner, and due date.
2. Use "unknown" for missing values. Do not infer them.
3. List conflicting or questionable records.
4. Rank the five opportunities that most need attention. Explain the ranking
   using facts from the data.
5. Finish with the three questions the manager should ask the team.

Separate extracted facts from recommendations.
```

## Round 3: extraction first

```text
Work in two phases.

PHASE 1 — EVIDENCE TABLE
Extract account, region, segment, stage, estimated value, probability, last
contact, objection, promised action, owner, and due date. Preserve the original
value and add the record ID supporting every row. Use "unknown" when absent.
Flag contradictions, invalid dates, impossible percentages, and statements that
cannot be reconciled. Do not recommend actions in Phase 1.

PHASE 2 — REVIEW
Using only the Phase 1 evidence table:
- calculate weighted value only where both value and a valid probability exist;
- identify stale or blocked opportunities and state the rule used;
- rank attention priorities while labeling judgment calls;
- propose follow-up questions, not invented answers; and
- produce a six-sentence management summary.

Before finishing, verify every numerical statement against the evidence table
and list any calculation you could not complete.
```

## Evaluation

Score each raw response with `../../templates/comparison-scorecard.md`. Discuss
which improvements came from a better specification and which appear to come
from model capability, product behavior, or available tools.

