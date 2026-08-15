# Ralph Loops + Awesome Prompts — Source Collection

**47 sources across 7 categories** | NotebookLM bundle
Bundle directory: `bundle/` (22 downloaded, 25 URLs only — JS-heavy or rate-limited)

---

## RALPH LOOPS — ORIGIN & PHILOSOPHY

> Geoffrey Huntley's canonical sources. These are the primary texts — start here.

1. **Ralph Wiggum as a "software engineer" — Original Post**
   https://ghuntley.com/ralph/
   *The original July 2025 post. Defines the bash loop technique, the one-item-per-loop rule, specs-based workflow, the playground/signs metaphor for prompt tuning. Has a CURSED language $297 ROI case study.* ✅ bundled

2. **Everything is a Ralph Loop — Extended Philosophy**
   https://ghuntley.com/loop/
   *Jan 2026 follow-up. Frames Ralph as a mindset shift: from brick-by-brick Jenga to programming-the-loop. Introduces "The Weaving Loom" (evolutionary software) and Yegge's Gas Town levels 8 and 9.* ✅ bundled

3. **ghuntley/how-to-ralph-wiggum — Official Playbook (GitHub)**
   https://github.com/ghuntley/how-to-ralph-wiggum
   *Community-organized README with workflow diagrams: idea → JTBD specs → PLANNING prompt → BUILDING prompt → loop. Covers sandboxing philosophy, escape hatches, tuning the prompt like a guitar.* ✅ bundled

4. **ghuntley/cursed — CURSED Language Flagship Demo (GitHub)**
   https://github.com/ghuntley/cursed
   *The CURSED esoteric programming language built almost entirely by Ralph loops over ~3 months. Flagship proof-of-concept showing what Ralph can accomplish on a complex, months-long project.* ✅ bundled

5. **ghuntley.com/subagents — Subagent Patterns & Context Window Management**
   https://ghuntley.com/subagents/
   *Huntley's post on using parallel subagents within a Ralph loop, and managing context window allocation with deterministic patterns.* (URL only — JS-gated)

6. **ghuntley.com/gutter — Autoregressive Queens of Failure (Context Rot)**
   https://ghuntley.com/gutter/
   *"Context rot" patterns — what happens when the context window degrades and why fresh context each iteration is essential.* (URL only — JS-gated)

---

## RALPH LOOPS — IMPLEMENTATIONS & TOOLS

> Ready-to-use repos and tools built on the Ralph pattern.

7. **snarktank/ralph — PRD-driven Claude Code / Amp Loop (GitHub)**
   https://github.com/snarktank/ralph
   *The most-cited community implementation. PRD as prd.json with user stories + passes field, progress.txt, git history as memory. Works with Claude Code or Amp. Includes AGENTS.md learnings pattern.* ✅ bundled

8. **alfredolopez80/multi-agent-ralph-loop — Multi-Agent + MemPalace Framework (GitHub)**
   https://github.com/alfredolopez80/multi-agent-ralph-loop
   *Advanced framework: 4-layer MemPalace memory, 6-agent parallel teams (coder/tester/reviewer/security), Aristotle first-principles methodology, 4-stage quality gates, 925+ tests, 22 hooks, symlink infrastructure.* ✅ bundled

9. **fstandhartinger/ralph-wiggum — Community Simplified Variant (GitHub)**
   https://github.com/fstandhartinger/ralph-wiggum
   *Lighter-weight community variant combining Ralph + GitHub SpecKit. Each iteration spawns a fresh agent, reads spec from disk, picks one task, implements, exits — no exit-hook compaction.* ✅ bundled

10. **ralph-wiggum.ai — Community Hub & Installation Guide**
    https://ralph-wiggum.ai/
    *Community site aggregating the technique, linking to Geoffrey Huntley (original), Matt Pocock (variant), Anthropic plugin. Includes INSTALLATION.md for use as agent instruction target.* (URL only — JS-gated)

---

## RALPH LOOPS — TUTORIALS & DEEP DIVES

> Step-by-step guides, walkthroughs, case studies.

11. **Wiggum CLI — Step-by-Step Ralph Loop Tutorial**
    https://wiggum.app/blog/ralph-loop-claude-code-tutorial/
    *Full tutorial for Wiggum CLI: auto-detects tech stack, generates spec via AI interview, runs phase-isolated plan→implement→test→verify→PR cycles. Includes config schema with maxIterations, claudePermissionMode, GitHub backlog integration.* (URL only)

12. **Getting Started With Ralph (aihero.dev / Matt Pocock)**
    https://www.aihero.dev/getting-started-with-ralph
    *Matt Pocock's quickstart: plan mode in Claude Code to generate PRD.md, ralph-once.sh for HITL, then wrapping in loop. Swap task source, change output format. "Go make coffee. Come back to commits."* (URL only — JS-gated)

13. **11 Tips For AI Coding With Ralph Wiggum (aihero.dev / Matt Pocock)**
    https://www.aihero.dev/tips-for-ai-coding-with-ralph-wiggum
    *Comprehensive 3,000-word guide: the core bash template, HITL vs AFK modes, PRD as JSON with passes field, Docker sandboxing, feedback loops, small steps, risky-tasks-first prioritization, software quality definition.* ✅ bundled

14. **Amplitude Blog: What I Learned Pointing a Ralph Loop at My Product for a Week**
    https://amplitude.com/blog/ralph-loop
    *Field report: 102 features shipped in one week using Amplitude's Opportunity Finder as structured task queue for a Ralph loop. Deep insights on what makes the loop effective: structured input queue, telemetry self-wiring, verification.* (URL only)

15. **Ship Features in Your Sleep with Ralph Loops (geocod.io)**
    https://www.geocod.io/code-and-coordinates/2026-01-27-ralph-loops
    *Practitioner writeup: built 2 full apps in a weekend. Covers scoping via Claude conversation, spec markdown, snarktank/ralph as harness, acceptance criteria design, external state files pattern.* (URL only)

16. **The Ralph Loop Explained — Claude Code Mastery Bootcamp**
    https://www.mejba.me/ai-school/claude-code-mastery-2026-agentic-engineering-bootcamp/lessons/agentic-engineering-tests-browser-loops-the-ralph-pattern/the-ralph-loop-explained
    *Concise explainer with minimal 15-line bash example. Covers mechanical goal requirement, iteration drift problem, context bloat, cost runaway. Good for teaching.* (URL only)

17. **The Ralph Loop: Running Claude Code For Hours Autonomously (developersdigest.tech)**
    https://www.developersdigest.tech/blog/claude-code-autonomous-hours
    *Stop hooks deep dive. Claude Opus 4.5 ran 4hr 49min autonomously. Explains how stop hooks intercept exit attempts, inject validation, feed results back. ~80% completion rate on well-defined tasks.* (URL only)

18. **What Ralph Is: Turning Claude Code and Amp into an Autonomous Loop (knightli.com)**
    https://knightli.com/en/2026/04/27/ralph-autonomous-agent-loop-claude-code-amp/
    *Technical overview of snarktank/ralph: fresh instance per iteration, external state rationale, task sizing constraints (one feature = one context window), AGENTS.md learnings accumulation.* (URL only)

19. **ZeroSync: Ralph Loop Technical Deep Dive**
    https://www.zerosync.co/blog/ralph-loop-technical-deep-dive
    *Aggregates all Geoffrey Huntley sources with good annotations. Covers fresh context requirement ("if you're implementing Ralph as a skill/command you're missing the point"), playground metaphor, AGENT.md progressive disclosure.* (URL only)

20. **Geoffrey Huntley's Ralph Wiggum Resources (prg.sh)**
    https://prg.sh/bookmarks/Geoffrey-Huntley-Ralph-Wiggum
    *Curated bookmark set for all Huntley canonical sources: ghuntley.com/ralph, ghuntley.com/loop, how-to-ralph-wiggum repo. Good index page.* (URL only)

21. **Ralph Wiggum Loop for Claude Code — Awesome Claude**
    https://awesomeclaude.ai/ralph-wiggum
    *Covers the Claude Code native built-ins (`/loop`, `/goal`, `/batch`) as alternatives to the ralph-loop plugin, with comparison table. Shows multi-phase overnight scripts. Updated June 2026.* (URL only)

22. **Claude Code Autonomous Loops: Ship Features While You Sleep (claudefa.st)**
    https://claudefa.st/blog/guide/mechanics/autonomous-agent-loops
    *Thread-based engineering × Ralph loops. Defines thread types (base, parallel, chained, fusion, big, long-duration). L-threads = Ralph loops. Covers stop hook patterns, verification-first development, ~$10.42/hr cost.* (URL only)

23. **Loop Engineering Guide (explainx.ai)**
    https://explainx.ai/blog/loop-engineering-coding-agents-claude-code-guide-2026
    *June 2026 comprehensive guide. Covers Peter Steinberger's viral tweet ("design loops that prompt your agents"), 5-component loop anatomy, 10 production loop templates, Claude Code `/goal` and `/loop` built-ins, budget governance.* (URL only)

24. **Loop Engineering: The Guide for AI Agents (lushbinary.com)**
    https://lushbinary.com/blog/loop-engineering-ai-coding-agents-guide/
    *Covers history (Ralph → loop engineering), Claude Code vs OpenAI Codex loop mechanics, 5 components, scheduling patterns, cost awareness. Solid cross-tool comparison.* (URL only)

25. **From ReAct to Ralph Loop — Alibaba Cloud Community**
    https://www.alibabacloud.com/blog/from-react-to-ralph-loop-a-continuous-iteration-paradigm-for-ai-agents_602799
    *Technical framing of Ralph as stop-hook interception mechanism. Covers the classic `while :; do cat PROMPT.md | claude-code; done` primitive and the Claude Code plugin install pattern.* (URL only)

---

## RALPH LOOPS — COMMUNITY & PODCASTS

> Discussions, creator interviews, community context.

26. **Inventing the Ralph Wiggum Loop — Dev Interrupted Podcast (linearb.io)**
    https://linearb.io/dev-interrupted/podcast/inventing-the-ralph-wiggum-loop
    *Full transcript of Geoffrey Huntley on the origin story: discovering the pattern in Feb 2025, naming it "Ralph" (also means vomiting), context window as malloc'd array, Gas Town as next evolution, $10.42/hr Sonnet cost.* (URL only)

27. **Inventing the Ralph Wiggum Loop — Dev Interrupted Substack**
    https://devinterrupted.substack.com/p/inventing-the-ralph-wiggum-loop-creator
    *Written summary of the same podcast with additional commentary. Good if the transcript is too dense.* (URL only)

28. **What is Ralph Loop? A New Era of Autonomous Coding (Medium)**
    https://medium.com/@tentenco/what-is-ralph-loop-a-new-era-of-autonomous-coding-96a4bb3e2ac8
    *Covers Ralph TUI (terminal interface for visibility during loops), Cubic (AI code review), walk-through of building a "Second Brain" app autonomously in ~1hr 45min.* (URL only)

29. **Matt Pocock Twitter Thread Breakdown (threadreaderapp)**
    https://threadreaderapp.com/thread/2007924876548637089.html
    *The viral Matt Pocock thread that spread Ralph widely in January 2026. Core bash script, PRD-as-JSON pattern, stop condition, summary in 8 tweets.* (URL only)

30. **Matt Pocock AI Engineering Posts (aihero.dev)**
    https://www.aihero.dev/posts
    *Index of all Matt Pocock AI engineering posts: Ralph, TDD loop, tracer bullets, AGENTS.md optimization, streaming Claude Code output, Sand Castle parallelization. Good ongoing reference.* (URL only — JS-gated)

---

## AWESOME PROMPTS — SYSTEM PROMPTS & AGENT PROMPT COLLECTIONS

> Actual extracted system prompts and agent behavioral specifications.

31. **Piebald-AI/claude-code-system-prompts — All Claude Code System Prompts (GitHub)**
    https://github.com/Piebald-AI/claude-code-system-prompts
    *515+ strings across Claude Code v2.1.185 (June 2026): main system prompt, 27 tool descriptions, Plan/Explore/Task sub-agent prompts, compact/statusline/magic-docs utilities. Updated within minutes of each release.* ✅ bundled

32. **EliFuzz/awesome-system-prompts — Multi-Tool System Prompt Collection (GitHub)**
    https://github.com/EliFuzz/awesome-system-prompts
    *Claude Code, Cluely, Cursor, Devin AI, Kiro, Perplexity, VSCode Agent, Gemini, Codex, OpenAI — full system prompt history with dates. Good for comparative prompt study.* ✅ bundled

33. **repowise-dev/claude-code-prompts — Independently Authored Agent Prompt Templates (GitHub)**
    https://github.com/repowise-dev/claude-code-prompts
    *Original prompts for agent behavior: safety rules, tool routing, delegation, verification, memory management, multi-agent coordination, session utilities. Drop-in skills for Cursor.* ✅ bundled

---

## AWESOME PROMPTS — CURATED COLLECTIONS

> The major "awesome list" repositories for prompts.

34. **ai-boost/awesome-prompts — Curated Prompts + Advanced PE Papers (GitHub)**
    https://github.com/ai-boost/awesome-prompts
    *Engineering-biased: covers prompt-as-code (DSPy, promptfoo, TextGrad, GEPA), all major tool system prompts, agent-specific prompts (sub-agent design, tool invocation, verifier systems, context engineering). 2026 updated.* ✅ bundled

35. **f/awesome-chatgpt-prompts / prompts.chat — 143k★ World's Largest Prompt Library (GitHub)**
    https://github.com/f/awesome-chatgpt-prompts
    *The OG. 143k stars, Harvard/Columbia cited, Hugging Face most-liked dataset, first prompt library (Dec 2022). Works with Claude, Gemini, Llama, etc. Now includes interactive prompt engineering book (25+ chapters).* ✅ bundled

36. **promptslab/Awesome-Prompt-Engineering — Hand-Curated PE Resources (GitHub)**
    https://github.com/promptslab/awesome-prompt-engineering
    *Comprehensive: guides, papers, agent papers (2026), self-improving agents, DSPy, OpenAI guide, Anthropic guide, Hugging Face courses, Google Essentials, tools.* ✅ bundled

37. **langgptai/awesome-claude-prompts — Claude-Specific Prompt Examples (GitHub)**
    https://github.com/langgptai/awesome-claude-prompts
    *Claude-focused prompt examples. Useful for Claude-specific behaviors, context patterns, and role prompts.* ✅ bundled

38. **snwfdhmp/awesome-gpt-prompt-engineering — Curated GPT PE Resources (GitHub)**
    https://github.com/snwfdhmp/awesome-gpt-prompt-engineering
    *Clean list: guides, courses, prompt collections (f/awesome-chatgpt-prompts, PromptPal, PromptBase), tools, papers (Attention Is All You Need, GPT-3 few-shot).* ✅ bundled

39. **0x2e-Tech/awesome-ai-prompts — 500+ Categorized LLM Prompts (GitHub)**
    https://github.com/0x2e-Tech/awesome-ai-prompts
    *500+ field-tested prompts across ChatGPT/Claude/Gemini: productivity, planning, writing, coding. Clean structure with LLM compatibility tags.* ✅ bundled

40. **awesomelistsio/awesome-prompt-engineering — Papers + Platforms + Tools (GitHub)**
    https://github.com/awesomelistsio/awesome-prompt-engineering
    *Official-source focused: OpenAI PE guide, Anthropic prompting guide, DeepLearning.AI course, LangChain templates, papers, community platforms (FlowGPT, PromptHero, PromptLayer, Promptfoo).* ✅ bundled

---

## AWESOME PROMPTS — TOOLS & GENERATORS

> Tools that help write, optimize, or manage prompts.

41. **nidhinjs/prompt-master — Claude Skill for Writing Accurate Prompts (GitHub)**
    https://github.com/nidhinjs/prompt-master
    *Claude Code skill that writes accurate prompts for 20+ AI tools: Claude, ChatGPT, Gemini, o3, Ollama, Qwen, DeepSeek, Cursor, Windsurf, Midjourney, etc. PAC2026 positional structure, silent routing, 35+ anti-pattern detection.* ✅ bundled

---

## AWESOME PROMPTS — GUIDES & REFERENCE

> Official documentation, comprehensive guides, foundational reference.

42. **Anthropic Prompt Engineering Overview (docs.anthropic.com)**
    https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/overview
    *The official Anthropic PE guide. Five-step ladder: be clear/direct → use examples → chain of thought → XML tags → assign roles. Iterative prompt improvement, evaluations, Workbench prompt improver.* (URL only — 403 from container)

43. **Anthropic Interactive Prompt Engineering Tutorial (GitHub)**
    https://github.com/anthropics/prompt-eng-interactive-tutorial
    *Anthropic's official 9-chapter interactive tutorial with exercises. Covers basic structure → multishot → CoT → XML → roles → chaining → long context → extended thinking.* ✅ bundled

44. **Effective Context Engineering for AI Agents — Anthropic Engineering Blog**
    https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents
    *Sep 2025 deep dive from Anthropic team. Context engineering vs prompt engineering, context rot, attention budget (n² transformer relationships), system prompt altitude calibration, tool efficiency, message history compaction. Essential reading.* ✅ bundled

45. **aiwithgrant.com — Complete Anthropic Prompt Engineering Guide (aggregated)**
    https://www.aiwithgrant.com/guides/anthropic-prompt-engineering-overview
    *Aggregated version of all Anthropic PE docs in one progressive guide. Good for NotebookLM since it's a single coherent document covering clear instructions, multishot, CoT, XML tags, roles, chaining, long context, extended thinking, Claude 4 best practices.* (URL only — 403)

46. **mattpocock/dictionary-of-ai-coding — AI Coding Jargon Explained (GitHub)**
    https://github.com/mattpocock/dictionary-of-ai-coding
    *Plain-English definitions for all AI coding terminology: token, context window, context rot, HITL, AFK, agent, loop, verification, non-determinism, temperature. Essential vocabulary for working with Ralph and prompts.* ✅ bundled

47. **Matt Pocock AI Coding Workshop Breakdown (explainx.ai)**
    https://explainx.ai/blog/matt-pocock-ai-coding-real-engineers-workshop-2026
    *Comprehensive breakdown of Pocock's Apr 2026 "AI Coding for Real Engineers" workshop: smart zone vs dumb zone, grill-me alignment, PRD→vertical slices, TDD with AI, AFK agents, Sand Castle parallelization, production code review.* (URL only — 403)

---

## How to Load into NotebookLM

**Option A — URLs** (paste directly into NotebookLM's "Add source → Website" field):
- Copy URLs from each section above. NotebookLM fetches them on its side.
- Some JS-heavy sites may fail to load on NotebookLM's end even if the URL works in a browser.

**Option B — Upload bundle files** (more reliable):
- Upload `.md` files from the `bundle/` directory.
- 22 files are available covering the most content-rich sources (all GitHub repos, key Anthropic docs, key ghuntley posts).

**Recommended split** (if over per-notebook cap):
- *Notebook 1 — Ralph Loops*: categories 1–5 (25 sources)
- *Notebook 2 — Awesome Prompts*: categories 6–7 (22 sources)
