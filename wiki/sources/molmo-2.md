---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Molmo 2: State-of-the-art video understanding, pointing, and tracking

## Metadata

- **Author**: Ai2 (Allen Institute for AI)
- **Date**: 2025-12-11
- **URL**: https://allenai.org/blog/molmo2
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/platform/Molmo 2_ State-of-the-art video understanding, pointing, and tracking _ Ai2.md`

## Summary

Ai2 releases Molmo 2, a family of open vision-language models (8B, 4B, and 7B fully-open variants) that advance video understanding, pointing, tracking, and dense captioning. Trained on less than one-eighth the video data of Meta's PerceptionLM while outperforming it on key benchmarks.

## Key Takeaways

- Three variants: **Molmo 2 (8B)** (Qwen 3-based, best for video grounding), **Molmo 2 (4B)** (efficiency), **Molmo 2-O (7B)** (fully open, Olmo-based).
- Molmo 2 (8B) outperforms the original Molmo (72B) on image pointing and grounding benchmarks.
- State-of-the-art video tracking; outperforms Gemini 3 Pro and specialized open trackers.
- Trained on only 9.19M videos vs PerceptionLM's 72.5M, demonstrating the value of careful curation.
- Supports video pointing, multi-object tracking with persistent IDs, dense captioning, anomaly detection, and subtitle-aware QA.
- Architecture: vision encoder → connector (with timestamps/image indices) → Qwen 3 or Olmo LLM backbone.
- Training: two-stage (pretraining for alignment/grounding, then SFT on multimodal mixture).
- Nine new open datasets released for video captioning, QA, pointing, and tracking.
- Full codebase, checkpoints, and data are open source under Apache 2.0.

## Entities Mentioned

- [[trace-declarative-modeling-for-the-ai-age|Allen Institute for AI]] — Creator of Molmo 2.
- [[qwen]] — Backbone for 8B and 4B variants.
- [[molmo-2|Olmo]] — Backbone for fully open 7B variant.
- [[google]] — Gemini 3 Pro comparison.
- [[meta]] — PerceptionLM comparison.
- [[huggingface-skills|Hugging Face]] — Model and data distribution.

## Concepts Mentioned

- [[large-language-models|Vision-language models]] — Multimodal models understanding images and video.
- Video grounding — Pinpointing events in space and time.
- Object tracking — Following objects across occlusions and re-entries.
- Dense captioning — Rich narrative descriptions of video clips.
- [[deepseek-sparse-attention|Sparse autoencoders]] — Not directly mentioned, but related to interpretability work at Ai2.
- Connector — Lightweight module interleaving visual tokens with text and timing.

## Raw Notes

- SlowFast-style inference: high resolution on key frames, lower on others, for long-video efficiency.
- Bi-directional attention between visual tokens boosts multi-image and video performance.
- Token-weighting scheme and sequence packing used during fine-tuning.

## Questions / Follow-ups

- How does Molmo 2's video understanding compare to proprietary models like GPT-5 or Gemini 2.5 Pro on long-video tasks?
- Can the Molmo 2 training pipeline be adapted for domain-specific video understanding (e.g., medical, industrial)?
