---
created: 2026-04-29
updated: 2026-04-29
tags: [batching, inference, llm-serving]
---

# Ragged Batching

Ragged batching (also called variable-length batching) is a technique for batching LLM inference requests without padding. Instead of adding a batch dimension that requires all sequences to be the same length, ragged batching concatenates all token sequences into a single flat tensor and uses attention masks to prevent cross-sequence token interaction. This eliminates the padding waste inherent in traditional padded batching, where shorter sequences must be filled with dummy tokens to match the longest sequence in the batch.

## How It Works
- Concatenate all prompt token sequences into one flat sequence
- Apply block-diagonal attention masks so tokens only attend within their own sequence
- Combine with dynamic scheduling: finished sequences are immediately replaced with new ones
- Combined with chunked prefill, allows mixing prefill and decode phases in the same batch

## Related
- [[continuous-batching]]
- [[continuous-batching-from-first-principles]]
- [[chunked-prefill]]
