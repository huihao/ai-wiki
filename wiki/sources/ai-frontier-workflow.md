---
created: 2026-04-28
updated: 2026-04-28
tags: [source, research-workflow, rss, arxiv, paper-reading]
sources: 1
---

# AI Frontier Workflow: RSS Aggregation, Keyword Alerts, and Literature Graphs

## Metadata

- **Author**: Sinat (CSDN)
- **Date**: 2025-10-28
- **URL**: https://blog.csdn.net/sinat_28461591/article/details/154005770
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/AI 前沿不掉队：RSS 聚合、关键词预警与文献图谱的高效工作流.md`

## Summary

A comprehensive Chinese-language guide to building an efficient AI research monitoring workflow. Covers RSS aggregation from arXiv/AMiner/OpenReview, Boolean query construction, automated scoring and deduplication, 5-minute paper evaluation, literature graph building, and reproducibility card templates.

## Key Takeaways

- **Information sources**: arXiv RSS (cs.AI, cs.LG, cs.CL, cs.CV, cs.RO, stat.ML), AMiner search, OpenReview (ICLR etc.).
- **Boolean query examples**:
  - Quantization: `("quantization" OR "INT8" OR "AWQ" OR "GPTQ" OR "SmoothQuant" OR "distillation")`
  - Serving: `("vLLM" OR "paged attention" OR "KV cache" OR "tensor parallel" OR "speculative decoding")`
  - RAG: `("retrieval augmented generation" OR "RAG" OR "dense retrieval" OR "RAG evaluation")`
- **Automated scoring**: Python script with feedparser + sqlite3. Weights: has_code (+3), known_dataset (+2), method_speedup (+2), on_device (+2), eval_strong (+2). Penalties: survey (-3), extended_abstract (-2).
- **5-minute evaluation**: title → figure 1 → experiment table → code availability. Classify as:提效 (efficiency), 提质 (quality), 提适应 (adaptation).
- **Priority triage**: Must (score ≥5), Maybe (score 2–4), Drop (score <2).
- **Literature graphs**: Use Connected Papers or AMiner citation networks. Anchor paper → 2-hop expansion. Identify dense clusters (hot directions), bridge edges (novel combinations), and evergreen baselines.
- **Minimum reading loop**: 3-sentence summary (problem/method/result) + method diagram + repro card.
- **Repro card template** (YAML): paper metadata, task type, dataset, preprocessing, model architecture, training config, evaluation metrics/protocol, tolerance thresholds, export formats, benchmark device, artifacts.
- **Project organization**: `topics/<theme>/reading/`, `repro/`, `results/`, `exports/`, `bench/`, `summary.md`.
- **Common pitfalls**: weak baselines, inconsistent evaluation protocols, reporting best run without variance, training aug leaking to val/test, license issues, export numeric misalignment.

## Entities Mentioned

- arXiv — primary RSS source
- AMiner — academic search and author tracking
- [[openreview-source|OpenReview]] — open peer review platform
- [[how-we-ocred-30000-papers-using-codex|Connected Papers]] — literature graph tool

## Concepts Mentioned

- [[machine-learning|Research Workflow]] — systematic paper monitoring and evaluation
- [[grouped-query-attention|Boolean Query]] — structured academic search
- [[graph-knowledge-base-website-copilot|Literature Graph]] — citation network exploration
- Reproducibility Card — structured paper replication template
- [[neurips|Paper Triage]] — Must/Maybe/Drop prioritization
- [[quantization]] — mentioned as example research topic
- [[comprehensive-rag-ollama-langchain|RAG Evaluation]] — mentioned as example research topic

## Raw Notes

- Includes complete Python scripts for RSS aggregation, scoring, and SQLite storage.
- Example tolerance thresholds: PSNR drop ≤0.3 dB, mAP drop ≤0.5%, F1 drop ≤1%.
- Emphasizes 48-hour minimum reproduction rule: even 10% data pilot counts.

## Questions / Follow-ups

- How could this workflow be enhanced with LLM-based paper summarization and classification?
- What tools exist for automated repro card generation from arXiv metadata?
