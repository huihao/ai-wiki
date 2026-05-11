---
created: 2026-04-28
updated: 2026-04-28
tags: [efficiency, transformer]
sources: 0
---

# Sparse Attention

## Definition

Sparse attention reduces the quadratic memory cost of standard attention by computing attention only for selected pairs of tokens, creating a sparse attention matrix with O(n√n) elements instead of O(n²). This enables much longer context windows and allows practitioners to specify inductive biases about which tokens should directly interact.

## Key Attributes

- **Sparsity patterns**: Fixed or learned patterns of which tokens attend to which
- **Memory reduction**: O(n√n) instead of O(n²) memory
- **Long context**: Enables thousands of tokens instead of hundreds
- **Inductive bias**: Sparsity structure reflects assumptions about token relations

## Related Concepts

- [[attention-mechanisms|Attention Mechanism]] — dense baseline
- [[deepseek-sparse-attention|DeepSeek Sparse Attention]] — learned sparse patterns
- [[flash-attention|Flash Attention]] — dense but memory-efficient
- [[transformers]] — architecture modification
- [[transformers-from-scratch]] — describes sparse transformers

## Sources

- [[transformers-from-scratch]] — explains sparse transformer approach

## Trade-offs

- **Pros**: Much longer sequences, controllable inductive bias
- **Cons**: May miss useful interactions, patterns not learned
- **Alternative**: Flash Attention keeps dense but optimizes memory