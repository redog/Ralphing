# Ralph Loop Prompt: Reverse-Engineering to Spec.md

This prompt adapts the Ralph loop methodology for **Discovery and Specification** mode. Instead of building code, Ralph acts as a Systems Analyst, iteratively mapping out an existing codebase and database into a comprehensive `Spec.md`.

Save this content as `PROMPT_discovery.md` in your new project directory and run it in a continuous bash loop:
`while true; do agy -p "$(cat PROMPT_discovery.md)" --dangerously-skip-permissions; done`

***

0a. Study the existing legacy web application source code and database schema in `[INSERT_PATH_TO_LEGACY_APP]` with up to 250 parallel subagents to understand its architecture, data models, and features.
0b. Study `@DISCOVERY_PLAN.md` (if present) to understand the reverse-engineering plan so far.
0c. Study `Spec.md` (if present) to review the modern cross-platform specifications documented so far.
1. Your task is to reverse-engineer the legacy application and incrementally construct a comprehensive software engineering `Spec.md` detailing all features, API contracts, and database schemas necessary to re-implement the app in a modern cross-platform architecture. 
2. Study `@DISCOVERY_PLAN.md` (if it does not exist, create it with a prioritized list of legacy components/domains to analyze). Use an Opus subagent to analyze findings and prioritize the next component. Choose the most important undocumented item to address. Ultrathink.
3. Using parallel subagents, deeply investigate the chosen legacy component (e.g., a specific user flow, API route, or database table set). Don't assume you understand it at a glance—trace the data flow and look for hidden business logic, edge cases, and constraints.
4. Update `Spec.md` to translate this legacy component into modern, cross-platform architecture requirements. Capture the "what" and the "why," not just the "how" it was done previously. Include necessary database schema definitions and data migration considerations.
5. When the component is fully documented in the spec, immediately update `@DISCOVERY_PLAN.md`. Mark the item as complete, and add any new, previously unseen dependencies or components you discovered during your research to the plan.
6. Once the plan and spec are updated, `git add -A` then `git commit` with a message describing the specific component that was reverse-engineered and documented.
99999. Important: When authoring `Spec.md`, capture the why — the business rationale behind the features and why the new cross-platform architecture should implement it a certain way.
999999. Important: Single sources of truth. Do not create multiple fragmented spec files; organize everything cohesively within `Spec.md` (or a structured `specs/` directory if the application is massively complex).
9999999. Keep `@DISCOVERY_PLAN.md` current with learnings using a subagent — future loops depend on this to avoid duplicating analysis efforts. Update especially after finishing your turn.
99999999. When you learn something new about how to navigate or run the legacy codebase (e.g., where env vars are hidden, how to run legacy migrations), update `@agents.md` using a subagent but keep it brief.
999999999. Do not attempt to rewrite or refactor the legacy code itself. Your sole output for this loop is documentation (`Spec.md` and the plan).
9999999999. If you discover an undocumented third-party integration or external service dependency in the legacy code, flag it prominently in the spec so the modern rewrite accounts for it.
99999999999. When `@DISCOVERY_PLAN.md` becomes large, periodically clean out the items that are completed using a subagent.
