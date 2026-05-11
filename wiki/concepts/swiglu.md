---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# SwiGLU

## Definition

Swish-Gated Linear Unit. An activation function used in modern transformer architectures (notably Llama and PaLM) that combines a Swish-activated gate with a linear projection via element-wise multiplication. Defined as SwiGLU(x) = Swish(xW + b) ⊙ (xV + c).

## Key Proponents / Critics

- **Originators**: Noam Shazeer (Google, 2020) in the GLU Variants paper
- **Adopters**: Meta AI (Llama), Google (PaLM)

## Related Concepts

- GLU — Gated Linear Unit family of activation functions
- Swish — self-gated activation function
- [[comprehensive-rag-ollama-langchain|Llama]] — model using SwiGLU
- [[feed-forward-network]] — transformer sub-layer where SwiGLU is applied

## Sources

- [[llama|Llama from scratch]] — implementation of SwiGLU in PyTorch

## Evolution

- Emerged from research on gated activation functions as a more expressive alternative to ReLU in transformer feed-forward layers.
- Standard in most large open-weight models since Llama (2023).
