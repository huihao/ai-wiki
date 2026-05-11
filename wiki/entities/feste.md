# Feste

**Entity type:** Project/Model

**Type:** GPT-2 style transformer implementation

**Language:** Rust

**Author:** [[jeremy-andrews]], [[tag1]]

**Training data:** Shakespeare's complete works

---

## Summary

Complete GPT-2 style transformer built from first principles in Rust. Named after the fool in Shakespeare's Twelfth Night. Multi-part series documenting implementation of every component—tokenization, tensor operations, architecture, training infrastructure, and training at scale.

## Architecture

**Base:** GPT-2 (OpenAI 2019)

**Components:**

- Tokenizer: [[byte-pair-encoding]] implementation
- Tensor operations: Matrix multiplication, broadcasting, activations
- Model: Embeddings, multi-head attention, layer normalization, residual connections, MLP
- Training: Backpropagation, optimization, loss functions
- Multiple scales: tiny, small, medium, production-scale

## Model Configurations

| Config | Dimensions | Layers | Heads | Context | Purpose |
|--------|------------|--------|-------|---------|---------|
| tiny | 64 | 2 | 1 | — | Debugging, <5ms forward pass |
| small | 128 | 3 | 1 | — | Speed/capability balance, ~10ms |
| medium | 256 | 4 | 4 | — | Embedding/head splitting demo, ~28ms |
| GPT-2 Small | 768 | 12 | 12 | 1024 | 87M parameters, production-scale |

## Training Data

- Shakespeare's complete works (Project Gutenberg)
- 5,422,721 bytes (~5.5MB)
- Public domain (anyone can reproduce from scratch)

## Key Features

**Educational philosophy:**

- Every component implemented from scratch
- No PyTorch/TensorFlow abstractions
- Understand every operation (not just API calls)
- Clarity over performance optimization

**Rust advantages:**

- Low-level memory control
- Borrow checker forces clear ownership thinking
- Performance discipline from production experience
- Debuggable (see every intermediate result)

**Performance:**

- Parallel BPE training (Rayon, 2-3x speedup)
- Sampling optimization for large vocabularies
- M-series Mac: tiny <5ms, small ~10ms, medium ~28ms

## Implementation Details

**Tokenization:**

- Byte Pair Encoding (vocab sizes: 256, 512, 1024, 1536, 20,534)
- Hex string representation (debuggable)
- Sequential merge application (order matters)

**Architecture:**

- Token + position embeddings (element-wise addition)
- 12 transformer blocks (attention + MLP)
- Layer normalization (before attention, before MLP)
- Residual connections (information bypass)
- Causal masking (prevent future peeking)

**Forward pass:**

- Token IDs → embeddings → 12 layers → final normalization → vocabulary logits
- Output: [batch, seq_len, vocab_size] scores

## Series Structure

1. Part 1: Tokenization (December 8, 2025)
2. Part 2: Tensor Operations
3. Part 3: Model Architecture (January 12, 2026)
4. Part 4: Training Infrastructure
5. Part 5: Training at Scale (A Witless Fool)
6. Part 6: (TBD)

## Sources

- [[part1-tokenization-building-llm-from-scratch-rust]]
- [[part3-model-architecture-building-llm-from-scratch-rust]]

## References

- GPT-2: Base architecture (OpenAI 2019)
- Rust: Implementation language
- Shakespeare: Training corpus