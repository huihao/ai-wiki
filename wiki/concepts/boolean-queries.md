---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Boolean Queries

## Definition

Boolean queries are structured search expressions using logical operators (AND, OR, NOT) and exact phrase matching to precisely define search criteria. In research workflows, they enable topic-specific filtering with synonym coverage and exclusion rules.

## Key Proponents / Critics

- Academic search practitioners
- Platforms: [[arxiv|arXiv]] Atom queries, [[aminer|AMiner]]

## Related Concepts

- [[rss-aggregation|RSS Aggregation]] — Application context
- [[keyword-alerts|Keyword Alerts]] — Simplified filtering
- [[research-workflow|Research Workflow]] — Information filtering tool

## Sources

- [[ai-frontline-rss-aggregation-literature-graph-workflow|AI前沿不掉队：RSS聚合、关键词预警与文献图谱的高效工作流]]

## Evolution

Boolean queries evolved from library catalog searches to modern academic filtering:
- Synonym coverage: `("quantization" OR "INT8" OR "AWQ" OR "GPTQ")`
- System domains: `("vLLM" OR "paged attention" OR "KV cache")`
- RAG topics: `("retrieval augmented generation" OR "RAG")`
- Deployment: `("on-device" OR "TFLite" OR "ONNX" OR "TensorRT")`

Exclusion patterns: `RAG -survey -tutorial`

Combination logic: `("quantization aware training" OR QAT) AND (Transformer OR CNN)`

## Practical Applications

Maintain a `queries.md` file with topic-specific sections. Include 3 recent representative papers with 1-sentence memory points. Review quarterly to merge synonyms and remove noise words. Use in arXiv Atom queries sorted by submission date.