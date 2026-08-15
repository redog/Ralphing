# Effective Context Engineering for AI Agents — Anthropic Engineering Blog

Source: https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents
Published: Sep 29, 2025

## Context Engineering vs Prompt Engineering

**Prompt engineering** = methods for writing and organizing LLM instructions for optimal outcomes.

**Context engineering** = strategies for curating and maintaining the *optimal set of tokens* during LLM inference — including everything beyond just the prompt (tools, MCP, external data, message history, etc).

The key shift: from "what should I write?" to "what configuration of context is most likely to generate desired behavior?"

Context engineering is iterative; the curation phase happens *each time* we decide what to pass to the model.

## Why Context is Finite (Context Rot)

LLMs like humans lose focus at a certain point. Research on needle-in-a-haystack benchmarks reveals **context rot**: as token count grows, the model's ability to accurately recall information decreases — across all models.

Root cause: transformer architecture requires n² pairwise attention relationships for n tokens. As context grows, attention budget gets stretched thin. Models have less training data on long sequences.

Result: performance gradient (not a hard cliff) — high capability remains but precision for retrieval and long-range reasoning degrades.

## Guiding Principle

> Find the *smallest possible set of high-signal tokens* that maximize the likelihood of the desired outcome.

## System Prompts: The "Right Altitude"

Two failure modes:
1. **Too specific**: brittle if-else hardcoded logic — fragile and high maintenance
2. **Too vague**: high-level guidance without concrete signals — assumes false shared context

Optimal: specific enough to guide behavior, flexible enough to give the model strong heuristics.

**Organize with XML tags or Markdown headers**: `<background_information>`, `<instructions>`, `## Tool guidance`, `## Output description`.

Start with a *minimal* prompt tested against the best available model. Add instructions/examples based on failure modes found in testing. Minimal ≠ short — give sufficient information, but no more.

## Tools

Tools define the contract between agents and their action/information space. They should:
- Return token-efficient information
- Encourage efficient agent behaviors
- Minimize unnecessary context accumulation

## Message History

For long-horizon tasks, message history grows unbounded. Strategies:
- **Compaction/summarization**: replace verbose history with summaries
- **Checkpointing**: persist key state to external storage, retrieve on demand
- **Truncation**: drop oldest turns, keep recent context fresh

## The Ralph Loop Connection

An agent running in a loop generates more and more data that *could* be relevant. Context engineering is the science of deciding what survives each loop iteration. This is exactly why the Ralph technique uses fresh context each iteration — sidestepping context rot entirely.
