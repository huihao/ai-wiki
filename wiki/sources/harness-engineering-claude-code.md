---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Claude Code Leak: Understanding Harness Engineering

## Metadata

- **Author**: Bojie Li (01.me)
- **Date**: 2026-04-02
- **URL**: https://01.me/2026/04/blog-claude-code/
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/agent/一场泄露看懂 Claude Code：Harness 是让 Agent 干活靠谱的关键.md
- **Language**: Chinese

## Summary

Analysis of Claude Code's leaked source code (1903 files, 510K lines TypeScript) revealing the comprehensive harness engineering that makes agents reliable beyond just model and tools.

## Key Takeaways

### The Leak Incident

April 1, 2026: Source map opened, revealing:
- 1903 TypeScript files
- 510,000 lines of code
- Buddy pet system (18 species, 5 rarity levels, Easter egg)
- Complete production-scale agent implementation

**Evidence of Intent**:
- SALT = 'friend-2026-401' (friend + April 1, 2026)
- Teaser Window April 1-7 with marketing language
- All species hex-encoded to hide capybara (next model codename)
- DMCA takedown after 10+ hours of global spread

### Harness Engineering Definition

**Evolution**: Prompt → Context → Harness
- Prompt Engineering: Asking right questions
- Context Engineering: Managing what model sees
- Harness Engineering: Everything outside the model

**Formula**: Agent = Model + Harness
- Model: Intelligence (can think)
- Environment: Capability (can act)
- Constraints/Validation: Reliability (won't fail)

### Architecture Overview

**Main Loop**: 1700-line state machine in query.ts
- 7 named continue branches
- Not simple while loop, but complete state machine
- Each branch has semantic transition.reason label

**React for CLI**: 552 .tsx files using Ink framework
- Handles streaming, parallel execution, dialogs, diffs
- Cold start optimization for --version flag

**Core Tools**: 7 tools cover all tasks
- Read/Write/Edit (file operations)
- Glob/Grep (discovery/search)
- Bash (commands)
- Agent (subagent scheduling)

### Environment Layer

**Prompt Cache Economics**:
- Architecture constraint, not optimization
- SYSTEM_PROMPT_DYNAMIC_BOUNDARY in system prompt
- Fork Agent CacheSafeParams for byte-level consistency
- Tool result storage decisions frozen for cache

**Five-Layer Compression**:
- Layer 1: Tool Result Budget (store to disk)
- Layer 2: HISTORY_SNIP (delete noise)
- Layer 3: Microcompact (API layer edits)
- Layer 4: CONTEXT_COLLAPSE (archive structure)
- Layer 5: Autocompact (final fallback)

**Side Query**:
- Lightweight non-streaming API calls
- Permission classification, memory retrieval, summaries
- Parallel during main model reasoning
- Tool Use Summary: Haiku summarizes while Sonnet thinks

**Memory Architecture**:
- Markdown files, not vector databases
- CLAUDE.md, AGENTS.md, memory/YYYY-MM-DD.md, MEMORY.md
- Transparent, Git-versioned, editable

**Dream System**:
- Background memory consolidation
- Triggered after 24h + 5 sessions + file lock
- Orient → Gather → Consolidate → Prune
- Thresholds tunable via GrowthBook

### Constraints & Validation Layer

**Fail-Closed Defaults**:
- isReadOnly defaults to false
- isConcurrencySafe defaults to false
- Declaring nothing = more restrictive

**LLM Permission Classifier**:
- Input: only tool_use blocks, not natural language
- Each tool has toAutoClassifierInput() method
- Read-only tools whitelisted

**Five Permission Layers**:
- Settings static rules
- PreToolUse Hook
- Tool attributes
- LLM Auto-Classifier
- Refusal circuit breaker (3 or 20 times)

**Shell Security**:
- Semantic parser, not keyword blacklist
- Every git flag type-annotated
- Handles -- terminator, UNC paths, compound commands
- Example: git diff -S flag type fix

**Streaming + Concurrency**:
- isConcurrencySafe marks tools
- Batch concurrent-safe tools together
- Bash error cascades to sibling tools
- Read/Grep failures don't cascade

**Speculative Execution**:
- Predict while user types
- Fork agent on overlay filesystem
- Write only to overlay
- Accept → promote, Reject → delete overlay
- Tool whitelist + 20 iterations limit

**Multi-Agent Capability Partition**:
- Tool surface determines identity
- Different agent types: different tool sets
- Coordinator: only 3 tools
- Async Agent: file + search + shell only
- MCP tools require isSourceAdminTrusted

### Error Recovery

**Output Limit Recovery**:
- Step 1: Silent upgrade from 8K to 64K
- Step 2: Multi-round continuation (max 3)
- No apology, no recap, pick up mid-thought

**Message Withholding**:
- Errors withheld during recovery loop
- External consumers see nothing until recovery exhausted
- Desktop clients would terminate on seeing error

**Model Downgrade**:
- Automatic fallback when main model unavailable
- Strip model-specific content from history
- Restart with backup model

**Circuit Breakers Everywhere**:
- Compression: 3 consecutive failures (saved 250K calls/day)
- Permission: 3 or 20 refusals
- Output: 3 continuations

**Death Spiral Prevention**:
- API error → skip all stop hooks
- Prevent infinite loop of error → hook → error

### Engineering Practices

**Ablation Experiments**:
- ABLATION_BASELINE flag disables 7 features
- GrowthBook for A/B testing and feature flags
- Server-side bucketing, user profiling
- Track experiment exposure

**Dual Feature Flags**:
- Compile-time (Bun feature() macro): Binary deletion
- Runtime (GrowthBook): Gray release, A/B, kill switch
- All flags prefixed 'tengu_'

**Anti-Distillation**:
- Layer 1: Fake tools injection (training set poisoning)
- Layer 2: Connector text summarization (signed obfuscation)
- Both controlled by GrowthBook
- SDK streamlined mode for distillation-resistant output

**Privacy Engineering**:
- AnalyticsMetadata_I_VERIFIED_THIS_IS_NOT_CODE_OR_FILEPATHS type
- MCP tool name sanitization
- stdout guard for NDJSON streams

**Undercover Mode**:
- Detect non-internal repo → strip internal names
- NO force-OFF (can force ON, cannot force OFF)
- Canary detection via excluded-strings.txt

### Six Core Principles

**Environment Principles**:
1. Cache economics as architecture constraint
2. Layered processing for different information lifespans
3. Parallelize all parallelizable LLM calls

**Constraint Principles**:
4. Circuit breakers everywhere
5. Don't expose errors prematurely
6. Conservative security defaults

### Business Strategy

**Model Commoditization**: Models becoming infrastructure, not differentiation

**Escape Mechanisms**: Build ecosystem/platform/integration like NVIDIA (CUDA), Apple (iOS), AWS (PaaS)

**Anthropic's Flywheel**: Define paradigms → Build products → Generate data → Feed training → Improve models → Ecosystem growth

**Paradigm Definition Power**: Define standards where your model performs best. Standards open, best implementation closed.

## Entities Mentioned

- [[anthropic|Anthropic]] — Claude Code creator
- [[claude-code|Claude Code]] — Product analyzed
- [[bojie-li|Bojie Li]] — Author of analysis
- [[growthbook|GrowthBook]] — A/B testing platform
- [[langchain|LangChain]] — Terminal Bench experiment reference
- [[openai|OpenAI]] — Comparison reference

## Concepts Mentioned

- [[harness-engineering|Harness Engineering]] — Everything outside the model
- [[prompt-engineering|Prompt Engineering]] — Asking right questions
- [[context-engineering|Context Engineering]] — Managing model's view
- [[cache-economics|Cache Economics]] — Architecture decisions around caching
- [[five-layer-compression|Five-Layer Compression]] — Information lifespan-based processing
- [[side-query|Side Query]] — Lightweight parallel LLM calls
- [[circuit-breakers|Circuit Breakers]] — Limits on recovery attempts
- [[message-withholding|Message Withholding]] — Hiding intermediate errors
- [[fail-closed|Fail-Closed]] — Conservative default behavior
- [[speculative-execution|Speculative Execution]] — Predictive work on overlay
- [[capability-partition|Capability Partition]] — Identity via tool surface
- [[ablation-experiments|Ablation Experiments]] — Testing by removing features
- [[anti-distillation|Anti-Distillation]] — Preventing model extraction
- [[undercover-mode|Undercover Mode]] — Leak prevention

## Raw Notes

Key insight: "The real engineering is beyond model, prompt, and tools. That distance is much farther than most people imagine."

## Questions / Follow-ups

- How mature is the Dream system in production?
- What's the actual cache hit rate?
- How effective is anti-distillation?
- What lessons apply to other agent frameworks?
