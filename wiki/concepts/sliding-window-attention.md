---
created: 2026-04-28
updated: 2026-04-28
tags: [attention, long-context, transformer]
sources: 1
---

# Sliding Window Attention

## Definition

An attention mechanism that restricts each token to attend only to a fixed-size local neighborhood of recent tokens, rather than the entire prefix. This reduces the quadratic compute and memory cost of long sequences, making it feasible to process very long contexts.

## Key Attributes

- **Local restriction**: Each token attends only to the last W tokens (the "window"), reducing complexity from O(n²) to O(n·W).
- **Global layers**: Many models combine SWA with occasional global attention layers (e.g., Gemma 3 uses a 5:1 local-to-global ratio) to maintain long-range coherence.
- **Long-context efficiency**: Dramatically improves throughput on long documents without architectural rewrites.

## Related Concepts

- [[multi-head-attention-from-scratch|Multi-head attention]] — the full-attention baseline
- [[grouped-query-attention]] — often combined with SWA for maximum inference efficiency
- [[deepseek-sparse-attention]] — learned sparse alternative
- [[hybrid-attention]] — replaces attention layers with linear/state-space modules
- [[llms-practical-guide|Long-context LLMs]] — models optimized for extended context windows

## Sources

- [[a-visual-guide-to-attention-variants-in-modern-llms]] — comparison across models including Gemma 3 and Xiaomi MiMo

## Evolution

- **2023**: Mistral popularizes SWA in open models.
- **2024–2025**: Gemma 3, OLMo 3, and others adopt aggressive SWA patterns with periodic global layers.
- **Current**: A standard ingredient in long-context model recipes, usually paired with GQA.
