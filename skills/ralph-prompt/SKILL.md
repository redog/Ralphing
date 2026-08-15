---
name: ralph-prompt
description: Outputs the forward Ralph loop planning and building prompts (PROMPT_plan.md, PROMPT_build.md, Spec.md, @IMPLEMENTATION_PLAN.md) directly to the active workspace.
---

# Ralph Prompt Skill Instructions

When the `/ralph-prompt` command is triggered, you must create the forward Ralph loop prompt files in the current workspace root directory.

## Actions to Take:
1. Write the `PROMPT_plan.md` file to the workspace root.
2. Write the `PROMPT_build.md` file to the workspace root.
3. Write a template `@IMPLEMENTATION_PLAN.md` file to the workspace root if it does not already exist.
4. Write a template `Spec.md` file to the workspace root if it does not already exist.
5. Create a `specs/` directory if it does not exist.
6. Print a summary to the user listing the files generated.

---

### File Content Definitions

#### 1. `PROMPT_plan.md`
```markdown
0a. Study `specs/*` with up to 25 parallel subagents to learn the application specifications.
0b. Study @IMPLEMENTATION_PLAN.md (if present) to understand the plan so far.
0c. Study `src/lib/*` with up to 25 parallel subagents to understand shared utilities & components.
0d. For reference, the application source code is in `src/*`.
1. Study @IMPLEMENTATION_PLAN.md (if present; it may be incorrect) and use up to 50 subagents to study existing source code in `src/*` and compare it against `specs/*`. Use a subagent to analyze findings, prioritize tasks, and create/update @IMPLEMENTATION_PLAN.md as a bullet point list sorted in priority of items yet to be implemented. Ultrathink. Consider searching for TODO, minimal implementations, placeholders, skipped/flaky tests, and inconsistent patterns. Study @IMPLEMENTATION_PLAN.md to determine starting point for research and keep it up to date with items considered complete/incomplete using subagents.
IMPORTANT: Plan only. Do NOT implement anything. Do NOT assume functionality is missing; confirm with code search first. Treat `src/lib` as the project's standard library for shared utilities and components. Prefer consolidated, idiomatic implementations there over ad-hoc copies.
ULTIMATE GOAL: We want to achieve [project-specific goal]. Consider missing elements and plan accordingly. If an element is missing, search first to confirm it doesn't exist, then if needed author the specification at specs/FILENAME.md. If you create a new element then document the plan to implement it in @IMPLEMENTATION_PLAN.md using a subagent.
```

#### 2. `PROMPT_build.md`
```markdown
0a. Study `specs/*` with up to 50 parallel subagents to learn the application specifications.
0b. Study @IMPLEMENTATION_PLAN.md.
0c. For reference, the application source code is in `src/*`.
1. Your task is to implement functionality per the specifications using parallel subagents. Follow @IMPLEMENTATION_PLAN.md and choose the most important item to address. Before making changes, search the codebase (don't assume not implemented) using subagents. You may use up to 50 parallel subagents for searches/reads and only 1 subagent for build/tests. Use subagents when complex reasoning is needed (debugging, architectural decisions).
2. After implementing functionality or resolving problems, run the tests for that unit of code that was improved. If functionality is missing then it's your job to add it as per the application specifications. Ultrathink.
3. When you discover issues, immediately update @IMPLEMENTATION_PLAN.md with your findings using a subagent. When resolved, update and remove the item.
4. When the tests pass, update @IMPLEMENTATION_PLAN.md, then `git add -A` then `git commit` with a message describing the changes. After the commit, `git push`.
99999. Important: When authoring documentation, capture the why — tests and implementation importance.
999999. Important: Single sources of truth, no migrations/adapters. If tests unrelated to your work fail, resolve them as part of the increment.
9999999. As soon as there are no build or test errors create a git tag. If there are no git tags start at 0.0.0 and increment patch by 1 for example 0.0.1  if 0.0.0 does not exist.
99999998. You may add extra logging if required to debug issues.
999999999. Keep @IMPLEMENTATION_PLAN.md current with learnings using a subagent — future work depends on this to avoid duplicating efforts. Update especially after finishing your turn.
9999999999. When you learn something new about how to run the application, update @AGENTS.md using a subagent but keep it brief. For example if you run commands multiple times before learning the correct command then that file should be updated.
99999999999. For any bugs you notice, resolve them or document them in @IMPLEMENTATION_PLAN.md using a subagent even if it is unrelated to the current piece of work.
999999999999. Implement functionality completely. Placeholders and stubs waste efforts and time redoing the same work.
9999999999999. When @IMPLEMENTATION_PLAN.md becomes large periodically clean out the items that are completed from the file using a subagent.
99999999999994. If you find inconsistencies in the specs/* then use a subagent to update the specs.
999999999999999. IMPORTANT: Keep @AGENTS.md operational only — status updates and progress notes belong in `IMPLEMENTATION_PLAN.md`. A bloated AGENTS.md pollutes every future loop's context.
```

#### 3. `@IMPLEMENTATION_PLAN.md`
```markdown
# Implementation Plan

- [ ] Task 1: Initialize the project specs
- [ ] Task 2: Implement core functionality
```

#### 4. `Spec.md`
```markdown
# Specification

## Goal
Detail the goal of this application.

## Requirements
Define constraints and requirements.
```
