---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, engineering, framework]
sources: 0
---

# Agent Engineering

## Definition

Agent Engineering is the systematic discipline of designing, building, and evaluating AI agents — systems where LLMs drive control flow, make decisions, and interact with tools or environments. It goes beyond simple prompt engineering to address planning, memory, authority delegation, and trust.

## Key Proponents / Critics

- **swyx (Latent Space)** — IMPACT framework
- **Simon Willison** — collected 250+ agent definitions
- **Lilian Weng (OpenAI / Thinking Machines)** — TRIM framework
- **Harrison Chase (LangChain)** — on LLM-driven control flow

## Related Concepts

- [[dspy-framework|IMPACT Framework]] — Intent, Model-driven control flow, Planning, Authority, Context, Trust
- [[dspy-framework|TRIM Framework]] — OpenAI's Task, Reasoning, Interaction, Memory definition
- [[hugging-face|LLM-Driven Control Flow]] — distinguishing agents from workflows
- Delegated Authority — trust and autonomy in agents
- [[stop-using-init-for-agents-md|Workflows vs. Agents]] — preset control flow vs. LLM-decided flow
- Generator-Verifier Gap — evals challenge for intent specification

## Sources

- [[agent-engineering-source|agent-engineering]] — IMPACT framework and agent definitions

## Evolution

- 2023: Early agents (AutoGPT, BabyAGI) were mostly demoware
- 2024: Claude 3.5 + o1 reignited agent discussion; Windsurf, Devin, Manus showed SOTA
- 2025: IMPACT framework attempts to systematize the field
- Debate: "Workflows get steamrolled by the next order of magnitude gain in intelligence"
