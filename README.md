# Ralphing

Ralphing is a research and teaching project about disciplined iteration with AI.
It begins with human-guided work: define the job, provide evidence, inspect the
result, correct it, verify it, and retain what worked. At the advanced end, the
same engineering principles support agentic Ralph loops that can plan, build,
test, and document work over repeated fresh-context runs.

Ralph loops are treated here as a serious engineering method. Effective loops
externalize state, work in bounded increments, evaluate their own output, and
make progress observable to a human operator. Autonomy is earned through
specification, verification, containment, and experience.

## Choose a path

| I want to... | Start here |
| --- | --- |
| Improve ordinary AI-assisted work | [Start here](docs/start-here.md) |
| Coach a nontechnical team | [Sales and business development](docs/non-technical/sales-and-business-development.md) |
| Compare major AI products | [Five-platform comparison session](docs/facilitator/model-comparison-session.md) |
| Develop and rehearse coaching material | [Coach workspace](coach/README.md) |
| Study or run autonomous loops | [Agentic Ralph loops](docs/technical/ralph-loops.md) |
| Inspect the research behind the project | [Research archive](research/README.md) |

## The progression

1. **Ask:** Express a useful job clearly enough that a person could evaluate it.
2. **Inspect:** Compare the answer with the supplied evidence and desired result.
3. **Refine:** Correct ambiguity, missing context, assumptions, and format.
4. **Verify:** Check facts, calculations, citations, and acceptance criteria.
5. **Reuse:** Save the successful request, inputs, rubric, and lessons learned.
6. **Automate:** Only after the workflow is observable and repeatable, decide
   whether part or all of the loop should operate autonomously.

The early material is suitable for ordinary knowledge work. The autonomous
material is for adventurous users and experienced operators who understand the
consequences of unattended tools and unrestricted permissions.

## Provider comparison

Workshops target five widely used product families:

- ChatGPT
- Claude
- Gemini
- Grok
- Microsoft Copilot

The repository records the exact product, model, date, settings, and available
tools for each run. Product names are stable teaching categories; individual
model versions are experiment metadata, not permanent curriculum assumptions.

## Repository map

- `docs/` — learner, facilitator, and advanced technical guides
- `workshops/` — repeatable sessions with shared inputs and evaluation criteria
- `examples/` — synthetic, company-neutral fixtures and prompt progressions
- `templates/` — reusable briefs, scorecards, and retrospectives
- `coach/` — persistent state for developing the coaching program
- `skills/` — skills for forward, reverse, and coaching-oriented loops
- `tools/` — executable advanced loop runners
- `research/` — source index and archived web extracts

## Public and company-neutral

This is a personal public project. Examples must be synthetic or safely
anonymized and must not expose an employer, customer, employee, confidential
process, or licensed dataset. Company-specific discoveries may inspire generic
workflows, but the resulting examples must stand on their own.

## Project status

Active and experimental. The initial foundation is intentionally small enough
to test in real coaching sessions. Results and facilitator observations should
drive the next iteration.

