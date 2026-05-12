---
created: 2026-04-30
updated: 2026-05-09
tags: [architecture, deep-learning]
sources: 14
---

# Transformers

## Definition

The Transformer is a neural network architecture introduced in the 2017 paper "Attention Is All You Need" that processes all tokens in a sequence in parallel using self-attention mechanisms, eliminating the recurrence and sequential processing required by earlier architectures like RNNs and LSTMs. It has become the foundational architecture for nearly all modern large language models (GPT, BERT, Llama, Gemini) and has been extended to vision, audio, and multimodal tasks. The architecture consists of stacked encoder and/or decoder blocks, each containing multi-head self-attention layers and position-wise feed-forward networks, connected by residual connections and layer normalization.

## Key Aspects

- **Self-attention mechanism**: The core innovation. For each token, the model computes Query, Key, and Value vectors via learned weight matrices. Attention scores are computed as scaled dot-products of Queries and Keys, passed through softmax, and used to create weighted sums of Values. This allows any token to directly attend to any other token regardless of distance, achieving O(1) path length for relating any two positions.
- **Multi-head attention**: The original architecture uses 8 parallel attention heads, each with separate Q/K/V weight matrices. Different heads learn different types of relationships (grammatical, semantic, positional) simultaneously. Outputs are concatenated and linearly projected. This provides multiple representation subspaces for richer feature extraction.
- **Encoder-decoder structure**: The original Transformer uses a stack of 6 encoder layers and 6 decoder layers. Encoders apply self-attention over the full input. Decoders use masked self-attention (preventing access to future tokens) plus encoder-decoder cross-attention. Modern decoder-only models (GPT, Llama) use only the decoder stack with causal masking.
- **Feed-forward networks (FFN)**: Each transformer block includes a position-wise two-layer MLP that expands the hidden dimension (typically 4x), applies a nonlinear activation (GELU standard), then contracts back. FFNs serve as the "computational engine" that transforms attention's contextual signals into task-relevant features. They dominate per-token compute and memory costs.
- **Positional encoding**: Since transformers process all positions in parallel, they lack inherent order information. The original paper uses sinusoidal functions at geometrically progressing frequencies, where for any fixed offset k, PE(pos+k) can be represented as a linear function of PE(pos) via block-diagonal rotation matrices. Modern models use learned positional embeddings, Rotary Position Embeddings (RoPE), or ALiBi. Position information is added to token embeddings before the first layer.
- **Residual connections and layer normalization**: Every sub-layer (attention and FFN) is wrapped with a residual connection and layer normalization (Pre-LN in modern models). These are essential for training stability in deep stacks -- residual connections prevent vanishing gradients and help propagate positional information through the network.
- **Parallelization advantage**: Unlike RNNs which must process tokens sequentially, transformers process all tokens simultaneously, enabling massive parallelization on GPU/TPU hardware. This was the key enabler for scaling to billions of parameters.
- **Scaling and evolution**: The architecture has scaled from 65M parameters (original) to trillions. Key variants include encoder-only (BERT), decoder-only (GPT), and encoder-decoder (T5). Modern optimizations include FlashAttention, Grouped Query Attention, Mixture-of-Experts FFNs, and sliding window attention.

## Variants

| Variant | Structure | Notable Examples |
|---|---|---|
| Encoder-decoder | Full stack | Original Transformer, T5, BART |
| Encoder-only | Stack of encoders | BERT, RoBERTa, ModernBERT |
| Decoder-only | Stack of decoders | GPT, Llama, Claude, Gemini |

Modern LLMs are almost exclusively decoder-only.

## Related Concepts

- [[self-attention]] -- the fundamental attention mechanism within transformers
- [[multi-head-attention]] -- parallel attention heads for diverse relationship learning
- [[positional-encoding]] -- injecting sequence order into the parallel architecture
- [[feed-forward-network]] -- position-wise nonlinear transformation layers
- [[residual-connections]] -- skip connections enabling deep stack training
- [[layer-normalization]] -- training stabilization technique
- [[encoder-decoder-architecture]] -- sequence-to-sequence transformer structure
- [[attention-mechanisms]] -- the broader family of attention operations
- [[transformers]] -- architectural details and design patterns
- [[self-attention-masks]] -- masking for causal and padding patterns

## Sources

- [[everything-about-transformers]] -- comprehensive visual guide tracing evolution and five core mechanisms
- [[the-illustrated-transformer]] -- canonical visual introduction by Jay Alammar
- [[transformer-architecture-attention-is-all-you-need]] -- detailed exploration of the attention mechanism
- [[what-is-chatgpt-doing-and-why-does-it-work]] -- Stephen Wolfram's explanation of LLM fundamentals
- [[dive-into-deep-learning]] -- interactive textbook covering transformers in educational context
- [[explain-feed-forward-network-transformer-block]] -- engineering perspective on FFN role
- [[transformer-architecture-the-positional-encoding]] -- mathematical deep dive into sinusoidal encoding
- [[transformer-explainer-visually-explained]] -- interactive GPT-2 visualization tool
- [[brandon-rohrer-blog]] -- ML fundamentals and transformer tutorials
- [[jay-allamar]] -- the Illustrated Transformer series
- [[google-brain]] -- original research team behind the architecture
- [[feed-forward-networks]] -- position-wise MLP components
- [[gelu]] -- activation function used in transformer FFNs
- [[mixed-precision-training]] -- optimization technique for transformer training
- [[log]] -- transformer-related observations and notes
- [[linear-relationships-positional-encoding]] -- positional encoding linear relationship proofs
- [[transformer-novel-neural-network-architecture-language-understanding]] -- original paper analysis
- [[understanding-and-coding-self-attention-mechanism]] -- self-attention implementation deep dive
