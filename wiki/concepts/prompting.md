---
created: 2026-04-29
updated: 2026-05-09
tags: [llm, nlp, prompting]
sources: 2
---

# Prompting

## Definition

Prompting is the technique of providing instructions and/or examples to an LLM in the input context to guide its behavior without parameter updates. The model processes the prompt and generates outputs conditioned on the provided text. LLMs are highly sensitive to prompt phrasing, formatting, and label choices -- even semantically equivalent prompts can produce drastically different outputs. Prompting is the foundation of in-context learning, where the model learns task behavior from examples provided in the prompt rather than through weight updates.

## Key Proponents / Critics

- [[openai]] — developed GPT models that popularized prompt engineering as a primary interface
- [[anthropic]] — researches prompt sensitivity and develops tools for robust prompting

## Related Concepts

- [[chain-of-thought]] — prompting technique that elicits step-by-step reasoning before the final answer
- [[in-context-learning]] — the mechanism by which LLMs learn from examples provided in the prompt
- [[prompt-injection]] — a security attack that exploits the prompt interface to hijack model behavior
- [[prompt-engineering]] — the systematic practice of designing effective prompts for LLMs
- [[temperature-parameter]] — interacts with prompting since temperature controls output diversity given a prompt
- [[llm]] — large language models are the systems that prompting targets
- [[few-shot-learning]] — prompting with a small number of examples as demonstrations
- [[prompt-caching]] — optimization technique for reducing the cost of repeated prompts
- [[guided-decoding]] — constraining generation output to structured formats, often combined with prompting

## Related Entities

- [[openai]] — popularized prompt engineering through ChatGPT and API documentation
- [[nano-banana]] — prompt engineering educational content

## Sources

- [[nano-banana-prompt-engineering]] — prompt engineering guide covering techniques and best practices
- [[anthropic-api-documentation]] — official prompt engineering guidance from Anthropic

## Evolution

- **2020**: GPT-3 paper demonstrates few-shot prompting and in-context learning
- **2021**: Prompt engineering emerges as a distinct practice with the growth of large language models
- **2022**: Chain-of-thought prompting (Wei et al.) shows prompting can elicit reasoning
- **2023**: System prompt engineering becomes critical for production LLM applications
- **2024**: Prompting matures with structured prompting, prompt caching, and tool-use patterns
- **2025**: Prompting is refined alongside agent-based architectures where system prompts encode complex behaviors
