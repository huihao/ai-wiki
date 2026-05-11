---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# What I Learned Building an Opinionated Minimal Coding Agent (pi)

## Metadata

- **Author**: Mario Zechner (badlogic)
- **Date**: 2025-11-30
- **URL**: https://mariozechner.at/posts/2025-11-30-pi-coding-agent/
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/agent/What I learned building an opinionated and minimal coding agent.md

## Summary

Lessons from building pi, a minimal coding agent harness, focusing on simplicity, observability, and control rather than complex features.

## Key Takeaways

### Philosophy: If I Don't Need It, Won't Build It

Minimal by design, pi rejects features that add complexity without clear value.

### Components

**pi-ai**: Unified LLM API with multi-provider support
**pi-agent-core**: Agent loop handling tool execution
**pi-tui**: Terminal UI framework with differential rendering
**pi-coding-agent**: CLI wiring everything together

### Key Decisions

**Minimal System Prompt**: <1000 tokens
- Compare to Claude Code's 10,000+ tokens
- Frontier models RL-trained, understand coding agents inherently
- No need for extensive prompt engineering

**Minimal Toolset**: 4 core tools
- Read, Write, Edit, Bash
- Compare to Claude Code's 40 tools
- Models trained on similar tool schemas

**YOLO by Default**: Full access, no guardrails
- Security theater in other agents ineffective
- User is bottleneck, not safety checks
- Run in container if concerned

**No Built-in To-Dos**: External state via TODO.md
- To-do lists confuse models
- Checkboxes visible, version-controlled

**No Plan Mode**: Talk through problems without executing
- If need persistent plan, write to PLAN.md
- File-based plans survive sessions

**No MCP Support**: CLI tools + README > MCP servers
- MCP servers dump entire schemas into context
- Progressive disclosure via on-demand README reading
- Composable via bash piping

**No Background Bash**: tmux for long-running processes
- Background bash adds complexity
- tmux provides observability and interaction
- Bash is all you need

**No Sub-Agents**: Fix workflow instead
- Sub-agents indicate poor planning
- Gather context in separate session first
- Create artifacts for reuse

### Technical Details

**Multi-Provider API**: Handles 4 API types
- OpenAI Completions, Responses
- Anthropic Messages
- Google Generative AI

**Provider Quirks**: Extensive handling
- Different max_tokens fields
- Different reasoning content fields
- CORS support variations

**Context Handoff**: Cross-provider continuation
- Claude thinking → GPT as `<thinking>` tags
- Serialize/deserialize context to JSON

**Type-Safe Models**: Generated registry
- Parse OpenRouter + models.dev
- Cost and capability metadata

**Partial Results**: Abort support throughout
- Returns partial content on abort
- Critical for production systems

**Structured Tool Results**: Split output
- LLM content + UI display content
- TypeBox schema validation with AJV

**Differential Rendering**: TUI efficiency
- Compare previous lines, redraw only changes
- Synchronized output prevents flicker
- Retained mode caching

### Benchmark Results

**Terminal-Bench 2.0**: 5 trials per task
- pi with Claude Opus 4.5: competitive with Codex, Cursor, Windsurf
- Minimal approach performs well
- Terminus 2 (even more minimal, just tmux) also competitive

**Evidence**: Minimal tools + minimal prompt can match complex systems

## Entities Mentioned

- [[mario-zechner|Mario Zechner]] — Author and pi creator
- [[pi|pi]] — Minimal coding agent
- [[anthropic|Anthropic]] — Claude Code reference
- [[openai|OpenAI]] — Codex reference
- [[cursor|Cursor]] — Competitor reference
- [[windsurf|Windsurf]] — Competitor reference
- [[armin-ronacher|Armin Ronacher]] — Philosophy reference

## Concepts Mentioned

- [[minimalism|Minimalism]] — Philosophy of simplicity
- [[yolo-mode|YOLO Mode]] — Unrestricted access
- [[observability|Observability]] — Transparency of operations
- [[differential-rendering|Differential Rendering]] — Efficient TUI updates
- [[partial-results|Partial Results]] — Abort handling
- [[structured-tool-results|Structured Tool Results]] — Split output
- [[context-handoff|Context Handoff]] — Cross-provider continuation
- [[type-safe-models|Type-Safe Models]] — Registry approach
- [[terminal-bench|Terminal-Bench]] — Benchmark suite

## Raw Notes

Key insight: "Existing harnesses make context engineering hard by injecting stuff behind your back that isn't surfaced in UI."

Armin Ronacher's parallel: "Building on provider SDKs gives full control, smaller surface area."

## Questions / Follow-ups

- How does pi handle large codebases?
- What's user adoption rate?
- How do teams collaborate with pi?
- What extensions exist beyond self-learning?
