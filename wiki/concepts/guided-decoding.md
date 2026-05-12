---
created: 2026-04-28
updated: 2026-05-09
tags: [generation, inference, structured-output]
sources: 0
---

# Guided decoding

## Definition

Guided decoding is a technique for constraining LLM text generation to conform to specific output formats during inference, such as JSON schemas, regular expressions, or context-free grammars. It works by masking out token probabilities at each generation step so that only tokens consistent with the desired format are considered. This ensures that the model's output is always valid according to the specified structure, eliminating the need for post-processing or retrying on invalid outputs. Guided decoding is essential for integrating LLMs into deterministic software systems that require structured data.

## Key Proponents / Critics

- [[anthropic]] — uses structured output techniques in the Claude API for reliable JSON generation
- [[openai]] — provides JSON mode and function calling as guided decoding mechanisms

## Related Concepts

- [[structured-outputs]] — the general pattern of constraining LLM output to structured formats
- [[structured-generation]] — generating text that conforms to a formal grammar or schema
- [[logits-processor]] — the mechanism through which guided decoding modifies token probabilities
- [[logits-masking]] — the core operation of guided decoding: masking disallowed tokens
- [[grammar-based-output-control]] — using formal grammars to guide generation
- [[temperature-parameter]] — interacts with guided decoding since the mask is applied before sampling
- [[json-generation]] — a primary use case for guided decoding
- [[function-calling]] — structured function call outputs often rely on guided decoding or constrained generation
- [[prompting]] — guided decoding extends prompting by adding structural constraints on output

## Related Entities

- [[openai]] — pioneered structured output and JSON mode in model APIs
- [[anthropic]] — offers tool_use with structured JSON output in the Claude API

## Sources

- No source pages currently link to this concept

## Evolution

- **2022**: Earliest constrained decoding methods appear for code generation tasks
- **2023**: Outlines library popularizes grammar-based guided decoding for open-source models
- **2024**: Major API providers (OpenAI, Anthropic) offer native structured output support
- **2025**: Guided decoding is a standard feature in model serving frameworks like vLLM and TGI
