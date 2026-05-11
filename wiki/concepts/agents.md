---
created: 2026-04-30
updated: 2026-05-09
tags: [agent]
sources: 16
---

# AI Agents

## Definition

AI agents are systems in which large language models drive control flow, make autonomous decisions, and interact with external tools or environments to accomplish goals. Unlike simple prompt-response interactions, agents maintain state, plan multi-step actions, and adapt their behavior based on observations and feedback. They represent a shift from LLMs as passive text generators to active participants that can execute tasks, use APIs, browse the web, write code, and coordinate with other agents.

## Key Aspects

- **Goal-directed behavior**: Agents pursue objectives expressed through natural language instructions, breaking complex goals into subtasks and iterating until completion. The IMPACT framework identifies Intent as the first and most critical element -- agents must understand and encode goals in their prompts.
- **LLM-driven control flow**: The defining characteristic of an agent (as opposed to a deterministic workflow) is that the LLM decides execution paths at runtime. More agentic applications delegate more control to the model.
- **Tool use and action**: Agents invoke external tools (APIs, code execution, file systems, web browsers) through structured interfaces. Tool abstractions should be explicit and model-callable, with maximum flexibility for capability integration.
- **Memory systems**: Agents require multi-tiered memory -- short-term memory for current context, long-term memory for learned knowledge, and episodic memory for past interaction histories. Memory architectures range from file-based systems (AGENTS.md files) to vector databases and RL-trained memory managers. Memory management itself is becoming a core part of agent decision-making.
- **Planning and reasoning**: Agents perform multi-step planning with editable plans, dynamic adjustment, and task decomposition. A key architectural distinction exists between deliberative processes (planned, multi-step workflows) and impromptu processes (reactive, single-turn responses).
- **Tooling taxonomy**: Agent tooling is organized into three layers -- frameworks (LangChain, CrewAI) provide abstractions and patterns; runtimes (LangGraph, Temporal) provide infrastructure like durable execution and streaming; harnesses (Claude Agent SDK, DeepAgents) provide batteries-included defaults with built-in planning and filesystem access.
- **Trust and authority**: Agents act on behalf of users and require delegated authority. The balance between autonomy and oversight is critical -- constant confirmation prompts degrade the user experience, but unchecked autonomy creates safety risks. Production systems need graduated trust models.
- **Evaluation and observability**: Agent quality is measured through execution traces, ground-truth examples, and regression benchmarks. The 8-Factor Agent methodology emphasizes traces for debugging and model distillation, treating them as first-class artifacts alongside prompts and tool definitions.
- **Production engineering**: Building reliable agents requires treating prompts as version-controlled first-class citizens, model providers as replaceable resources (avoiding vendor lock-in), and context windows as explicitly managed state boundaries.

## Related Concepts

- [[agent-architecture]] -- structural design patterns for agent systems
- [[agent-frameworks]] -- libraries and SDKs for building agents
- [[agent-memory]] -- persistent knowledge and context management
- [[agent-tools]] -- external capabilities available to agents
- [[ai-agent-security]] -- guardrails and safety constraints for agent behavior
- [[agent-planning]] -- multi-step task decomposition and execution
- [[agentic-systems]] -- broader category of agent-integrated systems
- [[context-engineering]] -- managing state within LLM context windows
- [[durable-execution]] -- resilient, persistent agent run infrastructure

## Sources

- [[agent-frameworks-runtimes-harnesses]] -- taxonomy of agent tooling layers
- [[agent-engineering]] -- IMPACT framework for agent engineering
- [[agent-builder-memory-system]] -- LangChain's memory architecture for agents
- [[emerging-memory-architectures-agents]] -- seven emerging memory architectures
- [[the-8-factor-agent]] -- methodology for production agent development
- [[uchicago-llm-course]] -- academic treatment of agents as an advanced LLM topic
- [[agent-frameworks]] -- framework comparisons
- [[agent-harnesses]] -- batteries-included agent systems
- [[agent-runtimes]] -- infrastructure for agent deployment
- [[agentic-memory]] -- memory systems for autonomous agents
- [[agents-api]] -- API patterns for agent communication
- [[chenhao-tan]] -- research on agent behavior and simulation
- [[durable-execution]] -- persistent agent run infrastructure
- [[episodic-memory]] -- interaction history for agents
- [[log]] -- agent execution logging
- [[long-term-memory]] / [[short-term-memory]] / [[memory-hierarchy]] / [[memory-architectures]] -- memory subsystems
