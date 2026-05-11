---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 1
---

# ReAct Agent

## Definition
A ReAct (Reasoning + Acting) agent is an AI agent architecture that interleaves chain-of-thought reasoning with tool-use actions in an iterative loop. The agent reasons about what it needs to do, takes an action (e.g., running code, calling an API, searching the web), observes the result, and then reasons again, repeating until the task is complete.

## Key Aspects
- ReAct combines two complementary capabilities: chain-of-thought reasoning (thinking) and tool-use actions (doing)
- The agent follows a think-act-observe loop: reason about the current state, take an action, observe the result, repeat
- Provides a structured format that makes tool use more probable in LLM outputs
- In self-programming agent architectures, ReAct patterns enable agents to write code, test it, read errors, and iteratively improve
- ReAct agents are more reliable than pure reasoning (which can hallucinate) or pure action (which lacks planning)
- The reasoning trace provides interpretability: you can see why the agent chose each action
- Function calling provides the bridge from text prediction to physical execution in the ReAct framework
- ReAct is the foundation for many modern agent frameworks (LangChain, AutoGPT, Claude Code's agentic loop)

## Related Concepts
- [[chain-of-thought]]
- [[function-calling]]
- [[agent-loop]]
- [[tool-use]]

## Sources
- [[self-programming-agent]]
