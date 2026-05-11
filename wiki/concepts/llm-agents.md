---
created: 2026-04-27
updated: 2026-04-27
tags: [agent, architecture]
sources: 7
---

# LLM Agents

## Definition

Systems that use LLMs as reasoning engines to autonomously plan, use tools, and execute multi-step tasks. Agents go beyond single-turn prompting by incorporating memory, tool use, and feedback loops.

## Key Proponents / Critics

- **Foundational work**: ReAct (Yao et al.), Toolformer, HuggingGPT, AutoGen, MetaGPT, MemGPT
- **Industry leaders**: [[openai]] (Operator), [[anthropic]] (Claude with computer use), [[Devin]] (Cognition AI), [[8-factor-agent-breakdown|SWE-Agent]]
- **Key benchmarks**: SWE-Bench, SWE-Lancer, WebArena, SWE-Gym, TauBench, GAIA, BFCL

## Related Concepts

- [[function-calling]] — how agents invoke tools
- [[react-framework|ReAct]] — reasoning + acting paradigm
- [[retrieval-augmented-generation|RAG]] — agents often use RAG as a tool
- [[understanding-reasoning-llms|Reasoning LLMs]] — stronger reasoning improves agent capability
- [[code-generation-with-llms]] — coding is the highest-profile agent use case
- [[awesome-llms-in-china|Memory in LLMs]] — episodic and semantic memory for long-running agents
- [[harness-engineering-overview|Harness Engineering]] — infrastructure for reliable agent deployment

## Sources

- [[ai-engineering|The 2025 AI Engineering Reading List]]
- [[claude-code-source-leak-harness]]
- [[hermes-agent|Hermes Agent Self-Improving]]
- [[harness-engineering|Harness Engineering Backend Systems]]
- [[harness-engineering|From Toy to Production Harness Engineering]]
- [[why-genai-based-coding-agents-are-a-complex-domain-in-cynefin]] — Cynefin framework applied to agent adoption
- [[your-coding-agent-keeps-making-the-same-mistakes-i-built-a-fix|Your Coding Agent Keeps Making the Same Mistakes. I Built a Fix]] — agent memory and self-improvement

## Evolution

- **2022–2023**: ReAct and Toolformer establish the tool-use paradigm. AutoGen and MetaGPT explore multi-agent collaboration.
- **2024**: SWE-Bench becomes the high-profile benchmark. Devin demonstrates end-to-end software engineering agents. Claude Sonnet excels at coding agent tasks.
- **2025**: Agents move from research demos to production systems. The UC Berkeley LLM Agents MOOC and NeurIPS workshops consolidate the field.
