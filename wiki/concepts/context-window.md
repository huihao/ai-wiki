---
created: 2026-04-28
updated: 2026-05-09
tags: [inference, llm, transformer]
sources: 4
---

# Context window

## Definition

The context window (also called context length or context size) is the maximum number of tokens an LLM can process in a single forward pass, encompassing both the input prompt and the generated output. It determines how much text the model can "see" at once, directly limiting conversation history, document length, and the amount of information available for in-context learning. Context windows have expanded dramatically, from 512 tokens in early models to over 2 million tokens in recent systems. Longer context windows require more computation and memory, particularly due to the quadratic cost of the [[attention-mechanisms]].

## Key Proponents / Critics

- [[ilya-sutskever]] — early advocate for scaling context windows as a path to more capable models
- [[noam-shazeer]] — co-author of papers on efficient attention mechanisms that enable longer contexts
- [[chenhao-tan]] — researcher studying long-context capabilities and their practical limits

## Related Concepts

- [[transformers]] — the architecture whose [[self-attention]] mechanism defines the context window
- [[attention-mechanisms]] — the core computation whose cost scales with context window length
- [[context-window-extension]] — techniques for extending models beyond their original context length
- [[context-window-management]] — strategies for managing limited context in production systems
- [[kv-cache]] — the memory structure that grows linearly with context window size during inference
- [[long-context-llms]] — models specifically designed or fine-tuned for extended context windows
- [[sliding-window-attention]] — an efficiency technique that limits attention to local windows
- [[positional-encoding]] — the mechanism that encodes token positions within the context window
- [[rope]] — Rotary Position Embeddings, a position encoding method that supports longer contexts via interpolation
- [[needle-in-a-haystack]] — a benchmark for evaluating long-context retrieval performance
- [[few-shot-learning]] — longer contexts enable more in-context examples

## Related Entities

- [[anthropic]] — developed Claude with 200K token context, later expanded to 1M+
- [[openai]] — GPT-4 Turbo supports 128K tokens; GPT-4.1 supports 1M tokens
- [[google]] — Gemini models support up to 2M token context windows
- [[deepseek]] — DeepSeek models support 128K+ context windows

## Sources

- [[understanding-llm-context-windows]] — deep dive into context window mechanics and limitations
- [[llm-context-scaling-512-to-2m]] — analysis of how context windows have scaled from 512 to 2M tokens
- [[how-llms-scaled-from-512-to-2m-context]] — technical survey of context extension methods
- [[context-kills-vram]] — practical analysis of memory costs associated with long context windows

## Evolution

- **2017**: Original transformer uses 512-token context window
- **2020**: GPT-3 supports up to 2,048 tokens
- **2023**: GPT-4 supports 8,192 tokens (32K variant); Claude supports 100K tokens
- **2024**: Claude expands to 200K tokens; GPT-4 Turbo supports 128K tokens; Gemini 1.5 supports up to 1M tokens
- **2025**: Gemini 2.0 and Claude support 1M-2M token contexts; long-context becomes standard for frontier models
- **2025**: Research focuses on context compression, caching, and efficient long-context inference rather than raw length
