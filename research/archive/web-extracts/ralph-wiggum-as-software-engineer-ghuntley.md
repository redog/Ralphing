# Ralph Wiggum as a "software engineer" — Geoffrey Huntley (Original Post)

Source: https://ghuntley.com/ralph/
Published: July 14, 2025 | Updated: Feb 19, 2026

## Core Definition

Ralph is a technique. In its purest form, Ralph is a Bash loop:

```
while :; do cat PROMPT.md | claude-code ; done
```

**"The technique is deterministically bad in an undeterministic world."**

Ralph can replace the majority of outsourcing at most companies for greenfield projects. It has defects, but these are identifiable and resolvable through various styles of prompts. Ralph can be done with any tool that does not cap tool calls and usage.

## Fundamentals

- **Monolithic, not microservices.** Ralph is a single operating system process that scales vertically. Multi-agent/microservices architectures with non-deterministic agents are "a red hot mess."
- **One item per loop.** Only ask Ralph to do one thing. Trust Ralph to decide what's most important. You only have ~170k context window to work with.
- **Deterministically allocate the stack the same way every loop.** Every iteration gets your plan file + your specs — a known state.

## The Playground Metaphor

Ralph is given instructions to construct a playground but comes home bruised because he fell off the slide. You tune Ralph by adding a sign: "SLIDE DOWN, DON'T JUMP, LOOK AROUND." These signs live in AGENTS.md and specs.

Eventually if you have too many signs, you get a new Ralph that doesn't feel defective — prune and re-tune.

## Prompts

No "perfect prompt" exists. The CURSED project prompt evolved through months of observation and tuning. Start simple, observe failures, add guardrails reactively.

Example planning prompt:
> "Your task is to implement missing stdlib (see @specs/stdlib/*) and compiler functionality and produce a compiled application in the cursed language via LLVM for that functionality using parallel subagents. Follow the @fix_plan.md and **choose the most important thing**."

## Specs

Before running Ralph: have a long conversation with the LLM about requirements. Once the agent understands, issue a prompt to write specifications out — one per file — in a specs folder. Specs are the persistent memory that survives context resets.

## ROI

A $50k USD contract, delivered MVP tested + reviewed with Amp: $297 USD.
