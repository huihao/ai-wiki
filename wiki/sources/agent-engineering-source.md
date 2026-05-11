---
created: 2026-04-28
updated: 2026-04-28
tags: [source, agents, engineering, framework]
sources: 1
---

# Agent Engineering (source)

## Metadata

- **Author**: swyx (Latent Space)
- **Date**: 2025-03-24
- **URL**: https://www.latent.space/p/agent
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Agent Engineering.md`

## Summary

A framework for defining and building AI agents, introducing the IMPACT acronym and distinguishing agents from workflows based on LLM-driven control flow. Draws on 250+ community definitions and conference talks.

## Key Takeaways

- **No agreed definition of "agent"**: Simon Willison collected 250+ replies; everyone emphasizes their own starting point. Need descriptive, not prescriptive understanding.
- **OpenAI's TRIM**: Agent = LLM + memory + planning skills + tool use. But forgets prompts, runtime orchestration, and trust.
- **IMPACT framework** (6 elements of agent engineering):
  - **I**ntent: Multimodal input, goals, evals (generator-verifier gap)
  - **M**odel-driven control flow: LLM decides control flow (the line between preset workflows and autonomous agents)
  - **P**lanning: Multi-step, editable plans (SOTA: Deep Research, Devin, Manus)
  - **A**uthority (delegated): Trust — agents must act on behalf of users without constant confirmation
  - **C**ontext: Memory, state, and runtime orchestration
  - **T**ooling: Tools, APIs, and environment interaction
- **Workflows vs. agents**: Workflows get you far short-term but get "steamrolled by the next order of magnitude gain in intelligence."
- **Agent autonomy spectrum**: "Stutter-step agents" (asking for confirmation every time) don't scale. Need clever exemption strategies like Windsurf's.
- **Reasoning models reignited agent discussion**: o1 release + Claude 3.5's coding excellence drove agent resurgence in late 2024.

## Entities Mentioned

- swyx — author, Latent Space podcast
- [[simon-willison]] — collected agent definitions
- Lilian Weng — OpenAI's agent definition (now Thinking Machines)
- [[openai]] — o1, TRIM framework
- [[anthropic]] — Claude 3.5, agents talk
- [[harrison-chase]] — LangChain, quote on control flow
- Windsurf — SOTA coding agent
- [[Devin]] / [[context-engineering|Manus]] — advanced agent systems

## Concepts Mentioned

- [[agent-engineering-source|Agent Engineering]] — systematic approach to building agents
- [[dspy-framework|IMPACT Framework]] — six-element agent definition
- [[dspy-framework|TRIM Framework]] — OpenAI's agent definition
- [[hugging-face|LLM-Driven Control Flow]] — distinguishing agents from workflows
- Delegated Authority — trust and autonomy in agents
- Generator-Verifier Gap — evals and verification for intent
- Editable Plans — multi-step planning that can be revised

## Raw Notes

- From 2025 AI Engineer Summit keynote. Conference rule: no direct vendor pitches; vendors must bring customers.
- ChatGPT reacceleration tracked closely to model/agent releases.

## Questions / Follow-ups

- How has the IMPACT framework held up against newer agent architectures?
- What are the most successful production deployments using high-delegation authority?
