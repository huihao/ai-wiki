---
created: 2026-04-28
updated: 2026-04-28
tags: [architecture, transformer]
sources: 0
---

# Positional Encoding

## Definition

Positional encoding is the mechanism by which transformer models incorporate sequence order information into their otherwise permutation-invariant attention operations. Since self-attention processes all tokens simultaneously and has no inherent notion of position, positional encodings inject position-dependent signals into token embeddings. Methods range from fixed sinusoidal encodings to learned embeddings, rotary embeddings (RoPE), and ALiBi.

## Key Proponents / Critics

- **Original**: Vaswani et al. (2017) — sinusoidal positional encodings
- **RoPE**: Su et al. (2021) — rotary positional embedding, adopted by Llama and most modern models
- **ALiBi**: Press et al. (2021) — penalizes attention scores based on distance, enables extrapolation
- **Long-context innovations**: YaRN, NTK-aware scaling, Position Interpolation

## Related Concepts

- [[rope]] — dominant method in modern open-weight models
- [[transformers]] — positional encoding is a core component
- [[model-scaling]] — context length scaling depends on positional encoding design
- [[llm-context-scaling-512-to-2m|LLM context scaling]] — techniques like YaRN and NTK scaling extend context windows
- [[attention-mechanisms]] — positional encoding complements attention

## Sources

- [[llm-context-scaling-512-to-2m|How LLMs Scaled from 512 to 2M Context: A Technical Deep Dive]] — evolution of positional encodings
- [[positional-encoding|Linear Relationships in the Transformer’s Positional Encoding]] — mathematical proof of sinusoidal encoding properties
- [[projective-ray-positional-encoding|Projective Ray Positional Encoding for Multi-view Attention]] — novel positional encoding for vision
- [[llama|Llama from scratch (or how to implement a paper without crying)]] — implements RoPE

## Evolution

- **2017**: Sinusoidal encodings in the original Transformer
- **2019**: Learned positional embeddings (BERT, GPT-2)
- **2021**: RoPE and ALiBi introduced; RoPE becomes dominant by 2023
- **2023–2024**: Position Interpolation, NTK-aware scaling, YaRN enable 128K+ context
- **2025–2026**: Multi-modal positional encodings (vision + text), RoPE scaling to 2M+ tokens
