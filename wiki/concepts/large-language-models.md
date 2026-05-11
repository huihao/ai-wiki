---
created: 2026-04-28
updated: 2026-04-28
tags: [ai, llm]
sources: 0
---

# Large Language Models

## Definition

Large language models (LLMs) are neural networks — typically based on the Transformer architecture — trained on vast text corpora to model the statistical structure of language. By predicting the next token in a sequence, LLMs learn to generate coherent text, answer questions, write code, translate languages, and perform countless downstream tasks with minimal task-specific training. "Large" generally refers to models with billions to hundreds of billions of parameters.

## Key Attributes

- **Architecture**: Predominantly decoder-only Transformers (GPT, Llama, Claude, Qwen)
- **Training**: Self-supervised next-token prediction on internet-scale text
- **Scale**: Ranging from ~1B (small language models) to 100B+ parameters (frontier models)
- **Key capabilities**: Text generation, reasoning, code synthesis, instruction following, in-context learning
- **Limitations**: Hallucination, context rot, reasoning gaps, training data cutoff

## Related Concepts

- [[train-foundation-model-ruiz|Foundation Model]] — LLMs are the canonical example of foundation models
- [[transformers]] — the neural architecture underlying modern LLMs
- [[small-language-models]] — the lower end of the LLM spectrum
- [[understanding-reasoning-llms|Reasoning LLMs]] — models fine-tuned for extended chain-of-thought reasoning
- [[inference-time-compute-scaling]] — giving LLMs more compute at inference to improve outputs
- [[tokenization]] — how LLMs represent text as discrete units
- [[context-engineering|Context Window]] — the maximum sequence length an LLM can process

## Sources

- [[an-intuitive-guide-to-how-llms-work]] — probability-first explanation
- [[what-is-chatgpt-doing-wolfram|What Is ChatGPT Doing … and Why Does It Work?]] — Wolfram's comprehensive deep-dive
- [[all-the-transformer-math-you-need-to-know]] — scaling and performance math
- [[ai-engineering|The 2025 AI Engineering Reading List]] — curated papers on LLM capabilities

## Evolution

- **2018**: BERT and GPT-1 establish the pre-training + fine-tuning paradigm
- **2019**: GPT-2 demonstrates emergent capabilities at scale
- **2020**: GPT-3 shows few-shot in-context learning
- **2022**: ChatGPT adds RLHF and instruction tuning for conversational use
- **2024**: GPT-4, Claude 3, Gemini 1.5 push multimodal and long-context capabilities
- **2025–2026**: Reasoning models (o1, DeepSeek-R1) and agentic LLMs become the frontier
