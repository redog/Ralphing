# Coaching considerations: the human as a temporary harness

Ralphing teaches disciplined iteration, not prompt incantations. In a coaching
session the facilitator temporarily supplies much of the structure that a
software harness would otherwise provide: the objective, context, constraints,
available tools, evaluation criteria, iteration rhythm, and stop conditions.

A useful mental model is:

> model + harness = agentic behavior

For ordinary assisted work, the human can provide much of that harness. Good
coaching makes those controls visible so the learner can eventually provide them
without the coach.

This framing is inspired by Earendil's discussion of harnesses in
[What is a Harness?](https://earendil.com/posts/what-is-a-harness/), especially
the distinction between the model and the surrounding system that governs how
it can act.

## What the coach is actually controlling

A coach should be deliberate about the following variables:

1. **Objective** — What job is being done, for whom, and what counts as useful?
2. **Context and evidence** — What facts, files, examples, and prior decisions may
   the model rely on?
3. **Constraints** — What must it not assume, change, reveal, or optimize away?
4. **Tools and product surface** — Does the model have search, files, code,
   connectors, memory, or only conversation text?
5. **Iteration cadence** — Should the learner ask once, refine interactively, or
   break the job into extraction, analysis, and synthesis stages?
6. **Evaluation** — How will the learner distinguish a plausible answer from a
   supported one?
7. **Stop conditions** — What evidence is enough to accept, reject, escalate, or
   abandon the result?
8. **Persistence** — What successful prompt, rubric, fixture, checklist, or
   lesson should be retained for reuse?

These controls matter at least as much as the wording of the prompt. A learner
who can manage them can usually recover from a weak first request. A learner who
cannot manage them will eventually fail even with a carefully copied prompt.

## Coaching principle: expose the loop

Do not silently rescue the learner. Make the loop observable:

1. Ask the learner to state the job and acceptance criteria.
2. Let the model produce a first result.
3. Ask the learner what is supported, missing, assumed, or irrelevant.
4. Change one important variable at a time when practical.
5. Re-run or refine.
6. Verify against evidence or an external check.
7. Capture what improved the result and why.

The objective is not merely to obtain a correct answer during the session. It
is to teach the participant how to diagnose and improve future interactions.

## Change one variable when teaching cause and effect

When possible, keep the task and evidence fixed while changing one dimension:

- vague request versus explicit acceptance criteria;
- no supplied evidence versus supplied evidence;
- answer-first versus extraction-first workflow;
- no tool access versus tool-assisted work;
- one product or model versus another;
- unverified answer versus answer checked against a rubric.

Changing several variables at once may improve the output but teaches less about
why it improved.

## Do not teach prompt magic

Avoid presenting successful wording as a spell. Explain the underlying function
of each useful instruction.

Instead of teaching:

> Always begin with this exact phrase.

Teach:

> The model was missing a decision criterion, so we supplied one.

Useful prompts should be treated as reusable specifications, not sacred text.
Learners should be able to adapt them when the job, evidence, product, or tools
change.

## Scaffold, then remove the scaffold

Coaching should deliberately move responsibility from facilitator to learner.

### High scaffold

The coach supplies the fixture, prompt structure, evaluation rubric, and next
question. The learner focuses on observing cause and effect.

### Medium scaffold

The coach supplies the task and evidence. The learner defines acceptance
criteria, chooses the next refinement, and performs verification.

### Low scaffold

The learner chooses a real but safe task, builds the working context, determines
what tools are appropriate, verifies the result, and records the reusable
workflow. The coach intervenes only when the learner misses an important risk or
cannot explain the next step.

The goal is not maximal autonomy from the model. It is increasing autonomy of
the human operator.

## Consider the product, not only the model

Two sessions using nominally similar models can behave differently because the
product harness differs. Record or discuss relevant differences such as:

- model/version and mode;
- system-level product behavior;
- search or browsing availability;
- file handling;
- code execution;
- connectors and enterprise data access;
- memory or saved context;
- context limits;
- citation behavior;
- safety and permission boundaries.

This prevents learners from incorrectly attributing every difference to model
intelligence.

## Match rigor to stakes

Not every task deserves the same verification burden.

For low-stakes ideation, rapid iteration and subjective judgment may be enough.
For calculations, sourced research, customer-facing material, operational
changes, legal or policy interpretation, or decisions involving real people,
require stronger evidence and explicit verification.

A useful coaching question is:

> What would happen if this answer were confidently wrong?

The answer should influence how much evidence, checking, and human review the
workflow needs.

## Data and permission considerations

Before a learner pastes or connects real information, establish what the product
is allowed to receive and what tools it may invoke. Prefer synthetic fixtures in
public training material.

Discuss:

- confidential or licensed data;
- personal information;
- retention and organizational policy;
- connector scope;
- tool permissions;
- whether a model can take actions or only recommend them.

The point is not to make every lesson a compliance lecture. It is to make data
and permission boundaries part of normal workflow design.

## Watch for common coaching failures

### The coach writes everything

The participant watches an expert obtain a good result but does not practice the
reasoning needed to reproduce it.

### The learner accepts eloquence as evidence

Require comparison with the source fixture, citations, calculations, or a
rubric.

### The session becomes a model popularity contest

Compare outputs against criteria. Product preference is secondary.

### The coach fixes too many things at once

The output improves but the learner cannot identify the causal change.

### The learner never practices recovery

Include at least one weak or misleading first result and teach how to diagnose
it. Recovery skill is more durable than memorizing an ideal first prompt.

### The workflow stops at a good answer

Capture the successful request, source material, rubric, and lesson learned so
future work starts from a better state.

## Facilitator observation checklist

During a session, watch for whether the learner can:

- state the job in their own words;
- identify what evidence the answer should rely on;
- notice unsupported assumptions;
- choose a useful next refinement;
- distinguish model behavior from product/tool behavior;
- verify important claims;
- decide when additional iteration is no longer useful;
- explain what should be saved for reuse.

These observations are stronger evidence of learning than whether the final
answer happens to be good.

## Connection to advanced Ralph loops

The same controls appear later in autonomous Ralph loops. Specifications,
externalized state, tool boundaries, evaluators, iteration rules, and stop
conditions are software equivalents of the structure a coach initially provides
for a human learner.

That makes coaching the beginning of the same progression rather than a separate
activity:

**coach-guided loop -> learner-guided loop -> repeatable workflow -> bounded
automation -> advanced agentic loop**

Automation should preserve the checks that made the human-guided workflow
reliable rather than merely removing the human from an unreliable process.
