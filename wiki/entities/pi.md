---
created: 2026-04-29
updated: 2026-05-09
tags: [entity]
sources: 3
---

# pi

## Summary
pi is a minimal, opinionated coding agent framework designed around the philosophy of building only what is strictly necessary. Created by Mario Zechner, it takes a deliberately stripped-down approach -- using fewer than 1000 tokens in its system prompt and only four core tools (Read, Write, Edit, Bash) -- while remaining competitive with complex systems like Claude Code, Codex, and Cursor on benchmarks. pi prioritizes observability, user control, and simplicity over feature density.

## Key Aspects

- **Minimal System Prompt**: Under 1000 tokens, relying on frontier models' inherent understanding of coding agent patterns rather than extensive prompt engineering
- **Four Core Tools**: Read, Write, Edit, and Bash -- contrasted with 40+ tools in other agents, demonstrating that tool quantity does not correlate with capability
- **YOLO Mode by Default**: Full unrestricted access to the system; security is handled at the container/environment level rather than through guardrails within the agent itself
- **Git-Backed Memory**: The pi-self-learning extension gives agents durable memory by extracting mistakes and fixes from completed tasks, storing them in daily markdown files and a ranked `CORE.md`
- **No Sub-Agents**: Sub-agents are considered a symptom of poor planning; context gathering happens in a separate session instead
- **No MCP Support**: Prefers composable CLI tools and on-demand README reading over MCP servers that dump full schemas into context
- **Multi-Provider API**: Supports OpenAI Completions/Responses, Anthropic Messages, and Google Generative AI, with cross-provider context handoff (e.g., Claude thinking serialized into `<thinking>` tags for GPT)
- **Benchmark Results**: Competitive on Terminal-Bench 2.0 with Claude Opus 4.5, proving minimal approaches can match complex systems

## Related Concepts

- [[self-learning]] -- Git-backed memory and learning from mistakes
- [[context-engineering]] -- Managing what information enters the agent's context window
- [[differential-rendering]] -- Efficient terminal UI updates that redraw only changed content
- [[model-context-protocol]] -- Model Context Protocol, which pi deliberately avoids in favor of CLI composability
- [[claude-code]] -- More complex agent framework that pi positions itself against

## Sources

- [[self-learning-coding-agent]] -- pi-self-learning extension: git-backed agent memory
- [[what-i-learned-building-minimal-coding-agent]] -- Lessons from building the pi coding agent
