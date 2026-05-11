---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Research Reproducibility

## Definition

Research reproducibility is the practice of ensuring experimental results can be independently replicated with documented protocols, data splits, code, and evaluation metrics. In engineering workflows, it requires unified recording formats and minimal reproduction cards.

## Key Proponents / Critics

- Engineering-focused AI practitioners
- Research reproducibility advocates

## Related Concepts

- [[metric-alignment|Metric Alignment]] — Consistent evaluation
- [[research-workflow|Research Workflow]] — Implementation context
- [[literature-graph|Literature Graph]] — Baseline identification

## Sources

- [[ai-frontline-rss-aggregation-literature-graph-workflow|AI前沿不掉队：RSS聚合、关键词预警与文献图谱的高效工作流]]

## Evolution

Reproducibility evolved from informal descriptions to structured documentation:
- Three-sentence abstracts: Problem/Method/Result
- Reproduction cards: task/data/preprocess/metrics/scripts/tolerance
- Unified CSV formats: step/epoch/lr/loss/metric across experiments
- Visualization: training curves, precision-recall, failure sample grids

Common pitfalls addressed:
- Weak or outdated baselines
- Inconsistent evaluation protocols (resolution, crop, color space)
- Ignoring variance (reporting single best run)
- Training augmentation bleeding into validation
- Missing license checks for datasets/code

## Practical Applications

Create `repro-card.yaml` with complete experiment specification. Use unified CSV column names for cross-project comparison. Document tolerance thresholds for export validation (PSNR ≤ 0.3 dB, mAP ≤ 0.5%). Implement third-person reproduction testing with repro-ok/repro-fail labels.