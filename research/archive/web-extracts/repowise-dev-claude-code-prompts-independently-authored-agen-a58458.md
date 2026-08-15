# repowise-dev/claude-code-prompts — Independently Authored Agent Prompt Templates (GitHub)

Source: https://github.com/repowise-dev/claude-code-prompts
Category: awesome-prompts-system

---

Independently written prompt templates for building AI coding agents, inspired by patterns observed in Claude Code codebase. System prompts, tool prompts, agent prompts, memory management, and multi-agent coordination.
Check out [RepoWise](https://github.com/repowise-dev/repowise)
Prompts tell your agent how to behave. [RepoWise](https://github.com/repowise-dev/repowise) tells it what the codebase actually does.
Open-source codebase intelligence engine. Auto-generated architecture wikis, dependency graphs, ownership maps, dead code detection, and 9 MCP tools your AI editor can query in real time.
Scroll down for Claude Code's prompt patterns. 👇
We studied how Claude Code behaves in practice -- how it structures safety rules, routes tools, delegates to subagents, manages memory -- and wrote our own prompt collection from scratch implementing the same patterns.
Every prompt in this repo is independently authored. We observed what patterns make a coding agent reliable and wrote our own versions. From the team behind [RepoWise](https://github.com/repowise-dev/repowise).
Not affiliated with Anthropic. See [DISCLAIMER.md](https://github.com/repowise-dev/claude-code-prompts/blob/master/DISCLAIMER.md).
Note ⭐ Star this repository to if you find the collection useful.
| Category | Files | What You Get | 
|---|---|---|
| [System prompt](https://github.com#claude-code-system-prompt-1) | 1 | Agent identity, safety rules, code style, tool routing, output format | 
| [Tool prompts](https://github.com#claude-code-tool-prompts) | 11 | Shell, file read/edit/write, grep, glob, web search/fetch, agent launcher, ask user, plan mode | 
| [Agent prompts](https://github.com#claude-code-agent-prompts) | 5 | General purpose, code explorer, solution architect, verification specialist, documentation guide | 
| [Memory prompts](https://github.com#claude-code-memory-prompts) | 4 | Conversation summarization, session notes, memory extraction, memory consolidation | 
| [Coordinator prompt](https://github.com#multi-agent-coordinator) | 1 | Multi-worker orchestration with synthesis, delegation, and verification workflow | 
| [Utility prompts](https://github.com#claude-code-utility-prompts) | 4 | Session titles, tool summaries, away recaps, next-action suggestions | 
| [Pattern analyses](https://github.com#prompt-engineering-patterns) | 9 | Commentary on each pattern with reusable templates | 
| [Cursor skills](https://github.com#cursor-skills) | 3 | Drop-in skills for coding standards, verification, and prompt design | 
- Browse the [pattern files](https://github.com#prompt-engineering-patterns)to understand how production coding agents structure their prompts.
- Copy any [complete prompt](https://github.com#claude-code-system-prompt-1)into your own agent configuration.
- Replace {{PLACEHOLDER}}values with your stack, tool names, and risk policy.
- For Cursor IDE users, drop skills/into~/.cursor/skills-cursor/for instant integration.
- Add codebase context with [RepoWise](https://github.com/repowise-dev/repowise)so your agent actually understands the project it's working in.
Patterns observed in how Claude Code structures its prompts — with analysis and independently written templates.
- [System Prompt Architecture](https://github.com/repowise-dev/claude-code-prompts/blob/master/patterns/01-system-prompt-architecture.md)— layered identity, safety, and behavior
- [Core Behavioral Rules](https://github.com/repowise-dev/claude-code-prompts/blob/master/patterns/02-core-behavioral-rules.md)— anti-over-engineering, minimal changes
- [Safety and Risk Assessment](https://github.com/repowise-dev/claude-code-prompts/blob/master/patterns/03-safety-and-risk-assessment.md)— reversibility tiers, destructive action gates
- [Tool-Specific Instructions](https://github.com/repowise-dev/claude-code-prompts/blob/master/patterns/04-tool-specific-instructions.md)— per-tool routing and constraints
- [Agent Delegation](https://github.com/repowise-dev/claude-code-prompts/blob/master/patterns/05-agent-delegation.md)— when and how to spawn subagents
- [Verification and Testing](https://github.com/repowise-dev/claude-code-prompts/blob/master/patterns/06-verification-and-testing.md)— adversarial verification, anti-rationalization
- [Memory and Context](https://github.com/repowise-dev/claude-code-prompts/blob/master/patterns/07-memory-and-context.md)— summarization, session notes, memory extraction
- [Multi-Agent Coordination](https://github.com/repowise-dev/claude-code-prompts/blob/master/patterns/08-multi-agent-coordination.md)— coordinator pattern, worker synthesis
- [Auxiliary Prompts](https://github.com/repowise-dev/claude-code-prompts/blob/master/patterns/09-auxiliary-prompts.md)— utility prompts for titles, recaps, suggestions
The complete system prompt covering identity, permissions, task execution, code style, safety, tool routing, tone, and output efficiency.
- [System Prompt](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/system-prompt.md)— the main agent identity and behavioral rules
- [Coordinator Prompt](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/coordinator-prompt.md)— multi-agent orchestration mode
Prompt templates for each tool a coding agent uses to interact with the filesystem, shell, web, and user.
- [Shell Execution](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/tool-prompts/shell-execution.md)— bash command execution with sandbox, git safety, commit/PR workflows
- [File Read](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/tool-prompts/file-read.md)— reading files, images, PDFs, notebooks
- [File Edit](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/tool-prompts/file-edit.md)— exact string replacement with uniqueness constraints
- [File Write](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/tool-prompts/file-write.md)— creating new files with read-first safety
- [Search Grep](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/tool-prompts/search-grep.md)— ripgrep-powered content search
- [Search Glob](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/tool-prompts/search-glob.md)— fast file pattern matching
- [Web Search](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/tool-prompts/web-search.md)— web search with mandatory source citations
- [Web Fetch](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/tool-prompts/web-fetch.md)— URL fetching with AI-powered extraction
- [Agent Launcher](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/tool-prompts/task-management.md)— spawning autonomous subagents
- [Ask User](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/tool-prompts/ask-user.md)— structured multiple-choice questions
- [Plan Mode](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/tool-prompts/plan-mode.md)— entering planning mode before implementation
Prompt templates for specialized subagents — each designed for a different task type.
- [General Purpose Agent](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/agent-prompts/general-purpose.md)— research, search, multi-step tasks
- [Code Explorer Agent](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/agent-prompts/code-explorer.md)— read-only codebase navigation
- [Solution Architect Agent](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/agent-prompts/solution-architect.md)— design and planning
- [Verification Specialist Agent](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/agent-prompts/verification-specialist.md)— adversarial testing with PASS/FAIL/PARTIAL verdicts
- [Documentation Guide Agent](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/agent-prompts/documentation-guide.md)— documentation tasks
How to manage context across long sessions — summarization, session notes, and persistent memory.
- [Conversation Summary](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/memory-prompts/conversation-summary.md)— 9-section context compression with no-tools constraint
- [Session Notes](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/memory-prompts/session-notes.md)— structured session state tracking
- [Memory Extraction](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/memory-prompts/memory-extraction.md)— persistent memory from recent messages
- [Memory Consolidation](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/memory-prompts/memory-consolidation.md)— periodic memory cleanup and merging
Small helper prompts for session management and user experience.
- [Session Title](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/utility-prompts/session-title.md)— 3-7 word session title generation
- [Tool Summary](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/utility-prompts/tool-summary.md)— 30-character tool action summaries
- [Away Recap](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/utility-prompts/away-recap.md)— "while you were away" session recaps
- [Next Action Suggestion](https://github.com/repowise-dev/claude-code-prompts/blob/master/complete-prompts/utility-prompts/next-action-suggestion.md)— suggested follow-up actions
Drop-in skills for Cursor IDE that implement these patterns directly.
- [Skills Overview](https://github.com/repowise-dev/claude-code-prompts/blob/master/skills/README.md)
- [Coding Agent Standards](https://github.com/repowise-dev/claude-code-prompts/blob/master/skills/coding-agent-standards/SKILL.md)— behavioral defaults for coding agents
- [Verification Agent](https://github.com/repowise-dev/claude-code-prompts/blob/master/skills/verification-agent/SKILL.md)— adversarial verification workflow (- [strategies](https://github.com/repowise-dev/claude-code-prompts/blob/master/skills/verification-agent/strategies.md))
- [Prompt Architect](https://github.com/repowise-dev/claude-code-prompts/blob/master/skills/prompt-architect/SKILL.md)— prompt design methodology (- [reference](https://github.com/repowise-dev/claude-code-prompts/blob/master/skills/prompt-architect/reference.md))
We studied how Claude Code behaves in practice and identified the behavioral rules, safety patterns, tool-routing strategies, and multi-agent coordination approaches that make it effective. We then independently authored every prompt in this repository from scratch, implementing the same patterns in our own words.
All content is original.
The prompts in this repo handle agent behavior: safety, tool routing, delegation, verification. But behavior without context is like a senior engineer who's never seen the codebase. [RepoWise](https://github.com/repowise-dev/repowise) fills that gap.
| What you get | How it helps your agent | 
|---|---|
| Architecture wiki | Agent understands module boundaries before making changes | 
| Dependency graphs | Agent traces impact of changes across packages | 
| Ownership tracking | Agent knows which team/person owns each module | 
| Dead code detection | Agent avoids modifying unused code paths | 
| 9 MCP tools | Agent queries project knowledge directly from Cursor, Claude Code, or any MCP-compatible editor | 
Works with any language, any repo size.
- [DISCLAIMER.md](https://github.com/repowise-dev/claude-code-prompts/blob/master/DISCLAIMER.md)— independent authorship, nominative fair use, non-affiliation, DMCA policy.
- [LICENSE](https://github.com/repowise-dev/claude-code-prompts/blob/master/LICENSE)— MIT for all original content.
- [CHANGELOG.md](https://github.com/repowise-dev/claude-code-prompts/blob/master/CHANGELOG.md)— version history.
"Claude Code" is a trademark of Anthropic, used here under nominative fair use to describe the subject matter. This project is independent and not affiliated with Anthropic.
- All additions must be original writing. No verbatim vendor prompt text.
- Prefer concise, implementation-ready language over theory.
- Every new pattern file must include at least one concrete template.
- Follow section conventions: Approach / Output / Constraintsfor agents,Include / Format / Constraintsfor memory,Rules / Formatfor utilities.
If this helped you build better AI agents, star the repo so others can find it.
Built by [RepoWise](https://github.com/repowise-dev/repowise) — open-source codebase intelligence for AI agents ([repowise.dev](https://repowise.dev)).
