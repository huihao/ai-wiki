---
created: 2026-04-27
updated: 2026-04-27
tags: [source, methodology, agent, production]
sources: 1
---

# The 8-Factor Agent

## Metadata

- **Author**: [[diwank-tomer]]
- **URL**: https://8factoragent.org/
- **Fetched**: 2026-04-24
- **Raw file**: `raw/The 8-Factor Agent.md`

## Summary

A methodology for building production AI applications that incorporate LLM agents. Inspired by the Twelve-Factor App methodology, it provides a shared vocabulary and set of best practices for agent development. The focus is on maintainability, vendor independence, and systematic improvement of AI-native services.

## Key Takeaways

- **Prompts as first-class citizens**: All prompts tracked separately from code to enable systematic iteration and version control.
- **Explicit tool interfaces**: Model-callable interfaces should be clearly defined and isolated, offering maximum flexibility in capability integration.
- **Model providers as replaceable resources**: APIs should be treated as external, swappable dependencies — avoid vendor lock-in.
- **Context management**: Explicitly define processes that reduce application and user state into manageable context windows.
- **Ground-truth examples**: Maintain examples of expected prompt results for regression testing and evaluation.
- **Separate reasoning types**: Divide processes into **deliberative** (planned, multi-step) and **impromptu** (reactive, single-turn) reasoning to optimize resource utilization.
- **Workflows for deliberative processes**: Use structured workflows to model and run complex, multi-step agent processes while maintaining traceability.
- **Traces for debugging and distillation**: Save execution traces for observability, debugging, and future model distillation.

## Entities Mentioned

- [[diwank-tomer]] — author
- New York AI User Group — venue for related talk

## Concepts Mentioned

- [[llm-agents]] — target architecture
- [[prompt-engineering]] — prompts as first-class citizens
- [[function-calling]] — tool interfaces
- [[how-to-scale-your-model|Model Provider Abstraction]] — avoiding vendor lock-in
- [[context-engineering]] — managing state within context windows
- [[8-factor-agent-breakdown|Agent Tracing]] — observability and debugging
- [[ai-frontier-workflow|Workflow Orchestration]] — structured deliberative processes
- [[8-factor-agent-breakdown|Twelve-Factor App]] — predecessor methodology

## Raw Notes

- The methodology is provider-agnostic and tool-agnostic. It aims to be the "Twelve-Factor App" equivalent for the agent era.
- The distinction between deliberative (workflow-driven) and impromptu (reactive) reasoning is a useful architectural lens that aligns with the inference-time scaling vs. fast-response trade-off.
- The "traces for distillation" point connects to the broader trend of using production traces to generate SFT data for smaller models.

## Questions / Follow-ups

- How does this compare to other agent frameworks' best practices (e.g., LangGraph, AutoGen, CrewAI)?
- Are there tools that natively support all eight factors?
- How do the "examples" and "traces" factors relate to eval-driven development?
