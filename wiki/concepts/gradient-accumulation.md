---
created: 2026-04-28
updated: 2026-04-28
tags: [optimization, training]
sources: 0
---

# Gradient Accumulation

## Definition

Gradient accumulation is a training technique that simulates larger batch sizes when GPU memory limits physical batch size. Instead of updating weights after each batch, gradients are accumulated over multiple forward/backward passes before performing one optimizer step. This allows effective batch sizes of 32 or 64 even when only 1-2 examples fit in memory.

## How It Works

1. Forward/backward on small batch (e.g., 1-2 examples)
2. Accumulate gradients (don't zero them)
3. Repeat for N steps
4. Perform optimizer step with accumulated gradients
5. Zero gradients and repeat

## Key Attributes

- **Memory vs. computation**: Trades compute time for memory efficiency
- **Effective batch size**: Accumulation steps × physical batch size
- **Implementation**: Skip optimizer.zero_grad() until end of accumulation

## Related Concepts

- [[activation-checkpointing|Gradient Checkpointing]] — another memory optimization
- [[gradient-descent|Gradient Descent]] — base optimization algorithm
- [[fine-tuning|Fine-tuning]] — often uses gradient accumulation for large models
- [[training-techniques]] — part of training optimization toolkit

## Sources

- [[transformers-from-scratch]] — describes gradient accumulation for large models

## Use Cases

- Training large models on limited GPU memory
- Fine-tuning LLMs with batch size constraints
- Maintaining training stability with small physical batches