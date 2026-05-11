---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Literature Graph

## Definition

A literature graph is a network visualization showing relationships between academic papers through citations, similarity, or topic clustering. It enables researchers to see entire research landscapes at once, identifying dense clusters, bridging edges, and baseline papers.

## Key Proponents / Critics

- Academic researchers needing holistic topic views
- Tools: [[connected-papers|Connected Papers]], [[aminer|AMiner]]

## Related Concepts

- [[research-workflow|Research Workflow]] — Application in topic exploration
- [[boolean-queries|Boolean Queries]] — Defining seed papers

## Sources

- [[ai-frontline-rss-aggregation-literature-graph-workflow|AI前沿不掉队：RSS聚合、关键词预警与文献图谱的高效工作流]]

## Evolution

Literature graphs evolved from simple citation networks to multi-dimensional similarity visualizations. Modern usage:
- Select "anchor paper" from recent 6-12 months
- Expand 2 layers: method branches, alternatives, upstream theory, downstream deployment
- Filter for reproducibility (code, metrics, protocols)
- Add metadata: dataset, metrics, code availability

Reading strategies:
- Dense clusters indicate high-activity directions
- Bridging edges connect clusters (opportunity for comparison+reproduction)
- Old-but-common baselines for alignment

## Practical Applications

Build graphs before starting reproduction or comparison work. Use tools like Connected Papers or AMiner. Focus on papers with reproducibility signals. Maintain reference implementations for alignment testing.