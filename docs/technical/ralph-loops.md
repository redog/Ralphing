# Agentic Ralph loops

An agentic Ralph loop repeatedly gives a capable coding agent a durable goal,
external state, repository access, tools, and feedback. Each iteration can begin
with fresh context while specifications, plans, tests, logs, and version control
carry the project forward.

This repository treats the method as advanced engineering, not novelty and not
beginner prompting.

## Core properties

- **Persistent external state:** specifications, plans, questions, tests, and
  commits survive individual context windows.
- **One valuable increment:** each run chooses and completes a bounded unit.
- **Evidence-driven discovery:** the agent searches before assuming work is
  missing or behavior is understood.
- **Executable feedback:** tests, builds, linters, browser checks, or other
  evaluators constrain drift.
- **Fresh-context recovery:** a new run can reconstruct the current state from
  repository artifacts.
- **Human steering:** the operator changes the signs, specifications, tools,
  environment, and acceptance criteria when the loop learns the wrong lesson.

## Forward and reverse modes

The supplied skills implement two complementary directions:

- `skills/ralph-prompt/` creates planning and building prompts for advancing a
  project from specifications.
- `skills/hplar-prompt/` creates a discovery prompt for extracting a modern
  specification from a legacy system.

The coaching skill uses the same stateful iteration pattern to build teaching
material one validated module at a time.

## Unrestricted runners

`tools/bash/ralph-runners.sh` deliberately retains unrestricted-permission
flags and indefinite loop behavior. Those settings are part of the advanced
experiment, not accidental omissions and not defaults for other repository
examples.

Operate such runners only where you have intentionally accepted their reach.
An unrestricted coding agent can modify or delete files, publish changes, spend
money, expose accessible information, or follow a flawed specification at
machine speed. Appropriate containment may include disposable environments,
limited credentials, scoped repositories, resource monitoring, logs, stop
controls, and recoverable versioned state.

## Engineering rigor

A long-running loop is not made reliable by repetition alone. Reliability comes
from the quality of its state, evaluators, environment, and feedback. A useful
experiment records:

- exact agent and model;
- initial specification and prompt;
- tool and permission boundary;
- stop condition;
- per-iteration logs and commits;
- cost and elapsed time;
- failed approaches;
- tests or other acceptance evidence; and
- human interventions.

