---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 1
---

# Low Recall

## Definition

Low recall in the context of AI-assisted coding refers to the failure of agentic search systems to find all relevant code in large codebases, causing agents to miss existing implementations, duplicate functionality, and introduce inconsistencies. This is a fundamental limitation of agent-based development, where the agent only has a local view of the codebase and cannot achieve the holistic understanding needed for good architectural decisions.

## Key Aspects

- Large codebases inherently produce low recall in agentic search due to context window limits
- The problem is more fundamental than context length: agents have only a local view and cannot find all code needed for a comprehensive understanding
- Low recall leads to duplicated code, inconsistent patterns, and missed existing solutions
- Compounding errors occur because agents make mistakes like humans but do not learn from them, with no bottleneck limiting the error rate
- When agents remove humans from the loop, tiny harmless errors compound into monstrous problems without anyone noticing
- Human pain is delayed until problems become too large to easily fix
- Mitigation requires keeping humans in the loop as rate limiters, scoping agent tasks tightly, and requiring evaluation functions

## Related Concepts

- [[llm]]
- [[mcp-server]]
- [[memorization]]

## Sources

- [[slowness-agent-coding]]
