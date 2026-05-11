---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, infrastructure]
sources: 3
---

# Agentic Systems

## Definition
Agentic systems are AI architectures in which language models operate as autonomous coordinators that plan, use tools, invoke sub-agents, and manage state across multi-step workflows to accomplish complex goals with minimal human intervention.

## Key Aspects
- **Infrastructure taxonomy**: Agent infrastructure divides into frameworks (abstractions like LangChain), runtimes (production infrastructure like LangGraph with durable execution and persistence), and harnesses (batteries-included systems like Claude Code with default prompts and tool handling).
- **Progressive disclosure architecture**: Enterprise agentic platforms use three-level capability systems—Commands (intent entry, <100 lines), Skills (domain knowledge, <2k token entry), and Subagents (isolated context, <2k token return)—to manage context windows efficiently.
- **Tool-based pull over scene-based push**: Mature agentic systems converge on tool-based progressive disclosure (agents pull what they need) rather than scene routing (system pushes pre-selected tools), avoiding context rot from routing metadata.
- **Knowledge compounding**: Each task delivers features and accumulates cognitive assets in a knowledge directory, creating a "knowledge compound interest" effect that improves subsequent agent performance.
- **Anti-hallucination mechanisms**: Production systems require universal-context-collector searches before writing, with every claim marked as sourced or flagged as unconfirmed.
- **Quality gates**: Automated checkpoints (traceability checkers, multi-dimensional code review with 7 checkers + 1 synthesizer) run between workflow phases.

## Related Concepts
- [[agent-systems]]
- [[agent-workflows]]
- [[coding-agent]]
- [[agent-loop]]

## Sources
- [[agentic-orchestration]]
- [[alice-moore]]
- [[specialist-agents]]
