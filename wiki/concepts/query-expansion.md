---
title: "Query Expansion"
created: "2026-04-28"
tags: [optimization, rag, retrieval]
---

# Query Expansion

## Definition

Technique for improving RAG retrieval by generating multiple variations of a user's query. Addresses the challenge that user queries may not match terminology used in knowledge base.

## Purpose

Bridges the gap between user language and document language by creating multiple query variations. Assumption: at least one variation will help retrieve relevant documents.

## Implementation

Uses sequence-to-sequence models like BART to generate variations:

1. Encode query into hidden state
2. Decode back to text with variations
3. Use beam search with high temperature (>1.5) for diversity
4. Generate multiple reformulations (typically 2-5)

## Example Models

- `facebook/bart-large` - Sequence-to-sequence for conditional generation
- Can use other generative models tuned for paraphrasing

## Technical Approach

```python
def reformulate_query(query, n=2):
    inputs = tokenizer(query, return_tensors="pt")
    outputs = model.generate(
        **inputs,
        max_length=64,
        num_beams=10,
        num_return_sequences=n,
        temperature=1.5,  # High temperature for diversity
        top_k=50,
        do_sample=True
    )
    reformulations = [tokenizer.decode(output, skip_special_tokens=True)
                      for output in outputs]
    return [query] + reformulations
```

## Key Parameters

- **Temperature**: Higher values (>1.5) increase variation diversity
- **Beam search**: Multiple candidates explored simultaneously
- **Top-k sampling**: Limits candidate pool for controlled randomness

## Benefits

- Handles terminology mismatches
- Works with ambiguous queries
- Increases retrieval recall
- Complements dense embedding approaches

## Limitations

- Adds computational overhead
- May generate irrelevant variations
- Requires quality generation model
- Not always necessary with good embedding models

## When to Use

- Domain-specific terminology mismatch
- Short, ambiguous queries
- High-quality embedding unavailable
- Recall is critical

## Related Techniques

- [[hybrid-retrieval|Hybrid Retrieval]]
- [[multi-stage-retrieval|Multi-Stage Retrieval]]
- [[re-ranking|Re-ranking]]

## Sources

- [[advanced-techniques-build-rag-system|Advanced Techniques to Build Your RAG System]]