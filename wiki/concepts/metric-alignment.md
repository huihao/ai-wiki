---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Metric Alignment

## Definition

Metric alignment is the practice of ensuring consistent evaluation metrics, protocols, and baselines across different approaches to enable fair comparison. It requires unified recording formats, protocol specification, and tolerance thresholds for valid comparisons.

## Key Proponents / Critics

- Engineering researchers requiring fair comparison
- Benchmark designers

## Related Concepts

- [[reproducibility|Research Reproducibility]] — Foundation for comparison
- [[research-workflow|Research Workflow]] — Evaluation component

## Sources

- [[ai-frontline-rss-aggregation-literature-graph-workflow|AI前沿不掉队：RSS聚合、关键词预警与文献图谱的高效工作流]]

## Evolution

Metric alignment evolved from informal reporting to structured protocols:
- Unified metrics: PSNR/SSIM for image restoration, mAP for detection, F1 for classification, FID for generation
- Recording formats: CSV with consistent columns (exp_id, task, dataset, split, metric_name, metric_value, seed, ckpt, commit)
- Protocol specification: center-crop, shave boundaries, TTA usage, augmentation separation
- Tolerance thresholds: PSNR ≤ 0.3 dB, mAP ≤ 0.5%, F1 ≤ 1%, FID with fixed statistics

Common issues:
- Baseline unfairness: outdated/weak models, missing parameter/FLOPs/training time
- Protocol inconsistency: unspecified resolution/crop/color space
- Variance ignoring: single best run, no mean/std

## Practical Applications

Create `eval.yaml` with frozen protocols. Use minimal evaluation scripts verified on 2 machines. Fix random seeds and repeat 3-5 times for mean±std. Check CI for empty `val_aug`. Document dataset licenses and citation requirements.