# Five-platform model comparison session

This session demonstrates two variables independently:

1. how the request changes the result; and
2. how different products and models respond to the same request and evidence.

Target platforms are ChatGPT, Claude, Gemini, Grok, and Microsoft Copilot.
Record the exact product surface, model, date, mode, settings, and available
tools for every run. Do not assume a product name identifies one stable model.

## Learning outcomes

Participants should be able to:

- recognize why a plausible answer is not necessarily a supported answer;
- turn a vague request into a small specification;
- compare results using criteria rather than personal preference;
- separate model capability from product features and tool access; and
- decide when the human should refine, verify, or stop.

## Preparation

- Use the synthetic fixture in `examples/synthetic-data/regional-opportunities.json`.
- Open a new conversation in each product.
- Disable optional external research unless the exercise explicitly tests it.
- Prepare one copy of the [comparison scorecard](../../templates/comparison-scorecard.md)
  per product and prompt level.
- Do not show earlier products' answers to later products.

## Sixty-minute run of show

| Time | Activity |
| --- | --- |
| 0–5 min | Explain the task, input, and evaluation criteria |
| 5–15 min | Run the vague prompt across all five products |
| 15–25 min | Score results and identify unsupported inferences |
| 25–40 min | Run the structured prompt across all five products |
| 40–50 min | Run the extraction-first prompt on selected products |
| 50–57 min | Compare capability, consistency, and correction effort |
| 57–60 min | Capture one workflow each participant will test next |

## Comparison discipline

- Use identical input and prompt text within each round.
- Start a fresh conversation for each round.
- Preserve raw outputs before discussion or editing.
- Score against the fixture, not against eloquence.
- Record refusals, truncation, tool use, citations, and processing time.
- Re-run surprising results before drawing conclusions.

The workshop in `workshops/01-sales-data-comparison/` contains the prompts and
facilitator procedure.

