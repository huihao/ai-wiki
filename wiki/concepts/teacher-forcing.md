---
created: 2026-04-28
updated: 2026-04-28
tags: []
---

# Teacher Forcing

## Definition

Training technique for sequence-to-sequence models where the entire ground-truth target sequence is fed to the decoder in a single forward pass, rather than autoregressively generating tokens one-by-one based on previous predictions.

## Key Mechanism

### Training Mode

- Single forward pass through decoder (regardless of sequence length)
- Teacher (training process) force-feeds entire batch of ground-truth target sequences
- All next-token predictions computed at once
- Average loss calculated across all predictions

### Critical Details

Each token prediction based on previous **ground-truth tokens**, not previously predicted tokens.

Attention mask restricts decoder self-attention to prevent attending to future tokens (the labels).

### Contrast with Inference

Inference mode:
- Autoregressive prediction (one token at a time)
- Each prediction based on previously predicted tokens
- Output distribution for last token index used for next prediction
- Previous output distributions "thrown away"

Training mode equivalent to autoregressive decoding using only ground-truth tokens as input, but much more efficient.

## Efficiency

Single forward pass provides all predictions simultaneously vs. N forward passes for N-token sequence.

However, creates discrepancy between training (ground-truth context) and inference (predicted context), known as "exposure bias."

## Applications

- Translation models
- Autoregressive language models (GPT-3 and similar)
- Sequence-to-sequence tasks

## Relationship to Speculative Decoding

Teacher forcing enables efficient training, while speculative decoding speeds up inference by proposing multiple tokens and verifying with large model.

## Benefits

- Dramatically faster training than autoregressive approach
- Better gradient signal across entire sequence
- Enables parallel computation across positions

## Limitations

- Exposure bias: model never exposed to its own mistakes during training
- Training-inference mismatch: predictions based on ground-truth vs model outputs

## Related Concepts

- [[transformer-implementation-details|Transformer Implementation Details]] — Where this technique is standard
- [[autoregressive-generation|Autoregressive Generation]] — Inference counterpart
- [[exposure-bias|Exposure Bias]] — Known limitation of teacher forcing
- [[speculative-decoding|Speculative Decoding]] — Technique to speed up inference

## Sources

- [[implementing-a-transformer-from-scratch|Implementing a Transformer From Scratch]] — Detailed explanation of teacher forcing in transformers
