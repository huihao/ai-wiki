---
created: 2026-04-28
updated: 2026-05-09
tags: [attention, positional-encoding, transformer]
sources: 4
---

# RoPE

## Definition
Rotary Position Embedding (RoPE) is a method of encoding positional information in Transformer models by applying rotation matrices to query and key vectors in the attention mechanism. Rather than adding positional embeddings to token representations (as in absolute positional encoding), RoPE rotates each element of the query and key vectors by an angle proportional to its position and frequency. This causes the dot product between two tokens to depend naturally on their relative distance, enabling the model to generalize to sequence lengths unseen during training without requiring learned positional embeddings.

## Key Proponents / Critics
- Jiaming Su — original author of the RoPE paper (Su et al., 2021)
- [[meta-ai]] — RoPE is used in LLaMA, LLaMA 2, and LLaMA 3 models
- [[deepseek]] — DeepSeek models use RoPE with modifications for extended context

## Mathematical Foundation

### Rotation Matrix
Each dimension pair rotated by angle proportional to position:
```
R(mθ_i) = [[cos(mθ_i), -sin(mθ_i)],
           [sin(mθ_i),  cos(mθ_i)]]
```
- m: position
- θ_i = 10000^(-2i/d): base frequency for dimension pair i
- Lower dimensions rotate faster (larger θ_i)
- Higher dimensions rotate slower (smaller θ_i)

### Inner Product Formulation
Query-Key attention encodes relative position:
```
⟨f_q(x_m, m), f_k(x_n, n)⟩ = g(x_m, x_n, m-n)
```
Inner product depends on embeddings and relative distance m-n.

## Key Properties

### Multi-Scale Frequency Spectrum
- High frequencies: capture local, short-range relationships
- Low frequencies: capture long-range dependencies

### Natural Attention Decay
- Nearby tokens: small rotation difference, high inner product
- Distant tokens: many full rotations, decreasing inner product

### Sequence Length Flexibility
Can theoretically extrapolate to arbitrary positions (though practical limitations exist — models memorize position encodings rather than learning rotation mathematics).

## Related Concepts
- [[positional-encoding]] — RoPE is a specific form of positional encoding replacing absolute embeddings
- [[rope]] — the full name; RoPE is the common abbreviation
- [[attention-mechanisms]] — RoPE is applied within the attention computation, not as an input embedding
- [[relative-position-attention]] — RoPE inherently encodes relative positions through its rotation property
- [[position-interpolation]] — a technique to extend RoPE-trained models to longer contexts by scaling position indices
- [[long-context-llms]] — RoPE's relative position encoding enables extrapolation to longer sequences
- [[ntk-aware-scaling]] — advanced methods for extending RoPE to longer context windows

## Related Entities
- [[meta-ai]] — LLaMA family uses RoPE as the default positional encoding
- [[hugging-face]] — RoPE is widely supported in HuggingFace Transformers

## Sources
- [[transformer-architecture-the-positional-encoding]] — covers RoPE as a modern positional encoding method
- [[attention-is-all-you-need-nvidia]] — discusses RoPE in the context of modern attention implementations
- [[from-kevin-bacon-to-hnsw]] — references positional encoding methods
- [[a-visual-guide-to-attention-variants-in-modern-llms]] — covers RoPE as a key attention variant

## Evolution
- **2021**: Su et al. propose RoPE, encoding relative position via rotation matrices on Q and K
- **2022**: RoPE adopted by GPT-NeoX (EleutherAI) and PaLM (Google)
- **2023**: LLaMA (Meta) makes RoPE the de facto standard for open-source LLMs
- **2023**: Position interpolation (Chen et al.) extends RoPE to longer contexts without retraining
- **2024**: YaRN, NTK-aware scaling, and Code LLaMA's modified RoPE push context windows to 100k+
