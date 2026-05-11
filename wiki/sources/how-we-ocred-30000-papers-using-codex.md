---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# How we OCR'ed 30,000 papers using Codex, open OCR models and Jobs

## Metadata

- **Author**: Niels Rogge
- **Date**: 2026-04-07
- **URL**: https://huggingface.co/blog/nielsr/ocr-papers-jobs
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/How we OCR'ed 30,000 papers using Codex, open OCR models and Jobs.md`

## Summary

A Hugging Face blog post describing how 27,000 arXiv papers without HTML versions were OCR'd to Markdown using the Chandra-OCR-2 open model, orchestrated by OpenAI Codex, and run on Hugging Face Jobs GPU infrastructure. Total cost was approximately $850 via 16 parallel L40S jobs.

## Key Takeaways

- Motivation: ~27,000 Hugging Face papers lacked arXiv HTML, preventing HuggingChat integration.
- OCR model: Chandra-OCR 2 by Datalab (best on OlmOCRBench at time of writing).
- Coding agent: OpenAI Codex (via Codex Desktop app) wrote the batch processing script.
- Infrastructure: Hugging Face Jobs with vLLM on 16× L40S GPUs in parallel.
- Cost: ~$850 via Jobs vs. ~$1,841–$2,762 via Chandra's API vs. ~$1,350 via A10G-large.
- Output storage: Hugging Face Buckets (mutable Xet storage) via hf-mount, avoiding git versioning.
- Result: all 27,000 papers now have Markdown versions accessible on Hugging Face paper pages.

## Entities Mentioned

- Niels Rogge — author, Hugging Face
- [[huggingface-skills|Hugging Face]] — platform hosting papers and Jobs
- [[openai]] — Codex model
- Datalab — creator of Chandra-OCR 2
- AllenAI — creator of OlmOCRBench
- Mishig — integrated results into Paper Pages

## Concepts Mentioned

- OCR — Optical Character Recognition
- [[your-coding-agent-keeps-making-the-same-mistakes-i-built-a-fix|Coding agent]] — using Codex to write orchestration scripts
- [[huggingface-skills|Hugging Face Jobs]] — serverless GPU compute platform
- [[inside-vllm|vLLM]] — inference engine for running OCR model
- [[huggingface-skills|Hugging Face Buckets]] — Xet-based mutable storage
- HuggingChat — chat-with-paper functionality

## Questions / Follow-ups

- How generalizable is this "agent orchestrates batch ML job" pattern to other large-scale data processing tasks?
- What quality metrics were used to validate the OCR output across 27,000 papers?
