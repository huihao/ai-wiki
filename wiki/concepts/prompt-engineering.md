---
created: 2026-04-28
updated: 2026-04-28
tags: [llm, technique]
sources: 0
---

# Prompt Engineering

## Definition

Prompt engineering is the practice of designing and refining input prompts to elicit desired outputs from large language models. It encompasses techniques ranging from simple instruction formatting to advanced patterns like chain-of-thought, few-shot exemplars, role assignment, and structured output schemas. Prompt engineering is the lowest-cost lever for improving LLM performance without modifying model weights.

## Key Proponents / Critics

- **Practitioners**: Nearly all AI application developers
- **Advocates**: [[openai]], [[anthropic]] — extensive prompt engineering guides
- **Skeptics**: [[dspy-framework|DSPy]] community argues prompt engineering should be automated/compiled, not manual
- **Evolutionary view**: [[agent-engineering-source|Agent Engineering]] and [[harness-engineering-overview|Harness Engineering]] frameworks treat prompts as just one component of a larger system

## Related Concepts

- [[chain-of-thought]] — prompting technique for reasoning
- [[in-context-learning]] — LLM adaptation via prompt examples
- [[context-engineering]] — superset that includes prompt engineering
- [[dspy-framework|DSPy]] — framework that compiles programs into prompts automatically
- [[retrieval-augmented-generation]] — often combined with prompt engineering for grounding
- [[agentic-engineering-engineering-revolution|Agentic Engineering]] — moves beyond single prompts to multi-step agent loops

## Sources

- [[context-engineering|Context Engineering for Coding Agents]] — prompt engineering within coding agent context
- [[libguides-ai-in-medicine-rss|Customize AI in Visual Studio Code]] — prompt files and custom instructions as prompt engineering
- [[prompt-engineering|Nano Banana Can Be Prompt Engineered for Extremely Nuanced AI Image Generation]] — prompt engineering for image models
- [[write-good-spec-ai-agents|How to Write a Good Spec for AI Agents]] — specification writing as advanced prompt engineering

## Evolution

- **2020–2022**: Manual prompt crafting, discovery of few-shot and chain-of-thought patterns
- **2023**: Structured prompting, prompt templates, and prompt injection awareness
- **2024–2025**: Automated prompt optimization (DSPy, OPRO), prompt caching, prompt compression
- **2026**: Prompt engineering increasingly subsumed by agent harnesses and context engineering; raw prompting less emphasized
