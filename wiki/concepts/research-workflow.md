---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Research Workflow

## Definition

A research workflow is a systematic process for discovering, filtering, reading, reproducing, and documenting academic literature. Effective workflows constrain information sources, apply structured filtering, and create reproducibility artifacts.

## Key Proponents / Critics

- Engineering-focused researchers (Sinat/观熵)
- Productivity advocates in academia

## Related Concepts

- [[rss-aggregation|RSS Aggregation]] — Discovery mechanism
- [[boolean-queries|Boolean Queries]] — Filtering technique
- [[literature-graph|Literature Graph]] — Topic exploration
- [[reproducibility|Research Reproducibility]] — Knowledge capture
- [[metric-alignment|Metric Alignment]] — Comparison framework

## Sources

- [[ai-frontline-rss-aggregation-literature-graph-workflow|AI前沿不掉队：RSS聚合、关键词预警与文献图谱的高效工作流]]

## Evolution

Research workflows evolved from ad-hoc browsing to structured systems:
- Constrain sources: 3 high-value channels (arXiv RSS, AMiner, OpenReview)
- Filter: Boolean queries, keyword white/black lists, deduplication
- Score: Priority queues (Must/Maybe/Drop), 5-minute judgment protocol
- Graph: Literature maps before reproduction work
- Reproduce: Three-sentence abstracts, repro cards, unified metrics
- Archive: Topic-based organization with third-person verification

Automation components:
- SQLite database for paper inbox
- YAML configuration for scoring rules
- Python scripts for RSS parsing and deduplication
- UML activity diagrams for workflow visualization

## Practical Applications

Process daily inbox in 10-15 minutes. Apply 5-minute judgment: title→figure 1→experiment table→code availability. Create repro cards immediately after reading. Build literature graphs before starting reproduction. Maintain topic-based directories with unified CSV formats.