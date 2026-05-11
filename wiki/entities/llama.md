---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, product, llm, open-source]
sources: 0
---

# Llama

## Summary

Llama (Large Language Model Meta AI) is a family of open-weight large language models developed by Meta. Released in multiple generations (Llama 1, 2, 3, 3.1, 3.2, 3.3, and speculative 4), Llama has become the most widely used open foundation model family for research and commercial applications. Llama models popularized architectural choices like RMSNorm pre-normalization, SwiGLU activation, rotary positional embeddings (RoPE), and grouped-query attention.

## Key Attributes

- **Developer**: [[meta]] (FAIR team)
- **License**: Llama 2/3 use a custom commercial license with some restrictions
- **Key architectural innovations**: RMSNorm, SwiGLU, RoPE, GQA
- **Model sizes**: Ranging from 1B to 405B parameters (Llama 3.1)
- **Ecosystem**: Hugging Face, Ollama, vLLM, llama.cpp, Unsloth

## Related Entities

- [[meta]] — parent company
- [[huggingface-skills|Hugging Face]] — primary distribution platform
- [[mistral-ai]] — European competitor in open-weight models
- [[deepseek-sparse-attention|DeepSeek]] — Chinese competitor with DeepSeek-V3
- [[qwen]] — Alibaba's open model family

## Related Concepts

- [[rmsnorm]] — normalization used in Llama
- [[swiglu]] — activation function in Llama FFN
- [[rotary-positional-embedding]] — positional encoding in Llama
- [[grouped-query-attention]] — memory-efficient attention in Llama 2/3
- [[quantization]] — Llama is the most quantized model family (GGUF, AWQ, GPTQ)
- [[transfer-learning]] — Llama is the most fine-tuned base model

## Sources

- [[llama|Llama from scratch (or how to implement a paper without crying)]] — implements scaled-down Llama
- [[llm-architecture-gallery]] — Llama architectural fact sheet
- [[inside-vllm]] — Llama serving optimizations
- [[context-kills-vram]] — Llama quantization for consumer GPUs

## Contradictions / Open Questions

- Is Llama truly "open source" given its license restrictions? The OSI says no.
- Will Meta's Llama strategy shift toward more closed models as competition intensifies?
