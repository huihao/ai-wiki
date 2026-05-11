---
created: 2026-04-29
updated: 2026-04-29
tags: [llm-serving, memory-management, prefill]
---

# Chunked Prefill

Chunked prefill is a technique for processing long prompts in LLM inference when the full sequence does not fit in GPU memory. Instead of processing all input tokens in a single forward pass, the prompt is split into smaller chunks that are processed sequentially. KV states from each chunk are cached and prepended to the next chunk's computation, allowing incremental processing without losing information. This is essential for handling long context windows (e.g., entire codebases pasted into prompts) and enables mixing prefill and decode phases in continuous batching.

## How It Works
- Split the input prompt into chunks that fit in available GPU memory
- Process each chunk with an adapted attention mask that includes cached KV states from prior chunks
- KV cache stores intermediate results, avoiding recomputation
- Chunk size can flexibly adapt to memory constraints

## Related
- [[continuous-batching]]
- [[continuous-batching-from-first-principles]]
- [[kv-cache]]
- [[ragged-batching]]
