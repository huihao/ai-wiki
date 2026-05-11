---
created: 2026-04-28
updated: 2026-04-28
tags: [source, transformer, attention, tutorial, pytorch, llm]
sources: 1
---

# Understanding and Coding Self-Attention, Multi-Head Attention, Causal-Attention, and Cross-Attention in LLMs

## Metadata

- **Author:** [[sebastian-raschka]]
- **Date:** 2024-01-14
- **URL:** https://magazine.sebastianraschka.com/p/understanding-and-coding-self-attention
- **Access Date:** 2026-04-27
- **Raw File:** `raw/ai/Understanding and Coding Self-Attention, Multi-Head Attention, Causal-Attention, and Cross-Attention.md`

## Summary

An extension of Raschka's earlier self-attention tutorial, this article adds implementations of multi-head attention, causal (masked) self-attention, and cross-attention. Provides PyTorch code for each variant and explains when each is used. Causal self-attention is critical for GPT-style decoder-only models; cross-attention is used in encoder-decoder architectures and diffusion models.

## Key Takeaways

- Self-attention uses three weight matrices (W_q, W_k, W_v) to project inputs into query, key, value vectors
- Attention weights = softmax(QK^T / √d_k); scaling prevents numerical instability
- Multi-head attention: multiple parallel attention heads, each learning different relationships
- Each head can focus on different parts of the sequence, enhancing representational diversity
- Causal self-attention masks future tokens so prediction for position i only uses positions 1..i
- Efficient causal masking: replace upper-triangle attention scores with -inf before softmax
- Cross-attention uses queries from one sequence and keys/values from another
- Cross-attention used in original transformer (encoder-decoder) and Stable Diffusion

## Entities Mentioned

- [[sebastian-raschka]] — author
- [[openai]] — GPT-4 mentioned
- [[meta]] — Llama mentioned
- [[stability-ai]] — Stable Diffusion's use of cross-attention

## Concepts Mentioned

- [[self-attention]] — attention within the same sequence
- [[multi-head-attention-from-scratch|multi-head attention]] — parallel attention heads
- [[self-attention|causal self-attention]] — masked attention for autoregressive models
- [[cross-attention]] — attention between two different sequences
- [[self-attention|scaled dot-product attention]] — the standard attention computation
- [[self-attention|attention mask]] — preventing access to future tokens
- [[softmax]] — normalization for attention weights
- [[transformer-architecture|transformer]] — the architecture using these mechanisms
- [[gpt]] — decoder-only model using causal attention
- [[stable-diffusion-project-creating-illustration|Stable Diffusion]] — uses cross-attention between image and text

## Raw Notes

- MultiHeadAttentionWrapper class composes multiple SelfAttention instances
- Each head processes independently, results concatenated along last dimension
- Llama 2 7B uses 32 attention heads
- Causal mask via torch.triu: keeps elements on and above diagonal
- masked_fill replaces upper-triangle with -torch.inf
- e^(-inf) → 0, so masked positions contribute nothing after softmax
- Cross-attention: keys and values can have different number of rows than queries
- In Stable Diffusion: cross-attention between U-Net image and text prompts
- Code is illustrative; FlashAttention recommended for production training

## Questions / Follow-ups

- How does FlashAttention's memory-efficient attention differ from this naive implementation?
- What are the architectural differences between causal attention in GPT vs Llama?
