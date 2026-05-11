---
created: 2026-04-28
updated: 2026-05-09
tags: [architecture, attention, transformer]
sources: 2
---

# Attention mask

## Definition

An attention mask is a mechanism in transformer architectures that controls which positions in the input sequence a model is allowed to attend to during the self-attention computation. Masks work by modifying the attention scores before the softmax operation, typically by setting disallowed positions to negative infinity so they receive zero attention weight. The two primary use cases are padding masks (preventing attention to padded positions in variable-length batches) and causal masks (also called look-ahead masks), which prevent each token from attending to future tokens during autoregressive generation.

## Key Proponents / Critics

- [[anthropic]] — extensive research on attention patterns and their role in model behavior
- [[jakob-uszkoreit]] — co-author of the original "Attention Is All You Need" paper

## Related Concepts

- [[self-attention]] — the mechanism that attention masks control and modify
- [[self-attention-masks]] — detailed exploration of masking patterns in self-attention
- [[transformers]] — the architecture in which attention masks are a core component
- [[causal-attention]] — attention with a causal mask that prevents looking at future tokens
- [[masked-self-attention]] — another term for causal/autoregressive attention masking
- [[attention-mechanisms]] — the broader attention framework that masking operates within
- [[padding-masks]] — masks that prevent attending to padded positions in batched inputs
- [[look-ahead-masks]] — another term for causal masks in decoder-style transformers
- [[kv-cache]] — interacts with attention masks during efficient autoregressive inference

## Related Entities

- [[openai]] — GPT models use causal attention masks for autoregressive generation
- [[google-deepmind]] — BERT introduced bidirectional attention (no causal mask) for encoding

## Sources

- [[how-do-self-attention-masks-work]] — explainer on how self-attention masks function
- [[self-attention-masks-explained]] — detailed walkthrough of attention masking mechanics

## Evolution

- **2017**: "Attention Is All You Need" introduces transformers with causal masking for the decoder
- **2018**: BERT popularizes bidirectional attention (no causal mask) for encoder models
- **2020**: Prefix masking and other specialized mask patterns emerge for controllable generation
- **2023**: FlexAttention (PyTorch) provides flexible mask construction for diverse attention patterns
- **2025**: Attention masks remain a fundamental building block in all transformer architectures
